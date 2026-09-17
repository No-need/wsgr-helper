# Draws the transcribed routes on top of the wiki map images so the data can be checked by eye.
# Arrows carry only the route label; the full transcription is listed in a legend under the map.
# Usage: python scripts/overlay.py [map ids...]   -> raw/overlay/<id>.jpg
import json, math, os, sys
from PIL import Image, ImageDraw, ImageFont

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, 'raw', 'overlay')
os.makedirs(OUT, exist_ok=True)
FONT = ImageFont.truetype(r'C:\Windows\Fonts\msjh.ttc', 20)
LEGEND = ImageFont.truetype(r'C:\Windows\Fonts\msjh.ttc', 24)
CYAN, ORANGE, GREY = (0, 255, 255, 235), (255, 140, 0, 235), (190, 190, 190, 235)

ids = sys.argv[1:] or [f[:-5] for f in os.listdir(os.path.join(ROOT, 'src', 'data', 'routes'))]
for mid in ids:
    data = json.load(open(os.path.join(ROOT, 'src', 'data', 'routes', f'{mid}.json'), encoding='utf-8'))
    src_im = Image.open(os.path.join(ROOT, 'public', 'maps', f'NewMap_{mid}.jpg')).convert('RGB')

    lines = []
    for src, routes in data['routes'].items():
        if len(routes) == 1 and not routes[0].get('cond') and not routes[0].get('requires') and not routes[0].get('closedBy'):
            continue
        parts = []
        for r in routes:
            extra = (' [開:' + r['requires'] + ']' if r.get('requires') else '') + (' [關:' + r['closedBy'] + ']' if r.get('closedBy') else '')
            parts.append(f"{r.get('label', src + '?')}→{r['to']} {r.get('cond', '')}{'★' * r.get('stars', 0)}{extra}")
        lines.append('   '.join(parts))
    singles = [f"{s}→{r[0]['to']}" for s, r in data['routes'].items() if len(r) == 1 and not r[0].get('cond') and not r[0].get('requires') and not r[0].get('closedBy')]
    lines.append('單一路線: ' + '  '.join(singles))
    for f in data.get('flags', []):
        lines.append(f"flag {f['id']}: {f['text']} 關{f.get('close', [])} 開{f.get('open', [])}" + (f" auto{f['auto']}" if f.get('auto') else ''))

    im = Image.new('RGB', (1520, 850 + 34 * len(lines) + 16), (16, 24, 34))
    im.paste(src_im, (0, 0))
    d = ImageDraw.Draw(im, 'RGBA')
    for src, routes in data['routes'].items():
        for r in routes:
            a, b = data['nodes'][src], data['nodes'][r['to']]
            color = ORANGE if r.get('closedBy') else GREY if r.get('requires') else CYAN
            ang = math.atan2(b['y'] - a['y'], b['x'] - a['x'])
            # stop short of the node circles so the arrow heads stay visible
            x1, y1 = a['x'] + 40 * math.cos(ang), a['y'] + 40 * math.sin(ang)
            x2, y2 = b['x'] - 40 * math.cos(ang), b['y'] - 40 * math.sin(ang)
            d.line([x1, y1, x2, y2], fill=color, width=3)
            for s in (-0.45, 0.45):
                d.line([x2, y2, x2 - 24 * math.cos(ang + s), y2 - 24 * math.sin(ang + s)], fill=color, width=3)
            if r.get('label'):
                tx, ty = x1 + (x2 - x1) * 0.72, y1 + (y2 - y1) * 0.72
                box = d.textbbox((tx, ty), r['label'], font=FONT, anchor='mm')
                d.rectangle([box[0] - 3, box[1] - 2, box[2] + 3, box[3] + 2], fill=(0, 0, 0, 215))
                d.text((tx, ty), r['label'], font=FONT, fill=color, anchor='mm')
    for p in data['nodes'].values():
        d.ellipse([p['x'] - 7, p['y'] - 7, p['x'] + 7, p['y'] + 7], outline=(255, 0, 255, 255), width=3)
    for i, line in enumerate(lines):
        # the legend font has no ≥/≤ glyphs
        d.text((12, 858 + 34 * i), line.replace('≥', '>=').replace('≤', '<='), font=LEGEND, fill=(235, 235, 235))
    im.save(os.path.join(OUT, f'{mid}.jpg'), quality=82)
print('done', len(ids))
