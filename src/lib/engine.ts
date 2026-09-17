// Routing probability engine.
// Rule (艦R百科 / TapTap《地图机制详解》): at a fork every route's condition is checked; if one or more hold,
// the first one in label order is taken. If none hold, a route is picked at random weighted by its ★ count.
import { evalCond, parseCond } from './cond';
import type { FleetStats } from './fleet';
import type { RouteDef, RouteMap } from './types';

export interface RouteEval {
  route: RouteDef;
  /** condition result; undefined when the route has no condition */
  ok?: boolean | null;
  /** probability of taking this route once standing on the node */
  p: number;
}

export interface MapEval {
  /** probability of visiting each node at least once during one sortie */
  nodeP: Record<string, number>;
  /** expected number of visits per node (differs from nodeP only on maps with loops, e.g. 7-4) */
  visits: Record<string, number>;
  /** expected traversals per route, keyed `from>to` */
  edgeP: Record<string, number>;
  /** fork evaluation on the first visit of each node */
  forks: Record<string, RouteEval[]>;
  /** route condition strings the parser could not understand */
  unknown: string[];
}

export function activeRoutes(map: RouteMap, node: string, flags: ReadonlySet<string>): RouteDef[] {
  return (map.routes[node] ?? []).filter((r) => (!r.requires || flags.has(r.requires)) && !(r.closedBy && flags.has(r.closedBy)));
}

export function evalFork(routes: RouteDef[], fleet: FleetStats): RouteEval[] {
  const evals: RouteEval[] = routes.map((route) => ({ route, ok: route.cond ? evalCond(parseCond(route.cond), fleet) : undefined, p: 0 }));
  if (evals.length === 1) {
    evals[0].p = 1;
    return evals;
  }
  const forced = evals.find((e) => e.ok === true);
  if (forced) {
    forced.p = 1;
    return evals;
  }
  const total = evals.reduce((a, e) => a + (e.route.stars ?? 0), 0);
  for (const e of evals) e.p = total > 0 ? (e.route.stars ?? 0) / total : 1 / evals.length;
  return evals;
}

/** sorties never get anywhere near this long; it only guards against a badly transcribed endless loop */
const MAX_STEPS = 40;

/**
 * Enumerates every path from start (maps are tiny). `flags` are the persistent map states the user ticked;
 * flags with `auto` switch on by themselves mid-sortie once their node has been visited often enough.
 */
export function evalMap(map: RouteMap, fleet: FleetStats, flags: ReadonlySet<string> = new Set(), stopAt?: string): MapEval {
  const out: MapEval = { nodeP: {}, visits: {}, edgeP: {}, forks: {}, unknown: [] };
  const unknown = new Set<string>();
  const autoFlags = (map.flags ?? []).filter((f) => f.auto);

  const walk = (node: string, p: number, seen: ReadonlyMap<string, number>, steps: number) => {
    const count = (seen.get(node) ?? 0) + 1;
    const nextSeen = new Map(seen).set(node, count);
    out.visits[node] = (out.visits[node] ?? 0) + p;
    if (count === 1) out.nodeP[node] = (out.nodeP[node] ?? 0) + p;

    let active = flags;
    for (const f of autoFlags) {
      if ((nextSeen.get(f.auto!.node) ?? 0) >= f.auto!.visits) active = new Set(active).add(f.id);
    }
    const evals = evalFork(activeRoutes(map, node, active), fleet);
    if (!out.forks[node]) {
      out.forks[node] = evals;
      for (const e of evals) if (e.ok === null && e.route.cond) unknown.add(e.route.cond);
    }
    // when farming a node the sortie ends there, so nothing flows past it
    if (node === stopAt || steps >= MAX_STEPS) return;
    for (const e of evals) {
      if (e.p <= 0) continue;
      const key = `${node}>${e.route.to}`;
      out.edgeP[key] = (out.edgeP[key] ?? 0) + p * e.p;
      walk(e.route.to, p * e.p, nextSeen, steps + 1);
    }
  };
  walk('start', 1, new Map(), 0);
  // forks the fleet never reaches still get listed
  for (const node of Object.keys(map.routes)) {
    if (out.forks[node]) continue;
    out.forks[node] = evalFork(activeRoutes(map, node, flags), fleet);
    for (const e of out.forks[node]) if (e.ok === null && e.route.cond) unknown.add(e.route.cond);
  }
  out.unknown = [...unknown];
  return out;
}

/** every combination of the map's persistent (user-tickable) flags, fewest flags first */
export function flagStates(map: RouteMap): string[][] {
  const ids = (map.flags ?? []).filter((f) => !f.auto).map((f) => f.id);
  const states: string[][] = [];
  for (let mask = 0; mask < 1 << ids.length; mask++) states.push(ids.filter((_, i) => mask & (1 << i)));
  return states.sort((a, b) => a.length - b.length);
}
