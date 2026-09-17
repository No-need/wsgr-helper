import { useMemo, useState } from 'react';
import { mapIds, mapMeta, routeMaps } from '../lib/data';
import { activeRoutes, evalFork, evalMap, flagStates } from '../lib/engine';
import type { FleetStats } from '../lib/fleet';
import { nodeInfos } from '../lib/mapinfo';
import { pct, t } from '../lib/text';

interface Props {
  fleet: FleetStats;
  onOpen: (mapId: string) => void;
}

export interface BossReach {
  mapId: string;
  /** probability of reaching any BOSS node */
  p: number;
  perBoss: { node: string; p: number }[];
  /** unmet conditions that would raise the BOSS probability if the fleet satisfied them */
  failed: { label: string; cond: string; to: string }[];
  unknown: string[];
  /** map state (flags) that gives this probability; empty = initial state */
  flags: string[];
}

export function bossReach(mapId: string, fleet: FleetStats): BossReach | null {
  const map = routeMaps[mapId];
  if (!map) return null;
  const bosses = Object.values(nodeInfos(mapId)).filter((i) => i.kind === 'boss');
  // late maps only open the BOSS route after certain nodes were beaten once, so take the best map state
  let best = { flags: [] as string[], res: evalMap(map, fleet), p: -1 };
  for (const state of flagStates(map)) {
    const res = evalMap(map, fleet, new Set(state));
    const p = bosses.reduce((a, b) => a + (res.nodeP[b.id] ?? 0), 0);
    if (p > best.p + 1e-9) best = { flags: state, res, p };
  }
  const { res, flags } = best;
  const perBoss = bosses.map((i) => ({ node: i.id, p: res.nodeP[i.id] ?? 0 }));
  // chance of still reaching a BOSS from each node (depth-limited: 7-4 loops)
  const active = new Set(flags);
  const bossIds = new Set(bosses.map((b) => b.id));
  const value = (node: string, depth: number): number => {
    if (bossIds.has(node)) return 1;
    if (depth > 24) return 0;
    return evalFork(activeRoutes(map, node, active), fleet).reduce((a, e) => a + (e.p > 0 ? e.p * value(e.route.to, depth + 1) : 0), 0);
  };
  const failed: BossReach['failed'] = [];
  for (const [from, evals] of Object.entries(res.forks)) {
    if ((res.nodeP[from] ?? 0) <= 0 || evals.length < 2) continue;
    const here = value(from, 0);
    for (const e of evals) {
      if (e.route.cond && e.ok === false && value(e.route.to, 0) > here + 0.005) failed.push({ label: e.route.label ?? from, cond: e.route.cond, to: e.route.to });
    }
  }
  return { mapId, p: Math.min(1, perBoss.reduce((a, b) => a + b.p, 0)), perBoss, failed, unknown: res.unknown, flags };
}

export function ReverseView({ fleet, onOpen }: Props) {
  const [min, setMin] = useState(50);
  const [sortByP, setSortByP] = useState(false);
  const rows = useMemo(() => mapIds.map((id) => bossReach(id, fleet)).filter((r): r is BossReach => !!r), [fleet]);
  const shown = rows.filter((r) => r.p * 100 >= min - 1e-9);
  if (sortByP) shown.sort((a, b) => b.p - a.p);

  if (!fleet.count) return <p className="dim pad">先在左側編好艦隊,這裡會列出這支艦隊能走到王點的關卡。</p>;

  return (
    <div className="reverse">
      <div className="toolbar">
        <label>
          到達 BOSS 機率 ≥ <b>{min}%</b>
          <input type="range" min={0} max={100} step={5} value={min} onChange={(e) => setMin(Number(e.target.value))} />
        </label>
        <label>
          <input type="checkbox" checked={sortByP} onChange={(e) => setSortByP(e.target.checked)} /> 依機率排序
        </label>
        <span className="dim">
          符合 {shown.length} / {rows.length} 張圖
        </span>
      </div>
      <table className="reverse-table">
        <thead>
          <tr>
            <th>關卡</th>
            <th>到達 BOSS</th>
            <th>滿足後可提高機率的條件</th>
          </tr>
        </thead>
        <tbody>
          {shown.map((r) => (
            <tr key={r.mapId} onClick={() => onOpen(r.mapId)}>
              <td>
                <b>{r.mapId}</b> {t(mapMeta[r.mapId]?.name)}
              </td>
              <td>
                <div className="bar">
                  <i style={{ width: `${r.p * 100}%` }} className={r.p >= 0.67 ? 'hi' : r.p >= 0.34 ? 'mid' : 'lo'} />
                  <span>{pct(r.p)}</span>
                </div>
                {r.perBoss.length > 1 && <small className="dim">{r.perBoss.map((b) => `${b.node} ${pct(b.p)}`).join('・')}</small>}
              </td>
              <td className="dim">
                {r.flags.length > 0 && (
                  <span className="unk">
                    需先達成:{r.flags.map((id) => t(routeMaps[r.mapId].flags?.find((f) => f.id === id)?.text)).join('、')}{' '}
                  </span>
                )}
                {r.failed.map((f) => `${f.label} ${t(f.cond)}(→${f.to})`).join(';') || (r.flags.length ? '' : r.p < 0.9995 ? '純看運氣' : '—')}
                {r.unknown.length > 0 && <span className="unk"> (有無法判定的條件)</span>}
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <p className="hint">機率只考慮帶路(路線分歧),不含戰鬥中大破撤退;有「擊破某點後開關路線」機制的圖取對到達 BOSS 最有利的狀態,並在右欄標出需先達成的條件。</p>
    </div>
  );
}
