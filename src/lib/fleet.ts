import { shipByName } from './data';
import type { Fleet, Ship } from './types';

export interface FleetMember {
  ship: Ship;
  level: number;
}

export interface FleetStats {
  members: FleetMember[];
  count: number;
  /** ships per class word (轻巡, 航母…) */
  types: Record<string, number>;
  flagshipType?: string;
  flagSpeed: number;
  flagLevel: number;
  level: number;
  rec: number;
  luck: number;
  speedMax: number;
  speedMin: number;
  speedAvg: number;
  /** 作战航速, used for 迂回 success rate */
  battleSpeed: number;
  fuel: number;
  ammo: number;
}

/** 索敌 grows linearly from `rec` (Lv.1) to `recMax` (Lv.100) and keeps the same slope afterwards. */
export const recAtLevel = (ship: Ship, level: number) => Math.floor(ship.rec + ((ship.recMax - ship.rec) * level) / 100);

// 战斗机制#迂回判定与作战航速
const MAIN_SIDE = new Set(['航母', '装母', '战列', '战巡', '航战', '导驱', '导巡', '导战', '大巡', '旗舰', '轻母', '防驱', '防巡']);
const UNDERWATER = new Set(['潜艇', '炮潜', '导潜']);

export function battleSpeed(units: { typeName: string; speed: number }[]): number {
  if (!units.length) return 0;
  const surface = units.filter((u) => !UNDERWATER.has(u.typeName));
  const pool = surface.length ? surface : units;
  const avg = (list: typeof units) => list.reduce((a, u) => a + u.speed, 0) / list.length;
  const main = pool.filter((u) => MAIN_SIDE.has(u.typeName));
  const escort = pool.filter((u) => !MAIN_SIDE.has(u.typeName));
  if (!main.length || !escort.length) return avg(pool);
  return Math.floor(Math.min(avg(main), avg(escort)));
}

export function fleetStats(fleet: Fleet): FleetStats {
  const members: FleetMember[] = [];
  for (const slot of fleet.slots) {
    const ship = shipByName.get(slot.ship);
    if (ship) members.push({ ship, level: slot.level });
  }
  const types: Record<string, number> = {};
  for (const m of members) types[m.ship.typeName] = (types[m.ship.typeName] ?? 0) + 1;
  const speeds = members.map((m) => m.ship.speed);
  const sum = (f: (m: FleetMember) => number) => members.reduce((a, m) => a + f(m), 0);
  return {
    members,
    count: members.length,
    types,
    flagshipType: members[0]?.ship.typeName,
    flagSpeed: members[0]?.ship.speed ?? 0,
    flagLevel: members[0]?.level ?? 0,
    level: sum((m) => m.level),
    rec: sum((m) => recAtLevel(m.ship, m.level)) + (members.length ? fleet.recBonus : 0),
    luck: sum((m) => m.ship.luck),
    speedMax: speeds.length ? Math.max(...speeds) : 0,
    speedMin: speeds.length ? Math.min(...speeds) : 0,
    speedAvg: speeds.length ? sum((m) => m.ship.speed) / speeds.length : 0,
    battleSpeed: battleSpeed(members.map((m) => m.ship)),
    fuel: sum((m) => m.ship.fuel),
    ammo: sum((m) => m.ship.ammo),
  };
}
