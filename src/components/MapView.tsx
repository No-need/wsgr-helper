import { useMemo, useState } from 'react';
import { sortieCost, detourRate } from '../lib/cost';
import { CHAPTER_NAMES, enemyShips, mapIds, mapMeta, routeMaps, shipByName } from '../lib/data';
import { evalMap } from '../lib/engine';
import type { FleetStats } from '../lib/fleet';
import { CATEGORY_NAME, nodeDropTiers, nodeInfos, TIER_NAME, type NodeInfo } from '../lib/mapinfo';
import { pct, t } from '../lib/text';

interface Props {
  fleet: FleetStats;
  mapId: string;
  onMap: (id: string) => void;
  /** boss reach probability per map for the current fleet, shown on the map buttons */
  bossP: Record<string, number | undefined>;
}

const probColor = (p: number) => (p <= 0 ? '#5b6b7d' : p < 0.34 ? '#e2574c' : p < 0.67 ? '#e6a23c' : '#4cc38a');
const RES_NAME = { fuel: '油', ammo: '彈', steel: '鋼', baux: '鋁' } as const;

/** enemy class words worth a warning because they need a dedicated counter */
const THREATS: Record<string, string> = { 潜艇: '潛艇(需反潛)', 炮潜: '潛艇(需反潛)', 导潜: '潛艇(需反潛)', 航母: '航母', 轻母: '航母', 装母: '航母', 要塞: '要塞', 港口: '港口', 机场: '機場' };

export function threatsOf(info: NodeInfo): string[] {
  const out = new Set<string>();
  for (const f of info.fleets) for (const id of f.ships) if (THREATS[enemyShips[id]?.type]) out.add(THREATS[enemyShips[id].type]);
  return [...out];
}

export function MapView({ fleet, mapId, onMap, bossP }: Props) {
  const map = routeMaps[mapId];
  const meta = mapMeta[mapId];
  const infos = nodeInfos(mapId);
  const [flagState, setFlagState] = useState<Record<string, string[]>>({});
  const [selected, setSelected] = useState<{ map: string; node: string } | null>(null);
  const [target, setTarget] = useState<Record<string, string>>({});
  const [tryDetour, setTryDetour] = useState(true);
  const [bossNight, setBossNight] = useState(false);
  const [runs, setRuns] = useState(50);

  const flags = useMemo(() => new Set(flagState[mapId] ?? []), [flagState, mapId]);
  const result = useMemo(() => (map ? evalMap(map, fleet, flags) : null), [map, fleet, flags]);
  const node = selected?.map === mapId ? selected.node : null;
  const stopAt = target[mapId] || undefined;
  const cost = useMemo(() => (map && fleet.count ? sortieCost(map, fleet, flags, { stopAt, tryDetour, bossNight }) : null), [map, fleet, flags, stopAt, tryDetour, bossNight]);

  const chapters = useMemo(() => {
    const groups: Record<string, string[]> = {};
    for (const id of mapIds) (groups[id.split('-')[0]] ??= []).push(id);
    return groups;
  }, []);

  const battleNodes = Object.values(infos).filter((i) => i.kind === 'battle' || i.kind === 'boss');

  return (
    <div className="mapview">
      <nav className="mapnav">
        {Object.entries(chapters).map(([ch, ids]) => (
          <div key={ch} className="chapter">
            <span className="chapter-name">
              {ch}. {CHAPTER_NAMES[ch]}
            </span>
            {ids.map((id) => (
              <button key={id} className={id === mapId ? 'mapbtn on' : 'mapbtn'} onClick={() => onMap(id)}>
                {id}
                {bossP[id] != null && fleet.count > 0 && <i style={{ background: probColor(bossP[id]!) }} />}
              </button>
            ))}
          </div>
        ))}
      </nav>

      <h2>
        {mapId} {t(meta?.name)}
        {meta?.suppress && meta.suppress !== '无' && <small>壓制任務:{t(meta.suppress)}</small>}
      </h2>

      {!map || !result ? (
        <p className="warn">這張圖還沒有路線資料。</p>
      ) : (
        <>
          <svg className="mapimg" viewBox="0 0 1520 850">
            <image href={`${import.meta.env.BASE_URL}maps/NewMap_${mapId}.jpg`} width="1520" height="850" />
            {fleet.count > 0 &&
              Object.entries(result.edgeP).map(([key, raw]) => {
                const [from, to] = key.split('>');
                const a = map.nodes[from];
                const b = map.nodes[to];
                if (!a || !b) return null;
                const p = Math.min(1, raw);
                return <line key={key} x1={a.x} y1={a.y} x2={b.x} y2={b.y} stroke={probColor(p)} strokeWidth={4 + 10 * p} strokeOpacity={0.55} strokeLinecap="round" />;
              })}
            {Object.entries(map.nodes).map(([id, pos]) => {
              const p = result.nodeP[id] ?? 0;
              return (
                <g key={id} className="node" onClick={() => setSelected({ map: mapId, node: id })}>
                  <circle cx={pos.x} cy={pos.y} r={node === id ? 44 : 38} fill="transparent" stroke={node === id ? '#fff' : fleet.count ? probColor(p) : 'transparent'} strokeWidth={node === id ? 6 : 5} />
                  {fleet.count > 0 && id !== 'start' && (
                    <g transform={`translate(${pos.x + 30}, ${pos.y + 22})`}>
                      <rect x={0} y={0} width={76} height={32} rx={8} fill="#0b1520" fillOpacity={0.88} stroke={probColor(p)} strokeWidth={2} />
                      <text x={38} y={23} textAnchor="middle" fontSize={22} fontWeight={700} fill={probColor(p)}>
                        {pct(p)}
                      </text>
                    </g>
                  )}
                </g>
              );
            })}
          </svg>
          <p className="hint">點地圖上的節點可看敵方編成與掉落。{fleet.count === 0 && '左側先編好艦隊,就會顯示到達各點的機率。'}</p>

          {map.flags?.length ? (
            <div className="flags">
              {map.flags.map((f) =>
                f.auto ? (
                  <span key={f.id}>
                    ※ {t(f.text)}
                    <span className="dim">
                      {f.close?.length ? ` 關閉 ${f.close.map(([a, b]) => `${a}→${b}`).join('、')}` : ''}(已自動計入機率)
                    </span>
                  </span>
                ) : (
                <label key={f.id}>
                  <input
                    type="checkbox"
                    checked={flags.has(f.id)}
                    onChange={(e) => setFlagState((s) => ({ ...s, [mapId]: e.target.checked ? [...(s[mapId] ?? []), f.id] : (s[mapId] ?? []).filter((x) => x !== f.id) }))}
                  />
                  已達成:{t(f.text)}
                  <span className="dim">
                    {f.close?.length ? ` 關閉 ${f.close.map(([a, b]) => `${a}→${b}`).join('、')}` : ''}
                    {f.open?.length ? ` 開啟 ${f.open.map(([a, b]) => `${a}→${b}`).join('、')}` : ''}
                  </span>
                </label>
                ),
              )}
            </div>
          ) : null}

          <div className="cols">
            <section>
              <h3>帶路條件</h3>
              <table className="routes">
                <thead>
                  <tr>
                    <th>分歧</th>
                    <th>路線</th>
                    <th>條件</th>
                    <th>權重</th>
                    <th>機率</th>
                  </tr>
                </thead>
                <tbody>
                  {Object.keys(map.routes)
                    .map((from) => [from, result.forks[from] ?? []] as const)
                    .filter(([, evals]) => evals.length > 1)
                    .flatMap(([from, evals]) =>
                      evals.map((e, i) => (
                        <tr key={`${from}${i}`} className={i === 0 ? 'first' : ''}>
                          {i === 0 && <td rowSpan={evals.length}>{from === 'start' ? '起點' : from}</td>}
                          <td>
                            {e.route.label} → <b>{e.route.to}</b>
                            {infos[e.route.to]?.kind === 'boss' && <span className="tag boss">BOSS</span>}
                          </td>
                          <td>
                            {e.route.cond ? (
                              <span className={fleet.count === 0 ? '' : e.ok ? 'ok' : e.ok === false ? 'ng' : 'unk'}>
                                {fleet.count > 0 && (e.ok ? '✓ ' : e.ok === false ? '✗ ' : '? ')}
                                {t(e.route.cond)}
                              </span>
                            ) : (
                              <span className="dim">—</span>
                            )}
                          </td>
                          <td className="stars">{'★'.repeat(e.route.stars ?? 0)}</td>
                          <td style={{ color: fleet.count ? probColor(e.p) : undefined }}>{fleet.count ? pct(e.p) : ''}</td>
                        </tr>
                      )),
                    )}
                </tbody>
              </table>
              <p className="hint">規則:有條件滿足 → 必走編號最前的那條;全都不滿足 → 依 ★ 權重隨機(★ 為近似比例)。</p>
              {result.unknown.length > 0 && <p className="warn">無法自動判定的條件(視為不滿足):{result.unknown.map(t).join('、')}</p>}
              {[...(map.notes ?? [])].map((n) => (
                <p key={n} className="note">
                  ※ {t(n)}
                </p>
              ))}
              {meta?.intro.map((n) => (
                <p key={n} className="note">
                  {n}
                </p>
              ))}
              {map.uncertain?.length ? (
                <details className="uncertain">
                  <summary>轉錄時不確定的地方({map.uncertain.length})</summary>
                  <ul>
                    {map.uncertain.map((u) => (
                      <li key={u}>{t(u)}</li>
                    ))}
                  </ul>
                </details>
              ) : null}
            </section>

            <section>
              <h3>資源消耗估算</h3>
              {cost ? (
                <div className="cost">
                  <label>
                    目標點
                    <select value={stopAt ?? ''} onChange={(e) => setTarget((s) => ({ ...s, [mapId]: e.target.value }))}>
                      <option value="">打到底(BOSS / 斷路)</option>
                      {battleNodes.map((i) => (
                        <option key={i.id} value={i.id}>
                          打完 {i.id} 點就撤退{i.kind === 'boss' ? '(BOSS)' : ''}
                        </option>
                      ))}
                    </select>
                  </label>
                  <label>
                    <input type="checkbox" checked={tryDetour} onChange={(e) => setTryDetour(e.target.checked)} /> 迂迴點一律嘗試迂迴
                  </label>
                  <label>
                    <input type="checkbox" checked={bossNight} onChange={(e) => setBossNight(e.target.checked)} /> BOSS 點追擊夜戰
                  </label>
                  <label>
                    預計出擊
                    <input type="number" min={1} value={runs} onChange={(e) => setRuns(Math.max(1, Number(e.target.value) || 1))} /> 場
                  </label>
                  <table>
                    <thead>
                      <tr>
                        <th />
                        <th>每場</th>
                        <th>{runs} 場</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>燃料</td>
                        <td>{cost.fuel.toFixed(1)}</td>
                        <td>{Math.round(cost.fuel * runs).toLocaleString()}</td>
                      </tr>
                      <tr>
                        <td>彈藥</td>
                        <td>{cost.ammo.toFixed(1)}</td>
                        <td>{Math.round(cost.ammo * runs).toLocaleString()}</td>
                      </tr>
                      <tr>
                        <td>戰鬥場次</td>
                        <td>{cost.battles.toFixed(2)}</td>
                        <td>{Math.round(cost.battles * runs).toLocaleString()}</td>
                      </tr>
                      <tr>
                        <td>到達{stopAt ? ` ${stopAt} 點` : ' BOSS'}</td>
                        <td>{pct(cost.reach)}</td>
                        <td>約 {(cost.reach * runs).toFixed(1)} 次</td>
                      </tr>
                      {(Object.keys(RES_NAME) as (keyof typeof RES_NAME)[])
                        .filter((r) => cost.pickup[r])
                        .map((r) => (
                          <tr key={r}>
                            <td>資源點({RES_NAME[r]})</td>
                            <td>{cost.pickup[r] > 0 ? '+' : ''}{cost.pickup[r].toFixed(1)}</td>
                            <td>{Math.round(cost.pickup[r] * runs).toLocaleString()}</td>
                          </tr>
                        ))}
                    </tbody>
                  </table>
                  {cost.reach > 0 && cost.reach < 1 && (
                    <p className="hint">
                      平均每 {(1 / cost.reach).toFixed(1)} 場到達一次,每次到達約花 油 {(cost.fuel / cost.reach).toFixed(0)} / 彈 {(cost.ammo / cost.reach).toFixed(0)}。
                    </p>
                  )}
                  <p className="hint">只計出擊補給(一般戰 20% 油彈、航空戰 10%、夜戰 10% 彈、迂迴 10% 油),不含修理與中途大破撤退。</p>
                </div>
              ) : (
                <p className="dim">編好艦隊後顯示。</p>
              )}
            </section>
          </div>

          {node && infos[node] && <NodeDetail mapId={mapId} info={infos[node]} p={result.nodeP[node] ?? 0} fleet={fleet} />}
        </>
      )}
    </div>
  );
}

function NodeDetail({ mapId, info, p, fleet }: { mapId: string; info: NodeInfo; p: number; fleet: FleetStats }) {
  const tiers = nodeDropTiers(mapId, info);
  const threats = threatsOf(info);
  return (
    <section className="nodedetail">
      <h3>
        {info.id === 'start' ? '起點' : `${info.id} 點`}
        {info.kind === 'boss' && <span className="tag boss">BOSS</span>}
        {info.tags.map((tag) => (
          <span key={tag} className="tag">
            {t(tag)}
          </span>
        ))}
        {info.text && <span className="tag">{t(info.text)}</span>}
        {info.dropCategory && <span className="tag">{CATEGORY_NAME[info.dropCategory]}</span>}
        {fleet.count > 0 && <small>到達機率 {pct(p)}</small>}
        {fleet.count > 0 && info.tags.includes('迂回') && <small>迂迴成功率約 {pct(detourRate(fleet, info))}</small>}
      </h3>
      {threats.length > 0 && <p className="warn">注意:可能出現 {threats.join('、')}</p>}
      {info.fleets.length > 0 && (
        <table className="enemies">
          <thead>
            <tr>
              <th>#</th>
              <th>陣型</th>
              <th>敵方編成</th>
            </tr>
          </thead>
          <tbody>
            {info.fleets.map((f, i) => (
              <tr key={i}>
                <td>{i + 1}</td>
                <td>{t(f.formation)}</td>
                <td>
                  {f.ships.map((id, j) => {
                    const e = enemyShips[id];
                    return (
                      <span key={j} className={`enemy r${e?.rarity ?? 1}${THREATS[e?.type ?? ''] ? ' threat' : ''}`} title={e ? `Lv.${e.lv} ${t(e.type)} 航速${e.speed}` : id}>
                        {e ? e.tw : id}
                      </span>
                    );
                  })}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
      {tiers.length > 0 && (
        <div className="droplist">
          {tiers.map((tier) => (
            <div key={tier.tier}>
              <b>
                {TIER_NAME[tier.tier]}(需 {tier.rating} 勝以上)
              </b>
              <span>
                {tier.ships.map((s) => (
                  <span key={s} className={`rar r${shipByName.get(s)?.rarity ?? 1}`}>
                    {shipByName.get(s)?.tw ?? s}
                  </span>
                ))}
              </span>
            </div>
          ))}
        </div>
      )}
      {!info.fleets.length && !tiers.length && <p className="dim">此點沒有戰鬥。</p>}
    </section>
  );
}
