// Expected resource consumption of one sortie.
// 战斗机制#资源消耗: a normal battle costs every ship 20% fuel + 20% ammo, an 航空战 node 10% + 10%,
// a night battle (夜战 node, or pursuing into night) 10% ammo. A 迂回 attempt costs 10% fuel and, when it
// succeeds, skips the battle.
import { enemyShips } from './data';
import { evalMap } from './engine';
import { battleSpeed, type FleetStats } from './fleet';
import { nodeInfos, type NodeInfo, type Resource } from './mapinfo';
import type { RouteMap } from './types';

export interface CostOptions {
  /** end the sortie at this node (farming); undefined = sail until a dead end / BOSS */
  stopAt?: string;
  tryDetour: boolean;
  /** pursue into night battle at BOSS nodes */
  bossNight: boolean;
}

export interface SortieCost {
  fuel: number;
  ammo: number;
  /** expected number of battles fought */
  battles: number;
  /** expected gain/loss from resource nodes */
  pickup: Record<Resource, number>;
  /** probability of reaching stopAt (or any BOSS when stopAt is unset) */
  reach: number;
}

/** 迂回成功率％ = ⌊50 × 2^((我方作战航速 − 对方作战航速) ÷ 5) − 20⌋, clamped to 5–95 */
export function detourRate(fleet: FleetStats, info: NodeInfo): number {
  if (!info.fleets.length || !fleet.count) return 0;
  const rates = info.fleets.map((f) => {
    const enemy = battleSpeed(f.ships.map((id) => ({ typeName: enemyShips[id]?.type ?? '', speed: enemyShips[id]?.speed ?? 0 })));
    const pct = Math.floor(50 * 2 ** ((fleet.battleSpeed - enemy) / 5) - 20);
    return Math.min(95, Math.max(5, pct)) / 100;
  });
  return rates.reduce((a, b) => a + b, 0) / rates.length;
}

export function sortieCost(map: RouteMap, fleet: FleetStats, flags: ReadonlySet<string>, opts: CostOptions): SortieCost {
  const infos = nodeInfos(map.id);
  const { nodeP, visits } = evalMap(map, fleet, flags, opts.stopAt);
  const cost: SortieCost = { fuel: 0, ammo: 0, battles: 0, pickup: { fuel: 0, ammo: 0, steel: 0, baux: 0 }, reach: 0 };
  // costs scale with expected visits (a looping map can fight the same node twice); reach is a probability
  for (const [id, p] of Object.entries(visits)) {
    const info = infos[id];
    if (!info || !p) continue;
    if (opts.stopAt ? id === opts.stopAt : info.kind === 'boss') cost.reach += nodeP[id] ?? 0;
    if (info.resource) cost.pickup[info.resource.res] += p * info.resource.amount;
    if (info.kind !== 'battle' && info.kind !== 'boss') continue;

    let fight = 1;
    // never detour around the node being farmed: a skipped battle drops nothing
    if (opts.tryDetour && info.tags.includes('迂回') && id !== opts.stopAt) {
      cost.fuel += p * 0.1 * fleet.fuel;
      fight = 1 - detourRate(fleet, info);
    }
    const night = info.tags.includes('夜战');
    const air = info.tags.includes('航空战');
    const fuelRate = night ? 0 : air ? 0.1 : 0.2;
    const ammoRate = (night || air ? 0.1 : 0.2) + (opts.bossNight && info.kind === 'boss' && !night ? 0.1 : 0);
    cost.fuel += p * fight * fuelRate * fleet.fuel;
    cost.ammo += p * fight * ammoRate * fleet.ammo;
    cost.battles += p * fight;
  }
  return cost;
}
