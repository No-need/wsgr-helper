import { useMemo, useState } from 'react';
import { FarmView } from './components/FarmView';
import { FleetPanel } from './components/FleetPanel';
import { MapView } from './components/MapView';
import { bossReach, ReverseView } from './components/ReverseView';
import { mapIds } from './lib/data';
import { fleetStats } from './lib/fleet';
import { useAppState } from './lib/store';

type Tab = 'map' | 'reverse' | 'farm';

const TABS: { id: Tab; label: string }[] = [
  { id: 'map', label: '關卡查詢' },
  { id: 'reverse', label: '這隊能打哪些圖' },
  { id: 'farm', label: '撈船查詢' },
];

export default function App() {
  const app = useAppState();
  const stats = useMemo(() => fleetStats(app.fleet), [app.fleet]);
  const [tab, setTab] = useState<Tab>('map');
  const [mapId, setMapId] = useState('1-1');

  const bossP = useMemo(() => Object.fromEntries(mapIds.map((id) => [id, bossReach(id, stats)?.p])), [stats]);
  const openMap = (id: string) => {
    setMapId(id);
    setTab('map');
    window.scrollTo({ top: 0 });
  };

  return (
    <div className="app">
      <header>
        <h1>戰艦少女R 帶路助手</h1>
        <nav>
          {TABS.map((tb) => (
            <button key={tb.id} className={tab === tb.id ? 'tab on' : 'tab'} onClick={() => setTab(tb.id)}>
              {tb.label}
            </button>
          ))}
        </nav>
      </header>
      <div className="layout">
        <FleetPanel app={app} stats={stats} />
        <main>
          {tab === 'map' && <MapView fleet={stats} mapId={mapId} onMap={setMapId} bossP={bossP} />}
          {tab === 'reverse' && <ReverseView fleet={stats} onOpen={openMap} />}
          {tab === 'farm' && <FarmView fleet={stats} onOpen={openMap} />}
        </main>
      </div>
      <footer>
        資料來源:
        <a href="https://www.zjsnrwiki.com/wiki/海域资料" target="_blank" rel="noreferrer">
          艦R百科
        </a>
        (地圖、帶路條件、敵方編成、掉落、艦船數值)。帶路條件由標註地圖人工轉錄,如有錯誤請修改 <code>src/data/routes/</code> 下對應的 JSON。
      </footer>
    </div>
  );
}
