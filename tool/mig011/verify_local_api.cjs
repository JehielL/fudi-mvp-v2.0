const fs = require('node:fs/promises');
const path = require('node:path');
const http = require('node:http');
const { createRequire } = require('node:module');
const deps = createRequire(process.env.PLAYWRIGHT_MODULE_ROOT || 'C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/qa.cjs');
const { chromium } = deps('playwright');
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const dist = path.join(root, 'build/web');
const out = path.join(root, 'docs/mig011/evidence/local-api');
const origin = 'http://127.0.0.1:5186';

async function main() {
  await fs.mkdir(out, { recursive: true });
  const server = http.createServer(async (req, res) => {
    try {
      const url = new URL(req.url, origin);
      let file = path.resolve(dist, '.' + decodeURIComponent(url.pathname));
      if (file !== dist && !file.startsWith(dist + path.sep)) { res.writeHead(403); res.end(); return; }
      if (!(await fs.stat(file).catch(() => null))?.isFile()) file = path.join(dist, 'index.html');
      const type = { '.js':'text/javascript', '.html':'text/html', '.json':'application/json', '.wasm':'application/wasm', '.ttf':'font/ttf', '.png':'image/png', '.svg':'image/svg+xml', '.jpg':'image/jpeg' }[path.extname(file)] || 'application/octet-stream';
      res.writeHead(200, {'Content-Type':type,'Cache-Control':'no-store'});
      res.end(await fs.readFile(file));
    } catch (e) { res.writeHead(500); res.end(String(e)); }
  });
  await new Promise(resolve => server.listen(5186, '127.0.0.1', resolve));
  let browser;
  const result = { productionBuild:true, api:[], externalBlocked:[], errors:[], rendererAssets:[] };
  try {
    browser = await chromium.launch({ executablePath:process.env.EDGE_EXECUTABLE || 'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe',headless:true });
    const context = await browser.newContext({viewport:{width:390,height:844},serviceWorkers:'block'});
    await context.route('**/*', async route => {
      const url = new URL(route.request().url());
      if (url.pathname.includes('/api/')) {
        result.api.push(url.href);
        if (url.origin !== 'http://localhost:8080') throw Error('API origin is not default localhost:8080: '+url.href);
        return route.fulfill({contentType:'application/json',body:'[]',headers:{'access-control-allow-origin':'*'}});
      }
      if (url.origin === origin) return route.continue();
      if (url.hostname === 'www.gstatic.com' && url.pathname.includes('flutter-canvaskit')) {
        const file = path.join(dist,'canvaskit',url.pathname.includes('/chromium/') ? 'chromium' : '',path.basename(url.pathname));
        result.rendererAssets.push({url:url.href,localFile:file});
        return route.fulfill({body:await fs.readFile(file),contentType:file.endsWith('.wasm')?'application/wasm':'text/javascript'});
      }
      result.externalBlocked.push(url.href); return route.abort('blockedbyclient');
    });
    const page = await context.newPage();
    page.on('pageerror', e=>result.errors.push(e.message));
    await page.goto(origin,{waitUntil:'domcontentloaded'});
    await page.waitForTimeout(7000);
    await page.screenshot({path:path.join(out,'production-local.png')});
    const stats = await sharp(path.join(out,'production-local.png')).stats();
    result.nonblank = stats.channels.some(c=>c.stdev>2);
    result.completed = result.api.length>0 && !result.errors.length && result.nonblank;
    if (!result.completed) throw Error('Local API smoke failed: '+JSON.stringify(result));
    process.stdout.write(JSON.stringify(result,null,2)+'\n');
  } finally {
    await fs.writeFile(path.join(out,'result.json'),JSON.stringify(result,null,2));
    if (browser) await browser.close();
    await new Promise(resolve=>server.close(resolve));
  }
}
main().catch(e=>{console.error(e);process.exitCode=1;});
