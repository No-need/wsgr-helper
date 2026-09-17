import { useMemo, useState } from 'react';
import { ships } from '../lib/data';
import { t } from '../lib/text';
import type { Ship } from '../lib/types';

interface Props {
  onPick: (ship: Ship) => void;
  /** restrict the list (e.g. to droppable ships) */
  pool?: Ship[];
  placeholder?: string;
}

const TYPE_ORDER = ['驱逐', '轻巡', '重巡', '雷巡', '航巡', '战巡', '战列', '航战', '轻母', '航母', '装母', '潜艇', '炮潜', '重炮', '补给', '导驱', '防驱', '导巡', '防巡', '大巡', '导战', '导潜', '旗舰'];

export function ShipPicker({ onPick, pool = ships, placeholder = '搜尋艦名(繁/簡皆可)…' }: Props) {
  const [query, setQuery] = useState('');
  const [type, setType] = useState('');
  const [open, setOpen] = useState(false);

  const types = useMemo(() => TYPE_ORDER.filter((ty) => pool.some((s) => s.typeName === ty)), [pool]);
  const results = useMemo(() => {
    const q = query.trim().toLowerCase();
    return pool.filter((s) => (!type || s.typeName === type) && (!q || s.tw.toLowerCase().includes(q) || s.name.toLowerCase().includes(q))).slice(0, 60);
  }, [pool, query, type]);

  return (
    <div className="picker" onBlur={(e) => !e.currentTarget.contains(e.relatedTarget) && setOpen(false)}>
      <input value={query} placeholder={placeholder} onChange={(e) => setQuery(e.target.value)} onFocus={() => setOpen(true)} />
      {open && (
        <div className="picker-pop" tabIndex={-1}>
          <div className="chips">
            <button className={!type ? 'chip on' : 'chip'} onClick={() => setType('')}>
              全部
            </button>
            {types.map((ty) => (
              <button key={ty} className={type === ty ? 'chip on' : 'chip'} onClick={() => setType(ty)}>
                {t(ty)}
              </button>
            ))}
          </div>
          <ul className="picker-list">
            {results.map((s) => (
              <li key={s.name}>
                <button
                  onClick={() => {
                    onPick(s);
                    setQuery('');
                    setOpen(false);
                  }}
                >
                  <span className={`rar r${s.rarity}`}>{s.tw}</span>
                  <span className="dim">
                    {t(s.typeName)}・{s.speed}節・油{s.fuel}/彈{s.ammo}
                  </span>
                </button>
              </li>
            ))}
            {!results.length && <li className="dim pad">找不到符合的艦船</li>}
          </ul>
        </div>
      )}
    </div>
  );
}
