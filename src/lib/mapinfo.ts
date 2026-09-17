// Derived per-node information: node kind, resource effects, and the drop category used by the wiki's
// 掉落分级 table (BOSS点 / 门神点 / 道中点 / 出门点).
import { drops, enemyFleets, mapMeta, routeMaps } from './data';
import type { EnemyFleet } from './types';

export type Resource = 'fuel' | 'ammo' | 'steel' | 'baux';
export type DropCategory = 'boss' | 'gate' | 'mid' | 'first';
export type Rating = 'B' | 'A' | 'S' | 'SS';

export interface NodeInfo {
  id: string;
  kind: 'start' | 'battle' | 'boss' | 'resource' | 'wait' | 'other';
  /** 迂回 / 夜战 / 航空战 / 驻防 … (wiki wording) */
  tags: string[];
  text?: string;
  resource?: { res: Resource; amount: number };
  dropCategory?: DropCategory;
  fleets: EnemyFleet[];
}

const RES: Record<string, Resource> = { 油: 'fuel', 弹: 'ammo', 钢: 'steel', 铝: 'baux' };

export const TIERS = ['1', '3', '4', '5'] as const;
export const TIER_NAME: Record<string, string> = { '1': '普通', '3': '少見', '4': '稀有', '5': '限定' };
export const CATEGORY_NAME: Record<DropCategory, string> = { boss: 'BOSS點', gate: '門神點', mid: '道中點', first: '出門點' };

/** minimum battle rating needed for each drop tier, per node category (wiki 模板:掉落分级) */
export const DROP_RULE: Record<DropCategory, Partial<Record<string, Rating>>> = {
  boss: { '1': 'B', '3': 'B', '4': 'B', '5': 'S' },
  gate: { '1': 'B', '3': 'B', '4': 'S' },
  mid: { '1': 'B', '3': 'A', '4': 'SS' },
  first: { '1': 'B', '3': 'SS' },
};

const cache = new Map<string, Record<string, NodeInfo>>();

export function nodeInfos(mapId: string): Record<string, NodeInfo> {
  const hit = cache.get(mapId);
  if (hit) return hit;
  const meta = mapMeta[mapId];
  const route = routeMaps[mapId];
  const ids = new Set([...Object.keys(meta?.nodes ?? {}).filter((k) => !k.includes('*')), ...Object.keys(route?.nodes ?? {})]);
  const infos: Record<string, NodeInfo> = {};

  // graph facts from the union of all routes (flag-dependent ones included)
  const out = (n: string) => route?.routes[n] ?? [];
  const bosses = new Set(Object.entries(meta?.nodes ?? {}).filter(([, v]) => v.kind === 'boss').map(([k]) => k.replace(/\*+$/, '')));
  const firstNodes = new Set(out('start').map((r) => r.to));

  for (const id of ids) {
    const m = meta?.nodes[id];
    const info: NodeInfo = { id, kind: 'other', tags: [], fleets: enemyFleets[`${mapId}/${id}`] ?? [] };
    if (id === 'start') info.kind = 'start';
    else if (bosses.has(id)) info.kind = 'boss';
    else if (m?.kind === 'battle' || (!m && info.fleets.length)) info.kind = 'battle';
    else if (m?.text) {
      info.text = m.text;
      const res = m.text.match(/^([油弹钢铝])([+-]\d+)$/);
      if (res) {
        info.kind = 'resource';
        info.resource = { res: RES[res[1]], amount: Number(res[2]) };
      } else if (m.text.includes('待机')) info.kind = 'wait';
    }
    if (m?.tags) info.tags = m.tags.split(/[、,，\s]+/).filter(Boolean);

    if (info.kind === 'boss') info.dropCategory = 'boss';
    else if (info.kind === 'battle' && route) {
      const next = out(id);
      if (firstNodes.has(id)) info.dropCategory = 'first';
      else if (!next.length || next.some((r) => bosses.has(r.to))) info.dropCategory = 'gate';
      else info.dropCategory = 'mid';
    }
    infos[id] = info;
  }
  cache.set(mapId, infos);
  return infos;
}

/** tiers a node can drop, with the rating each needs */
export function nodeDropTiers(mapId: string, info: NodeInfo): { tier: string; rating: Rating; ships: string[] }[] {
  if (!info.dropCategory) return [];
  const rule = DROP_RULE[info.dropCategory];
  return TIERS.filter((t) => rule[t] && drops[mapId]?.[t]?.length).map((t) => ({ tier: t, rating: rule[t]!, ships: drops[mapId][t] }));
}
