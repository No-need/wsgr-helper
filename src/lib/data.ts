import shipsJson from '../data/generated/ships.json';
import enemyShipsJson from '../data/generated/enemyShips.json';
import enemyFleetsJson from '../data/generated/enemyFleets.json';
import dropsJson from '../data/generated/drops.json';
import mapMetaJson from '../data/generated/mapMeta.json';
import type { EnemyFleet, EnemyShip, MapMeta, RouteMap, Ship } from './types';

export const ships = shipsJson as Ship[];
export const shipByName = new Map(ships.map((s) => [s.name, s]));
export const enemyShips = enemyShipsJson as Record<string, EnemyShip>;
export const enemyFleets = enemyFleetsJson as Record<string, EnemyFleet[]>;
/** map id -> tier ('1' 普通, '3' 少见, '4' 稀有, '5' 限定) -> ship names */
export const drops = dropsJson as Record<string, Record<string, string[]>>;
export const mapMeta = mapMetaJson as unknown as Record<string, MapMeta>;

const routeModules = import.meta.glob<RouteMap>('../data/routes/*.json', { eager: true, import: 'default' });
export const routeMaps: Record<string, RouteMap> = {};
for (const mod of Object.values(routeModules)) routeMaps[mod.id] = mod;

const mapOrder = (id: string) => {
  const [c, n] = id.split('-').map(Number);
  return c * 100 + n;
};
export const mapIds = Object.keys(mapMeta).sort((a, b) => mapOrder(a) - mapOrder(b));

export const CHAPTER_NAMES: Record<string, string> = {
  '1': '母港周邊哨戒',
  '2': '扶桑海域攻略',
  '3': '星洲海峽突破',
  '4': '西行航線開闢',
  '5': '地中海死鬥',
  '6': '北海風暴',
  '7': '比斯開灣戰役',
  '8': '新大陸海域鏖戰',
  '9': '南狹長海域',
  '10': '極地水域',
};
