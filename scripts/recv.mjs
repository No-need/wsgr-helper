// Local receiver: the browser (which can reach the wiki) POSTs fetched data here,
// and it is written under raw/. Usage: node scripts/recv.mjs
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const RAW = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..', 'raw');
const PORT = 8765;

http
  .createServer((req, res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', '*');
    res.setHeader('Access-Control-Allow-Private-Network', 'true');
    if (req.method === 'OPTIONS') return res.writeHead(204).end();
    if (req.method === 'GET') {
      return res.writeHead(200, { 'Content-Type': 'text/html' }).end('<title>recv</title>receiver');
    }

    const url = new URL(req.url, `http://localhost:${PORT}`);
    const rel = url.searchParams.get('path');
    const target = rel && path.resolve(RAW, rel);
    if (req.method !== 'POST' || !target || !target.startsWith(RAW + path.sep)) {
      return res.writeHead(400).end('bad request');
    }
    const chunks = [];
    req.on('data', (c) => chunks.push(c));
    req.on('end', () => {
      fs.mkdirSync(path.dirname(target), { recursive: true });
      fs.writeFileSync(target, Buffer.concat(chunks));
      console.log('saved', rel, Buffer.concat(chunks).length);
      res.writeHead(200).end('ok');
    });
  })
  .listen(PORT, '127.0.0.1', () => console.log(`receiver on http://127.0.0.1:${PORT} -> ${RAW}`));
