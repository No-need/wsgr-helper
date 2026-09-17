# 戰艦少女R 帶路助手

查主線 1–10 章帶路條件的小工具(純前端,Vite + React + TypeScript)。

線上版:<https://no-need.github.io/wsgr-helper/>

- **關卡查詢**:標註地圖 + 帶路條件表;編好艦隊後顯示每條路線、每個點(含王點)的到達機率,點節點看敵方編成與掉落。
- **這隊能打哪些圖**:用目前艦隊反查所有關卡的到王機率,並提示「滿足哪個條件可以提高機率」。
- **撈船查詢**:選一艘船,列出所有會掉的關卡/節點、需要的評價、到達機率與消耗,依粗估每艘消耗排序。
- **資源消耗估算**:指定目標點與出擊場數,估算油彈消耗(含迂迴成功率)。

## 執行

```bash
npm install
npm run dev
```

## 資料

資料全部來自[艦R百科](https://www.zjsnrwiki.com/wiki/海域资料)。

| 位置 | 內容 | 來源 |
|---|---|---|
| `raw/modules/*.lua` | 艦娘、敵艦、敵方編成、掉落 | wiki 的 Lua 資料模組(原文) |
| `raw/pages/*.wiki` | 各章節頁面 wikitext(節點類型、關卡說明) | wiki |
| `public/maps/*.jpg` | 標註帶路條件的地圖(`raw/maps/index.json` 為下載來源清單) | wiki |
| `src/data/generated/` | 由上面轉出的 JSON | `npm run data` |
| `src/data/routes/*.json` | **帶路條件**(節點座標、路線、條件、★ 權重、開關機制) | 依地圖圖片人工轉錄,格式見 `docs/route-schema.md` |

帶路條件只存在於 wiki 的地圖圖片上,沒有結構化來源,所以是人工轉錄的;每個檔案的 `uncertain` 欄位記錄了轉錄時不確定的地方(網頁上也看得到)。發現錯誤直接改 JSON 即可。

- `npm run check`:檢查路線檔(節點是否齊全、是否可達、條件字串能否解析)。
- `python scripts/overlay.py [關卡…]`:把轉錄的路線畫回原圖(輸出到 `raw/overlay/`),方便肉眼核對。
- `scripts/recv.mjs`:更新 wiki 資料用的本機接收器。wiki 的 HTTPS 從命令列連不上,做法是在瀏覽器開 `http://127.0.0.1:8765/`,
  用 MediaWiki API(`origin=*`)抓 wikitext 再 POST 回本機;地圖圖片則用 `curl -H "Referer: https://www.zjsnrwiki.com/"` 下載(有防盜連)。

## 規則與假設

- 帶路判定:分歧點先檢查各路線條件,有滿足的就走編號最前的那條;全都不滿足才依 ★ 權重隨機(★ 視為比例,實際權重遊戲未公開)。
- 索敵以等級線性估算(Lv.1 初始值 → Lv.100 最大值),裝備加成需自行填入。
- 掉落:wiki 只有「每張圖 × 掉落等級」的清單;各節點能掉哪些等級依 wiki「掉落分級」表(BOSS/門神/道中/出門點 × 評價)推算。實際掉率未公開。
- 消耗:一般戰 20% 油彈、航空戰 10%、夜戰 10% 彈、迂迴 10% 油;不含修理與大破撤退。
- 有「擊破某點後開關路線」機制的圖(7-3、7-4、7-5、8-1、第 9 章、10-1)可在關卡頁勾選狀態;反查與撈船會自動取最有利的狀態並標示。

## 授權與來源

遊戲資料、地圖圖片與關卡說明均取自[艦R百科](https://www.zjsnrwiki.com/),依其授權以
[CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hant)(姓名標示-非商業性-相同方式分享)釋出:
`raw/`、`public/maps/`、`src/data/` 下的內容沿用同一授權,不得商用。
《戰艦少女R》及其素材的權利屬於原權利人,本專案為非官方的玩家工具。
