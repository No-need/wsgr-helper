import { recAtLevel, type FleetStats } from '../lib/fleet';
import type { useAppState } from '../lib/store';
import { t } from '../lib/text';
import { ShipPicker } from './ShipPicker';

interface Props {
  app: ReturnType<typeof useAppState>;
  stats: FleetStats;
}

export function FleetPanel({ app, stats }: Props) {
  const { state, fleet, setFleet } = app;
  const setSlots = (slots: typeof fleet.slots) => setFleet({ ...fleet, slots });
  const move = (i: number, d: number) => {
    const slots = [...fleet.slots];
    [slots[i], slots[i + d]] = [slots[i + d], slots[i]];
    setSlots(slots);
  };

  return (
    <aside className="fleet">
      <div className="fleet-head">
        <select value={state.current} onChange={(e) => app.selectFleet(Number(e.target.value))}>
          {state.fleets.map((f, i) => (
            <option key={i} value={i}>
              {f.name}
            </option>
          ))}
        </select>
        <button title="新增艦隊" onClick={app.addFleet}>
          ＋
        </button>
        <button title="複製目前艦隊" onClick={app.copyFleet}>
          ⧉
        </button>
        <button title="刪除目前艦隊" onClick={app.removeFleet}>
          🗑
        </button>
      </div>
      <input className="fleet-name" value={fleet.name} onChange={(e) => setFleet({ ...fleet, name: e.target.value })} aria-label="艦隊名稱" />

      <ol className="slots">
        {stats.members.map((m, i) => (
          <li key={i} className="slot">
            <div className="slot-main">
              <span className={`rar r${m.ship.rarity}`}>{m.ship.tw}</span>
              <span className="dim">
                {i === 0 && <b className="flagship">旗艦 </b>}
                {t(m.ship.typeName)}・{m.ship.speed}節・運{m.ship.luck}・索敵{recAtLevel(m.ship, m.level)}
              </span>
            </div>
            <label className="lv">
              Lv
              <input
                type="number"
                min={1}
                max={120}
                value={m.level}
                onChange={(e) => setSlots(fleet.slots.map((s, j) => (j === i ? { ...s, level: Math.max(1, Number(e.target.value) || 1) } : s)))}
              />
            </label>
            <div className="slot-btns">
              <button disabled={i === 0} onClick={() => move(i, -1)} title="上移">
                ↑
              </button>
              <button disabled={i === stats.members.length - 1} onClick={() => move(i, 1)} title="下移">
                ↓
              </button>
              <button onClick={() => setSlots(fleet.slots.filter((_, j) => j !== i))} title="移除">
                ✕
              </button>
            </div>
          </li>
        ))}
      </ol>
      {fleet.slots.length < 6 ? (
        <ShipPicker onPick={(s) => setSlots([...fleet.slots, { ship: s.name, level: 100 }])} placeholder={`加入第 ${fleet.slots.length + 1} 艘…`} />
      ) : (
        <p className="dim">艦隊已滿 6 艘</p>
      )}

      <label className="bonus">
        裝備索敵加成
        <input type="number" value={fleet.recBonus} onChange={(e) => setFleet({ ...fleet, recBonus: Number(e.target.value) || 0 })} />
      </label>

      <dl className="stats">
        <div>
          <dt>艦種</dt>
          <dd>
            {Object.entries(stats.types)
              .map(([ty, n]) => `${t(ty)}×${n}`)
              .join(' ') || '—'}
          </dd>
        </div>
        <div>
          <dt>總等級</dt>
          <dd>{stats.level}</dd>
        </div>
        <div>
          <dt>總索敵</dt>
          <dd>{stats.rec}</dd>
        </div>
        <div>
          <dt>總幸運</dt>
          <dd>{stats.luck}</dd>
        </div>
        <div>
          <dt>航速 低/均/高</dt>
          <dd>
            {stats.speedMin} / {stats.speedAvg.toFixed(1)} / {stats.speedMax}
          </dd>
        </div>
        <div>
          <dt>作戰航速</dt>
          <dd>{stats.battleSpeed.toFixed(1)}</dd>
        </div>
        <div>
          <dt>滿補給 油/彈</dt>
          <dd>
            {stats.fuel} / {stats.ammo}
          </dd>
        </div>
      </dl>
      <p className="hint">索敵以等級線性估算(Lv.1→初始值、Lv.100→最大值),裝備加成請自行填入。</p>
    </aside>
  );
}
