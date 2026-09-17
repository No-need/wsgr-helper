import { useMemo, useState } from 'react';
import { drops, mapMeta, routeMaps, shipByName, ships } from '../lib/data';
import { costPerArrival, costPerDrop, farmSpots } from '../lib/farm';
import type { FleetStats } from '../lib/fleet';
import { CATEGORY_NAME, TIER_NAME } from '../lib/mapinfo';
import { pct, t } from '../lib/text';
import { ShipPicker } from './ShipPicker';

interface Props {
  fleet: FleetStats;
  onOpen: (mapId: string) => void;
}

const droppable = (() => {
  const names = new Set<string>();
  for (const tiers of Object.values(drops)) for (const list of Object.values(tiers)) for (const s of list) names.add(s);
  return ships.filter((s) => names.has(s.name));
})();

export function FarmView({ fleet, onOpen }: Props) {
  const [ship, setShip] = useState<string | null>(null);
  const [tryDetour, setTryDetour] = useState(true);
  const spots = useMemo(() => {
    if (!ship) return [];
    const list = farmSpots(ship, fleet, { tryDetour, bossNight: false });
    // cheapest rough cost per drop first; without a fleet fall back to the smallest drop pool
    const key = (s: (typeof list)[number]) => (fleet.count ? costPerDrop(s) : s.pool);
    return list.sort((a, b) => (key(a) === key(b) ? 0 : key(a) - key(b)));
  }, [ship, fleet, tryDetour]);
  const info = ship ? shipByName.get(ship) : null;

  return (
    <div className="farm">
      <div className="toolbar">
        <ShipPicker pool={droppable} onPick={(s) => setShip(s.name)} placeholder="想撈哪艘船?(僅列出有掉落的艦船)" />
        <label>
          <input type="checkbox" checked={tryDetour} onChange={(e) => setTryDetour(e.target.checked)} /> 迂迴點嘗試迂迴
        </label>
      </div>
      {info && (
        <>
          <h2>
            <span className={`rar r${info.rarity}`}>{info.tw}</span>
            <small>
              {t(info.typeName)}・共 {spots.length} 個可掉落的點
            </small>
          </h2>
          {spots.length === 0 ? (
            <p className="dim">主線 1–10 章沒有掉落這艘船。</p>
          ) : (
            <table className="farm-table">
              <thead>
                <tr>
                  <th>關卡</th>
                  <th>點</th>
                  <th>掉落等級</th>
                  <th>需要評價</th>
                  <th>同池艦數</th>
                  <th>到達機率</th>
                  <th>戰鬥數</th>
                  <th>每場 油/彈</th>
                  <th>每次到達 油+彈</th>
                  <th>粗估每艘 油+彈</th>
                </tr>
              </thead>
              <tbody>
                {spots.map((s, i) => (
                  <tr key={`${s.mapId}${s.node}`} className={fleet.count && i === 0 && costPerArrival(s) < Infinity ? 'best' : ''} onClick={() => onOpen(s.mapId)}>
                    <td>
                      <b>{s.mapId}</b> {t(mapMeta[s.mapId]?.name)}
                    </td>
                    <td>
                      {s.node} <span className="dim">{CATEGORY_NAME[s.category]}</span>
                      {s.flags.length > 0 && <div className="unk small">需先達成:{s.flags.map((id) => t(routeMaps[s.mapId].flags?.find((f) => f.id === id)?.text)).join('、')}</div>}
                    </td>
                    <td>{TIER_NAME[s.tier]}</td>
                    <td>{s.rating} 勝</td>
                    <td>{s.pool}</td>
                    <td>{s.cost ? pct(s.cost.reach) : '—'}</td>
                    <td>{s.cost ? s.cost.battles.toFixed(2) : '—'}</td>
                    <td>{s.cost ? `${s.cost.fuel.toFixed(0)} / ${s.cost.ammo.toFixed(0)}` : '—'}</td>
                    <td>{s.cost && s.cost.reach > 0 ? costPerArrival(s).toFixed(0) : s.cost ? '到不了' : '—'}</td>
                    <td>{s.cost && s.cost.reach > 0 ? Math.round(costPerDrop(s)).toLocaleString() : '—'}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          )}
          <p className="hint">
            排序依「粗估每艘消耗」由低到高 = 每次到達該點的期望油彈(打完該點即撤退)× 同池艦數。「同池艦數」是該點達成所需評價時可能掉落的艦船總數;實際掉率遊戲未公開,這裡假設池內機率均等,只適合用來比較不同撈點的相對優劣。
            掉落等級與節點類型的對應依艦R百科「掉落分級」表(BOSS/門神/道中/出門點)推算,個別關卡的特殊點位掉落請看關卡頁的說明。
          </p>
        </>
      )}
      {!info && <p className="dim pad">選一艘船,列出所有會掉落它的關卡與節點,並依你目前的艦隊估算哪裡最省資源。</p>}
    </div>
  );
}
