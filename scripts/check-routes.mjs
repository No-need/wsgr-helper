// Validates src/data/routes/*.json against the wiki node lists and reports condition strings the parser can't read.
// Usage: node --experimental-strip-types scripts/check-routes.mjs
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { hasUnknown, parseCond } from '../src/lib/cond.ts';

const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const meta = JSON.parse(fs.readFileSync(path.join(ROOT, 'src/data/generated/mapMeta.json'), 'utf8'));
const dir = path.join(ROOT, 'src/data/routes');
let problems = 0;
const say = (map, msg) => {
  problems++;
  console.log(`[${map}] ${msg}`);
};
const unknownConds = new Map();

for (const id of Object.keys(meta)) {
  const file = path.join(dir, `${id}.json`);
  if (!fs.existsSync(file)) {
    say(id, 'missing route file');
    continue;
  }
  const r = JSON.parse(fs.readFileSync(file, 'utf8'));
  const expected = new Set(['start', ...Object.keys(meta[id].nodes).filter((k) => !k.includes('*'))]);
  for (const n of expected) if (!r.nodes[n]) say(id, `node ${n} missing`);
  for (const n of Object.keys(r.nodes)) if (!expected.has(n)) say(id, `unexpected node ${n}`);

  const flagIds = new Set((r.flags ?? []).map((f) => f.id));
  const reach = new Set(['start']);
  const queue = ['start'];
  while (queue.length) {
    const n = queue.shift();
    for (const route of r.routes[n] ?? []) {
      if (!reach.has(route.to)) {
        reach.add(route.to);
        queue.push(route.to);
      }
    }
  }
  for (const n of Object.keys(r.nodes)) if (!reach.has(n)) say(id, `node ${n} unreachable`);

  for (const [from, list] of Object.entries(r.routes)) {
    if (!r.nodes[from]) say(id, `routes from unknown node ${from}`);
    for (const route of list) {
      if (!r.nodes[route.to]) say(id, `${from} -> unknown node ${route.to}`);
      for (const key of ['requires', 'closedBy']) if (route[key] && !flagIds.has(route[key])) say(id, `${from}->${route.to} ${key} unknown flag ${route[key]}`);
      if (route.cond && hasUnknown(parseCond(route.cond))) unknownConds.set(route.cond, [...(unknownConds.get(route.cond) ?? []), `${id}:${route.label ?? from}`]);
    }
    const always = list.filter((x) => !x.requires && !x.closedBy);
    if (always.length > 1 && always.every((x) => !x.cond && !x.stars)) say(id, `fork ${from} has neither conditions nor stars`);
  }
  const bosses = Object.entries(meta[id].nodes).filter(([, v]) => v.kind === 'boss').map(([k]) => k.replace(/\*+$/, ''));
  for (const b of bosses) if (r.routes[b]?.length) say(id, `BOSS ${b} has outgoing routes`);

  // cycles (7-4 loops on purpose; its `auto` flag breaks the loop mid-sortie)
  if ((r.flags ?? []).some((f) => f.auto)) continue;
  const state = {};
  const dfs = (n, trail) => {
    if (state[n] === 1) return say(id, `cycle: ${[...trail, n].join('→')}`);
    if (state[n] === 2) return;
    state[n] = 1;
    for (const route of r.routes[n] ?? []) dfs(route.to, [...trail, n]);
    state[n] = 2;
  };
  dfs('start', []);
}

console.log(`\n${problems} structural problem(s)`);
console.log(`\nUnparsed conditions (${unknownConds.size}):`);
for (const [c, where] of unknownConds) console.log(`  ${JSON.stringify(c)}  <- ${where.join(', ')}`);
