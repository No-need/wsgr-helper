// Parses the routing-condition strings copied from the wiki maps (e.g. `轻巡≥2`, `旗舰战巡`, `索敌≥150`)
// and evaluates them against a fleet. Anything it cannot parse evaluates to `null` (unknown).
import type { FleetStats } from './fleet';

type Op = '≥' | '≤' | '=' | '>' | '<' | '≠';

export type Cond =
  | { kind: 'num'; stat: NumStat; op: Op; value: number }
  | { kind: 'count'; types: string[]; op: Op; value: number }
  | { kind: 'flagship'; types: string[]; negate: boolean }
  | { kind: 'and' | 'or'; conds: Cond[] }
  | { kind: 'unknown'; text: string };

type NumStat = 'rec' | 'level' | 'luck' | 'speedMax' | 'speedMin' | 'speedAvg' | 'count' | 'flagSpeed' | 'flagLevel';

const STATS: Record<string, NumStat> = {
  索敌: 'rec',
  总索敌: 'rec',
  等级: 'level',
  总等级: 'level',
  舰队等级: 'level',
  幸运: 'luck',
  总幸运: 'luck',
  最高航速: 'speedMax',
  最大航速: 'speedMax',
  最低航速: 'speedMin',
  最小航速: 'speedMin',
  平均航速: 'speedAvg',
  航速: 'speedAvg',
  旗舰航速: 'flagSpeed',
  旗舰等级: 'flagLevel',
  舰船: 'count',
  舰船数: 'count',
  舰船数量: 'count',
  舰队数量: 'count',
  舰队人数: 'count',
  船数: 'count',
  队伍数量: 'count',
};

const TYPE_WORDS = ['航母', '轻母', '装母', '战列', '航战', '战巡', '重巡', '航巡', '雷巡', '轻巡', '重炮', '驱逐', '潜艇', '炮潜', '补给', '导驱', '防驱', '导战', '导巡', '防巡', '大巡', '导潜', '旗舰'];

/** collective words that appear in conditions -> concrete class words */
const TYPE_GROUPS: Record<string, string[]> = {
  航母系: ['航母', '轻母', '装母'],
  空母: ['航母', '轻母', '装母'],
  潜艇系: ['潜艇', '炮潜', '导潜'],
  水下: ['潜艇', '炮潜', '导潜'],
  巡洋: ['重巡', '航巡', '雷巡', '轻巡', '大巡', '导巡', '防巡'],
  巡洋舰: ['重巡', '航巡', '雷巡', '轻巡', '大巡', '导巡', '防巡'],
  战列系: ['战列', '航战', '战巡', '导战'],
  主力舰: ['航母', '装母', '战列', '战巡', '航战', '导驱', '导巡', '导战', '大巡', '导潜', '旗舰'],
  护卫舰: ['轻母', '重巡', '轻巡', '雷巡', '航巡', '重炮', '驱逐', '防驱', '防巡', '潜艇', '炮潜', '补给'],
};

const normalise = (text: string) =>
  text
    .replace(/\s+/g, '')
    .replace(/＞＝|>=|≧/g, '≥')
    .replace(/＜＝|<=|≦/g, '≤')
    .replace(/＝/g, '=')
    .replace(/＞/g, '>')
    .replace(/＜/g, '<')
    .replace(/！=|!=/g, '≠')
    .replace(/（/g, '(')
    .replace(/）/g, ')');

function parseTypes(text: string): string[] | null {
  const out: string[] = [];
  for (const part of text.split(/[+＋、/／和与]/)) {
    const word = part.replace(/(舰|数量|数)$/, '');
    if (TYPE_GROUPS[part]) out.push(...TYPE_GROUPS[part]);
    else if (TYPE_GROUPS[word]) out.push(...TYPE_GROUPS[word]);
    else if (TYPE_WORDS.includes(part)) out.push(part);
    else if (TYPE_WORDS.includes(word)) out.push(word);
    else return null;
  }
  return out.length ? out : null;
}

function parseAtom(text: string): Cond {
  const flag = text.match(/^旗舰(?:为|是|=|:|：)?(非|不是|不为)?(.+)$/);
  if (flag && !/[≥≤=<>≠]\d/.test(flag[2])) {
    const types = parseTypes(flag[2]);
    if (types) return { kind: 'flagship', types, negate: !!flag[1] };
  }
  const suffix = text.match(/^(.+)旗舰$/);
  if (suffix) {
    const types = parseTypes(suffix[1]);
    if (types) return { kind: 'flagship', types, negate: false };
  }
  const cmp = text.match(/^(.+?)(≥|≤|=|>|<|≠)(\d+(?:\.\d+)?)$/);
  if (cmp) {
    const [, lhs, op, num] = cmp;
    const value = Number(num);
    if (STATS[lhs]) return { kind: 'num', stat: STATS[lhs], op: op as Op, value };
    const types = parseTypes(lhs);
    if (types) return { kind: 'count', types, op: op as Op, value };
  }
  return { kind: 'unknown', text };
}

const cache = new Map<string, Cond>();

export function parseCond(raw: string): Cond {
  const hit = cache.get(raw);
  if (hit) return hit;
  const text = normalise(raw);
  const ors = text.split(/或者?|\|\|/).map((part) => {
    const ands = part.split(/且|并且|并|＆|&|，|,|；|;/).filter(Boolean).map(parseAtom);
    return ands.length === 1 ? ands[0] : ({ kind: 'and', conds: ands } as Cond);
  });
  const cond = ors.length === 1 ? ors[0] : ({ kind: 'or', conds: ors } as Cond);
  cache.set(raw, cond);
  return cond;
}

const compare = (a: number, op: Op, b: number) => {
  switch (op) {
    case '≥':
      return a >= b;
    case '≤':
      return a <= b;
    case '=':
      return a === b;
    case '>':
      return a > b;
    case '<':
      return a < b;
    case '≠':
      return a !== b;
  }
};

/** true / false, or null when the condition text could not be understood */
export function evalCond(cond: Cond, fleet: FleetStats): boolean | null {
  switch (cond.kind) {
    case 'num':
      return compare(fleet[cond.stat], cond.op, cond.value);
    case 'count':
      return compare(
        [...new Set(cond.types)].reduce((a, t) => a + (fleet.types[t] ?? 0), 0),
        cond.op,
        cond.value,
      );
    case 'flagship':
      return fleet.flagshipType != null && cond.types.includes(fleet.flagshipType) !== cond.negate;
    case 'and': {
      const rs = cond.conds.map((c) => evalCond(c, fleet));
      if (rs.includes(false)) return false;
      return rs.includes(null) ? null : true;
    }
    case 'or': {
      const rs = cond.conds.map((c) => evalCond(c, fleet));
      if (rs.includes(true)) return true;
      return rs.includes(null) ? null : false;
    }
    case 'unknown':
      return null;
  }
}

export const hasUnknown = (cond: Cond): boolean =>
  cond.kind === 'unknown' || ((cond.kind === 'and' || cond.kind === 'or') && cond.conds.some(hasUnknown));
