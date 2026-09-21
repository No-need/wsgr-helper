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
      <section className="about">
        <h2>這是什麼</h2>
        <p>
          《戰艦少女R》主線 1–10 章的<b>帶路條件</b>查詢工具。每張圖的分歧點都有帶路條件(艦種數量、旗艦、索敵、航速、幸運、等級…),
          不滿足時就依 ★ 權重隨機,很容易走進溝裡撈不到船。在左側編好艦隊(含旗艦位置與等級),這裡會直接算出:
        </p>
        <ul>
          <li><b>關卡查詢</b>:每條路線、每個節點與王點的到達機率,疊在艦R百科的標註地圖上;點節點看敵方編成(潛艇、航母警示)與掉落。</li>
          <li><b>這隊能打哪些圖</b>:反查 44 張圖的到王機率,並提示滿足哪個條件可以提高。</li>
          <li><b>撈船查詢</b>:選一艘船,列出所有掉落點、需要的評價與到達機率,依每艘的粗估油彈消耗排序,找最適合撈的點。</li>
          <li><b>消耗估算</b>:指定目標點與出擊場數,估算油彈與戰鬥場次,含迂迴成功率與資源點。</li>
        </ul>
        <p>支援「擊破某點後開關路線」的機制(7-3、7-4、7-5、8-1、第 9 章、10-1)。艦隊資料只存在你的瀏覽器裡。</p>
      </section>
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
