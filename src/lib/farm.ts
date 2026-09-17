// "Where can I farm ship X": every battle node that can drop it, with reach probability and cost for a fleet.
import { drops, mapIds, routeMaps } from './data';
import { flagStates } from './engine';
import { sortieCost, type CostOptions, type SortieCost } from './cost';
import type { FleetStats } from './fleet';
import { nodeDropTiers, nodeInfos, type DropCategory, type Rating } from './mapinfo';

export interface FarmSpot {
  mapId: string;
  node: string;
  category: DropCategory;
  tier: string;
  rating: Rating;
  /** number of ships sharing the drop pool at this node when the required rating is met */
  pool: number;
  cost?: SortieCost;
  /** map state (flags) assumed for `cost`; empty = initial state */
  flags: string[];
}

export function dropMapsOf(ship: string): { mapId: string; tier: string }[] {
  const out: { mapId: string; tier: string }[] = [];
  for (const mapId of mapIds) {
    for (const [tier, list] of Object.entries(drops[mapId] ?? {})) if (list.includes(ship)) out.push({ mapId, tier });
  }
  return out;
}

export function farmSpots(ship: string, fleet: FleetStats, opts: Omit<CostOptions, 'stopAt'>): FarmSpot[] {
  const spots: FarmSpot[] = [];
  for (const { mapId, tier } of dropMapsOf(ship)) {
    const map = routeMaps[mapId];
    for (const info of Object.values(nodeInfos(mapId))) {
      const tiers = nodeDropTiers(mapId, info);
      const hit = tiers.find((t) => t.tier === tier);
      if (!hit || !info.dropCategory) continue;
      // pick the map state that reaches the node most often (ties: fewest flags)
      let best: { cost: SortieCost; flags: string[] } | undefined;
      if (map && fleet.count) {
        for (const flags of flagStates(map)) {
          const cost = sortieCost(map, fleet, new Set(flags), { ...opts, stopAt: info.id });
          if (!best || cost.reach > best.cost.reach + 1e-9) best = { cost, flags };
        }
      }
      spots.push({
        mapId,
        node: info.id,
        category: info.dropCategory,
        tier,
        rating: hit.rating,
        pool: tiers.reduce((a, t) => a + t.ships.length, 0),
        cost: best?.cost,
        flags: best?.flags ?? [],
      });
    }
  }
  return spots;
}

/** rough fuel+ammo per copy of the ship, assuming every ship in the node's pool is equally likely */
export const costPerDrop = (s: FarmSpot) => costPerArrival(s) * s.pool;

/** fuel+ammo spent per successful arrival at the node; Infinity when unreachable */
export const costPerArrival = (s: FarmSpot) => (s.cost && s.cost.reach > 0 ? (s.cost.fuel + s.cost.ammo) / s.cost.reach : Infinity);
