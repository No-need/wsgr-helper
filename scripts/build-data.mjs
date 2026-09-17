// Converts the wiki Lua data modules in raw/modules into compact JSON under src/data/generated.
// Usage: node scripts/build-data.mjs
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import fengari from 'fengari';
import * as OpenCC from 'opencc-js';

const { lua, lauxlib, lualib, to_luastring, to_jsstring } = fengari;
const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const MOD = path.join(ROOT, 'raw', 'modules');
const OUT = path.join(ROOT, 'src', 'data', 'generated');
fs.mkdirSync(OUT, { recursive: true });

const s2t = OpenCC.Converter({ from: 'cn', to: 'tw' });

/** Run a Lua module file and return its `return` value as plain JS data. */
function loadLua(file) {
  const L = lauxlib.luaL_newstate();
  lualib.luaL_openlibs(L);
  const src = fs.readFileSync(path.join(MOD, file), 'utf8');
  if (lauxlib.luaL_dostring(L, to_luastring(src)) !== lua.LUA_OK) {
    throw new Error(`${file}: ${to_jsstring(lua.lua_tostring(L, -1))}`);
  }
  return toJs(L, -1);
}

function toJs(L, idx) {
  switch (lua.lua_type(L, idx)) {
    case lua.LUA_TNIL:
      return null;
    case lua.LUA_TBOOLEAN:
      return lua.lua_toboolean(L, idx);
    case lua.LUA_TNUMBER:
      return lua.lua_tonumber(L, idx);
    case lua.LUA_TSTRING:
      return to_jsstring(lua.lua_tostring(L, idx));
    case lua.LUA_TTABLE: {
      const abs = lua.lua_absindex(L, idx);
      const obj = {};
      let isArray = true;
      let n = 0;
      lua.lua_pushnil(L);
      while (lua.lua_next(L, abs) !== 0) {
        const key = lua.lua_type(L, -2) === lua.LUA_TNUMBER ? lua.lua_tonumber(L, -2) : to_jsstring(lua.lua_tostring(L, -2));
        obj[key] = toJs(L, -1);
        n++;
        if (typeof key !== 'number') isArray = false;
        lua.lua_pop(L, 1);
      }
      if (isArray && n > 0) {
        const arr = [];
        for (let i = 1; i <= n; i++) {
          if (!(i in obj)) return obj;
          arr.push(obj[i]);
        }
        return arr;
      }
      return obj;
    }
    default:
      return undefined;
  }
}

const write = (name, data) => {
  const file = path.join(OUT, name);
  fs.writeFileSync(file, JSON.stringify(data));
  console.log(name, (fs.statSync(file).size / 1024).toFixed(1) + ' KB');
};

// ---------- player ships ----------
const TYPE_NAME = {
  CV: '航母', CVL: '轻母', AV: '装母', BB: '战列', BBV: '航战', BC: '战巡', CA: '重巡', CAV: '航巡',
  CLT: '雷巡', CL: '轻巡', BM: '重炮', DD: '驱逐', SSV: '潜母', SS: '潜艇', SC: '炮潜', AP: '补给',
  DDG: '导驱', DDGAA: '防驱', BBG: '导战', CG: '导巡', CGAA: '防巡', CB: '大巡', SSG: '导潜', CBG: '大巡', CF: '旗舰',
};
const { ships: rawShips } = loadLua('数据库__舰娘.lua');
const ships = [];
const unknownTypes = new Set();
for (const [name, s] of Object.entries(rawShips)) {
  if (!s.type || s.sFuel == null) continue;
  if (!TYPE_NAME[s.type]) unknownTypes.add(s.type);
  ships.push({
    name,
    tw: s2t(name),
    index: s.index,
    rarity: s.rarity,
    type: s.type,
    typeName: TYPE_NAME[s.type] ?? s.type,
    country: s.country,
    speed: s.speed,
    luck: s.luck,
    rec: s.rec,
    recMax: s.recMax,
    hp: s.hp,
    fuel: s.sFuel,
    ammo: s.sAmmo,
    rFuel: s.rFuel,
    rSteel: s.rSteel,
    mod: s.mod || undefined,
  });
}
ships.sort((a, b) => a.index - b.index || a.name.localeCompare(b.name));
if (unknownTypes.size) console.warn('unknown ship types:', [...unknownTypes]);
write('ships.json', ships);

// ---------- enemies ----------
const { eShips, eFleets } = loadLua('数据库__敌舰.lua');
const enemyShips = {};
for (const [id, e] of Object.entries(eShips)) {
  enemyShips[id] = { title: e.title, tw: s2t(e.title), type: e.type, lv: e.lv, rarity: e.rarity, speed: e.speed, rec: e.rec, air: e.air, hp: e.hp };
}
const enemyFleets = {};
for (const [key, list] of Object.entries(eFleets)) {
  const fleets = (Array.isArray(list) ? list : Object.values(list)).filter((f) => f && f.eShips);
  if (!fleets.length) continue;
  enemyFleets[key] = fleets.map((f) => ({ formation: f.formation, ships: Array.isArray(f.eShips) ? f.eShips : Object.values(f.eShips) }));
}
write('enemyShips.json', enemyShips);
write('enemyFleets.json', enemyFleets);

// ---------- drops ----------
const { maps: dropMaps } = loadLua('数据库__掉落.lua');
const drops = {};
for (const [map, tiers] of Object.entries(dropMaps)) {
  if (!/^\d+-\d+$/.test(map)) continue;
  drops[map] = {};
  for (const [tier, list] of Object.entries(tiers)) drops[map][tier] = Array.isArray(list) ? list : Object.values(list);
}
write('drops.json', drops);

// ---------- map metadata from chapter pages ----------
const PAGES = path.join(ROOT, 'raw', 'pages');
const mapMeta = {};
for (const file of fs.readdirSync(PAGES)) {
  const text = fs.readFileSync(path.join(PAGES, file), 'utf8');
  const sections = text.split(/^==(?!=)/m).slice(1);
  for (const sec of sections) {
    const head = sec.match(/^\s*(\d+-\d+)\s*([^=]*?)\s*==/);
    if (!head) continue;
    const [, id, name] = head;
    const nodes = {};
    const rowRe = /\|- id="(\d+-\d+)\/([^"]+)"\s*\n([^\n]*)/g;
    for (const m of sec.matchAll(rowRe)) {
      const [, mapId, node, row] = m;
      if (mapId !== id) continue;
      const inv = row.match(/\{\{#invoke:敌舰2\|阵容\|[^|}]+(?:\|([^|}]*))?/);
      if (inv) {
        const label = inv[1] ?? '';
        nodes[node] = { kind: /BOSS/i.test(label) ? 'boss' : 'battle', tags: label.replace(/^.*?<br\s*\/?>/, '').replace(/BOSS/i, '').trim() || undefined };
      } else {
        const cells = row.split('||').map((c) => c.replace(/^\|/, '').replace(/colspan=\d+\s*\|/, '').trim());
        nodes[node] = { kind: 'other', text: cells[cells.length - 1] };
      }
    }
    const grab = (re) => sec.match(re)?.[1]?.trim();
    mapMeta[id] = {
      id,
      name,
      chapter: file.replace('.wiki', ''),
      suppress: grab(/压制任务条件：([^\n]*)/),
      shipExp: grab(/舰船基础经验值：([^\n]*)/),
      // prose notes between the section header and the enemy table (special drops, mechanics…)
      intro: sec
        .split('===敌方阵容===')[0]
        .split('\n')
        .slice(1)
        .map((l) => l.trim())
        .filter((l) => l && !/^[*[<{|]/.test(l))
        .map((l) => s2t(l.replace(/\{\{黑幕\|[^}]*\}\}/g, '').replace(/\[\[(?:[^\]|]*\|)?([^\]]*)\]\]/g, '$1').replace(/'''/g, '').replace(/<[^>]+>/g, '').trim()))
        .filter(Boolean),
      nodes,
    };
  }
}
// The chapter page's table misses this tag; the annotated map and 战斗机制#迂回点 both list 7-5 G as a 迂回 node.
if (mapMeta['7-5']?.nodes.G && !mapMeta['7-5'].nodes.G.tags) mapMeta['7-5'].nodes.G.tags = '迂回';
write('mapMeta.json', mapMeta);

// ---------- Traditional-Chinese display text for strings kept in Simplified (conditions, notes, class words) ----------
const ROUTES = path.join(ROOT, 'src', 'data', 'routes');
const text = new Set([...Object.values(TYPE_NAME), ...ships.map((s) => s.country)]);
for (const e of Object.values(enemyShips)) text.add(e.type);
for (const list of Object.values(enemyFleets)) for (const f of list) text.add(f.formation);
for (const m of Object.values(mapMeta)) {
  text.add(m.name);
  if (m.suppress) text.add(m.suppress);
  for (const n of Object.values(m.nodes)) for (const v of [n.tags, n.text]) if (v) text.add(v);
}
for (const file of fs.existsSync(ROUTES) ? fs.readdirSync(ROUTES) : []) {
  const r = JSON.parse(fs.readFileSync(path.join(ROUTES, file), 'utf8'));
  for (const list of Object.values(r.routes)) for (const route of list) if (route.cond) text.add(route.cond);
  for (const f of r.flags ?? []) text.add(f.text);
  for (const s of [...(r.notes ?? []), ...(r.uncertain ?? [])]) text.add(s);
}
const dict = {};
for (const s of text) if (s && s2t(s) !== s) dict[s] = s2t(s);
write('text.json', dict);
