const fs = require('node:fs/promises');
const path = require('node:path');
const http = require('node:http');
const crypto = require('node:crypto');
const { createRequire } = require('node:module');
const deps = createRequire('C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/qa.cjs');
const { chromium } = deps('playwright');
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const legacy = 'C:/Users/forwo/Documents/bitefrontend/bitefrontend';
const mode = process.argv[2] || 'angular';
const motionOnly = mode === 'flutter' && process.argv.includes('--motion-only');
const critique = process.argv.includes('--critique');
const evidenceRoot = path.join(root, 'docs/mig010a/evidence', critique ? 'critique' : '');
const surface = critique && mode === 'flutter' ? (process.argv.includes('--before') ? 'flutter-before' : 'flutter-after') : mode;
const out = path.join(evidenceRoot, motionOnly ? 'motion' : surface);
const protectedPaths = ['lib/features/home/data', 'lib/features/home/home_providers.dart', 'lib/core/network', 'packages/fudi_api', 'contracts'];
if (critique) protectedPaths.push('lib/design_system', 'lib/features/shell', 'lib/core/market', 'lib/core/navigation', 'assets', 'pubspec.yaml', 'pubspec.lock');
async function hashes(base, paths) {
  const result = {};
  async function visit(file) {
    const stat = await fs.stat(file).catch(() => null);
    if (!stat) return;
    if (stat.isDirectory()) {
      for (const child of await fs.readdir(file)) await visit(path.join(file, child));
    } else result[path.relative(base, file).replaceAll('\\', '/')] = crypto.createHash('sha256').update(await fs.readFile(file)).digest('hex');
  }
  for (const p of paths) await visit(path.join(base, p));
  return result;
}
const restaurants = Array.from({ length: 6 }, (_, i) => ({
  id: 101 + i, name: ['Mesa local', 'Patio verde', 'Casa del puerto', 'El encuentro', 'La sobremesa', 'Cocina abierta'][i],
  description: 'Cocina de temporada y una mesa para compartir.', restaurantType: 'SPAIN_FOOD', countryCode: 'ES', country: 'ES',
  city: 'Madrid', address: 'Calle local 10', rating: 4.6, averageRating: 4.6, coverImageUrl: 'http://localhost:5183/qa-image', imageUrls: ['http://localhost:5183/qa-image'],
}));
const articles = Array.from({ length: 3 }, (_, i) => ({
  id: 201 + i, slug: `seleccion-local-${i}`, title: ['Una sobremesa sin prisa', 'Tres mesas para descubrir', 'El fin de semana empieza aqui'][i],
  category: 'BRUNCH', countryCode: 'ES', city: 'Madrid', featured: true, restaurantsCount: 3, commentsCount: 0,
  subtitle: 'Ideas para descubrir donde comer.', excerpt: 'Ideas para descubrir donde comer.', cardImageUrl: 'http://localhost:5183/qa-image', heroImageUrl: 'http://localhost:5183/qa-image',
}));
const promotions = restaurants.slice(0, 4).map((r, i) => ({ id: 301 + i, title: `Menu de temporada ${i + 1}`, active: true, status: 'ACTIVE', restaurantId: r.id, restaurant: r, type: 'SPECIAL_MENU', countryCode: 'ES' }));
async function main() {
  await fs.mkdir(out, { recursive: true });
  if (mode === 'angular') {
    const source = await hashes(legacy, ['src']);
    const copy = await hashes(path.join(root, 'build/mig003b/angular-reference'), ['src']);
    const mismatches = Object.keys(source).filter(p => source[p] !== copy[p]);
    const compiled = [];
    const bundleDir = path.join(root,'build/mig003b/angular-reference/audit-dist/browser');
    for (const file of (await fs.readdir(bundleDir)).filter(f=>f.endsWith('.map'))) {
      const map = JSON.parse(await fs.readFile(path.join(bundleDir,file)));
      for (let i=0;i<map.sources.length;i++) {
        const s = map.sources[i];
        if (s.startsWith('src/') && /(features\/home|layout\/footer)/.test(s) && map.sourcesContent?.[i]!=null) {
          const actual = await fs.readFile(path.join(legacy,s),'utf8').catch(()=>null);
          if (actual!=null) compiled.push({source:s,matched:actual===map.sourcesContent[i]});
        }
      }
    }
    await fs.writeFile(path.join(out, 'source-integrity.json'), JSON.stringify({ files: Object.keys(source).length, mismatches,compiled }, null, 2));
    if (mismatches.length) throw Error('Angular reference differs from source');
    if (compiled.some(c=>!c.matched)) throw Error('Angular bundle differs from source');
    const protectedFile=path.join(out,'protected-before.json');
    const current=await hashes(root,protectedPaths);
    const original=await fs.readFile(protectedFile,'utf8').then(JSON.parse).catch(()=>null);
    if (original) {
      const changed=[...new Set([...Object.keys(original),...Object.keys(current)])].filter(p=>original[p]!==current[p]);
      if (changed.length) throw Error('Protected baseline changed: '+changed.join(', '));
    } else await fs.writeFile(protectedFile,JSON.stringify(current,null,2));
  } else {
    const before = JSON.parse(await fs.readFile(path.join(evidenceRoot, 'angular/protected-before.json')));
    const after = await hashes(root, protectedPaths);
    const changed = [...new Set([...Object.keys(before), ...Object.keys(after)])].filter(p => before[p] !== after[p]);
    await fs.writeFile(path.join(out, 'protected-after.json'), JSON.stringify({ files: Object.keys(after).length, changed }, null, 2));
    if (changed.length) throw Error('Protected code changed');
  }
  const dir = path.join(root, mode === 'angular' ? 'build/mig003b/angular-reference/audit-dist/browser' : 'build/web');
  const server = http.createServer(async (req, res) => {
    try {
      const pathname = decodeURIComponent(new URL(req.url, 'http://localhost:5183').pathname);
      let file = path.resolve(dir, '.' + pathname);
      if (file !== dir && !file.startsWith(dir + path.sep)) { res.writeHead(403); res.end(); return; }
      if (!(await fs.stat(file).catch(() => null))?.isFile()) file = path.join(dir, 'index.html');
      const types = { '.html': 'text/html', '.js': 'text/javascript', '.css': 'text/css', '.json': 'application/json', '.wasm': 'application/wasm', '.png': 'image/png', '.jpg': 'image/jpeg', '.ttf': 'font/ttf', '.woff2': 'font/woff2' };
      res.writeHead(200, { 'Content-Type': types[path.extname(file)] || 'application/octet-stream', 'Cache-Control': 'no-store' });
      res.end(await fs.readFile(file));
    } catch (e) { res.writeHead(500); res.end(String(e)); }
  });
  await new Promise(resolve => server.listen(5183, '127.0.0.1', resolve));
  const browser = await chromium.launch({ executablePath: 'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe', headless: true });
  const darkOnly = process.argv.includes('--dark-only');
  const records = darkOnly ? JSON.parse(await fs.readFile(path.join(out,'measurements.json'))).filter(r=>r.scheme!=='dark') : [];
  const requests = darkOnly ? JSON.parse(await fs.readFile(path.join(out,'requests.json'))) : [];
  const errors = darkOnly ? JSON.parse(await fs.readFile(path.join(out,'errors.json'))) : [];
  const consoleMessages = [];
  const networkErrors = [];
  const allowedHosts = ['localhost','127.0.0.1','fonts.googleapis.com','fonts.gstatic.com','www.gstatic.com','images.unsplash.com','images.pexels.com'];
  let completed = false;
  try {
    const configs = [[320,800],[390,844],[768,1024],[1024,768],[1200,800],[1440,900]].map(([width,height]) => ({width,height,state:'data'}));
    for (const [width,height] of [[390,844],[1440,900]]) configs.push({width,height,state:'data',scheme:'dark'});
    if (mode==='flutter') configs.push({width:390,height:844,state:'data',locale:'en-GB'});
    for (const state of ['loading','empty','error','partial']) configs.push({width:390,height:844,state});
    const selected = motionOnly ? configs.filter(c=>c.state==='data'&&!c.scheme&&!c.locale&&[390,1440].includes(c.width)) : darkOnly ? configs.filter(c=>c.scheme==='dark') : configs;
    for (const {width, height, state, scheme='light',locale='es-ES'} of selected) {
      const context = await browser.newContext({ viewport: { width, height }, locale, colorScheme:scheme, reducedMotion: motionOnly ? 'no-preference' : 'reduce', serviceWorkers: 'block' });
      const page = await context.newPage();
      page.setDefaultTimeout(7000);
      page.on('pageerror', e => errors.push({ width, message: e.message }));
      page.on('console', m => {
        if (['error','warning'].includes(m.type())) consoleMessages.push({width,state,scheme,locale,type:m.type(),message:m.text(),location:m.location(),intentionalFixture:state==='error'||state==='partial'});
      });
      page.on('requestfailed', r => networkErrors.push({width,state,url:r.url(),error:r.failure()?.errorText,blockedReference:!allowedHosts.includes(new URL(r.url()).hostname)&&!new URL(r.url()).pathname.includes('/api/')}));
      await page.route('**/*', async route => {
        const u = new URL(route.request().url());
        if (u.pathname.includes('/api/')) {
          requests.push({ width, state, method: route.request().method(), path: u.pathname, query: u.search, fixture: true });
          const headers = {'Access-Control-Allow-Origin':'*','Access-Control-Allow-Methods':'GET,OPTIONS','Access-Control-Allow-Headers':'*'};
          if (route.request().method()==='OPTIONS') { await route.fulfill({status:204,headers});return; }
          if (state === 'loading') await new Promise(resolve => setTimeout(resolve,15000));
          if (state === 'error' || (state === 'partial' && u.pathname.includes('recommendations'))) {
            await route.fulfill({status:500,headers,contentType:'application/json',body:'{"message":"PRIVATE_FIXTURE"}'}); return;
          }
          let body = [];
          if (state !== 'empty') {
            if (u.pathname.includes('restaurants')) body = restaurants;
            if (u.pathname.includes('recommendations')) body = articles;
            if (u.pathname.includes('promotions')) body = promotions;
          }
          await route.fulfill({ headers, contentType: 'application/json', body: JSON.stringify(body) }); return;
        }
        if (u.pathname === '/qa-image') { await route.fulfill({ contentType: 'image/jpeg', body: await fs.readFile(path.join(root, 'assets/catalog/editorial-table.jpg')) }); return; }
        if (allowedHosts.includes(u.hostname)) { await route.continue(); return; }
        await route.abort();
      });
      await page.goto('http://localhost:5183/' + (mode === 'angular' ? 'home' : ''), { waitUntil: 'domcontentloaded' });
      if (mode === 'angular') await page.locator('.hero-title').waitFor();
      else await page.getByRole('button', {name:locale.startsWith('en')?'Home':'Inicio',exact:true}).first().waitFor();
      await page.waitForTimeout(motionOnly ? 600 : mode === 'angular' ? 1800 : 6500);
      const prefix = `${width}x${height}${scheme==='dark'?'-dark':''}${locale.startsWith('en')?'-en':''}${state === 'data' ? '' : '-'+state}`;
      async function capture(region) {
        const file = `${prefix}-${region}.png`;
        await page.screenshot({path:path.join(out,file)});
        const stats = await sharp(path.join(out,file)).stats();
        if (stats.channels.every(c=>c.stdev<2)) throw Error('Blank screenshot: '+file);
        const semantics = await page.locator('[role=button],[role=heading],input').evaluateAll(es=>es.map(e=>({
          role:e.getAttribute('role'),label:e.getAttribute('aria-label')||e.textContent,rect:e.getBoundingClientRect().toJSON(),
        })));
        records.push({width,height,state,scheme,locale,region,file,nonblank:true,semantics});
        if (critique && mode==='angular') records.push({width,height,state,scheme,locale,region,geometry:await page.locator('.hero-section,.hero-title,.hero-subtitle,.quick-link,.home-explore-section,.home-inline-recommendations,.restaurant-card-link,.recommendation-card,.home-story-banner,.parallax-title,.parallax-subtitle,.home-section--promos,.promo-card,.glass-steps-shell,.incluir-restaurante,.founding-home-cta,.footer-custom').evaluateAll(es=>es.map(e=>{const s=getComputedStyle(e);return {selector:e.className,text:e.textContent.trim().replace(/\s+/g,' ').slice(0,80),rect:e.getBoundingClientRect().toJSON(),font:s.font,padding:s.padding,margin:s.margin,ratio:s.aspectRatio};}))});
      }
      async function align(target) {
        for (let i=0;i<3;i++) {
          const r=await target.boundingBox();
          if (!r || Math.abs(r.y-120)<2) return;
          await page.mouse.move(width/2,height/2);
          await page.mouse.wheel(0,r.y-120);
          await page.waitForTimeout(250);
        }
      }
      async function seek(text) {
        if (locale.startsWith('en')) text = ({'Restaurantes para explorar':'Restaurants to explore','Selecciones FÜDI':'FÜDI selections','Tu próxima experiencia gastronómica te espera':'Your next dining experience awaits','Promociones especiales':'Special offers','Así de fácil es reservar':'Booking is this easy'})[text]||text;
        const target = page.getByRole('heading',{name:text,exact:true}).or(page.getByText(text,{exact:true})).first();
        await page.mouse.move(10,height/2);
        const trace=[];
        for (let i=0;i<40;i++) {
          const r = await target.boundingBox().catch(()=>null);
          trace.push(r ? {y:r.y,height:r.height} : null);
          if (r && r.y >= 80 && r.y < height-100) {
            await page.mouse.wheel(0,r.y-120); await page.waitForTimeout(200); return;
          }
          await page.mouse.wheel(0,r ? Math.max(-height*.7,Math.min(height*.7,r.y-120)) : height*.7);
          await page.waitForTimeout(300);
        }
        await page.screenshot({path:path.join(out,`${prefix}-seek-failed.png`)});
        console.error('seek trace',text,trace,'headings',await page.locator('[role=heading]').evaluateAll(es=>es.map(e=>({label:e.getAttribute('aria-label')||e.textContent,rect:e.getBoundingClientRect().toJSON()}))));
        throw Error('Cannot reach '+text);
      }
      await capture('top');
      if (motionOnly) {
        await page.waitForTimeout(5200);
        await capture('hero-transition');
        await page.waitForTimeout(2700);
        await capture('hero-rotated');
        const frames = await Promise.all(['top','hero-transition','hero-rotated'].map(region=>fs.readFile(path.join(out,`${prefix}-${region}.png`))));
        const changed = !frames[0].equals(frames[2]);
        records.push({width,height,kind:'motion-smoke',reducedMotion:false,framesDiffer:changed,apiRequests:requests.filter(r=>r.width===width&&r.method==='GET').length});
        if (!changed) throw Error('Hero did not change in browser: '+width);
        await context.close();
        console.log(`${mode} ${width}x${height} motion`);
        continue;
      }
      const measurement = await page.evaluate(() => {
        const selectors = ['.hero-section','.hero-content','.hero-title','.hero-subtitle','app-home-search input','.quick-links','.quick-link','.home-explore-grid','app-compact-restaurant-card','.recommendation-card','.home-story-banner','.promo-card','.steps-shell','.footer-custom'];
        return { documentWidth: document.documentElement.scrollWidth, viewport: innerWidth, entries: selectors.flatMap(selector => Array.from(document.querySelectorAll(selector)).map(e => { const r = e.getBoundingClientRect(), s = getComputedStyle(e); return { selector, text: e.textContent.trim().replace(/\s+/g,' ').slice(0,140), rect: {x:r.x,y:r.y,width:r.width,height:r.height}, font:s.font, padding:s.padding, gap:s.gap, radius:s.borderRadius, transition:s.transition, image:s.backgroundImage }; })) };
      });
      records.push({ width, height, state, measurement });
      if (state === 'data') {
        const input = mode === 'angular' ? page.locator('input').first() : page.getByRole('textbox');
        console.log(mode, width, 'inputs', await page.locator('input').evaluateAll(es=>es.map(e=>({id:e.id,placeholder:e.placeholder,type:e.type}))), 'url',page.url());
        await input.fill('mesa'); await page.waitForTimeout(350);
        await capture('search');
        await page.keyboard.press('Escape');
        const afterEscape = page.url();
        await input.fill('');
        records.push({width,height,state,kind:'search-close',afterEscape,afterClear:page.url()});
        if (mode === 'angular') {
          await page.goto('http://localhost:5183/home',{waitUntil:'domcontentloaded'});
          await page.locator('.home-explore-section').waitFor();
          await page.waitForTimeout(1800);
        }
      }
      if (mode === 'angular') {
        await page.locator('.home-explore-section').scrollIntoViewIfNeeded();
        await page.waitForTimeout(1800);
        if (critique) await align(page.locator('.home-explore-section h2').first());
        await capture('restaurants');
        for (const [region,selector] of [['selections','.home-inline-recommendations'],['story','.home-story-banner'],['promotions','.home-section--promos'],['guest','.glass-steps-shell'],['footer','.footer-custom']]) {
          if (region==='guest' && state==='data') {
            const placeholder=page.locator('.home-defer-placeholder').last();
            if (await placeholder.count()) { await placeholder.scrollIntoViewIfNeeded(); await page.waitForTimeout(2000); }
          }
          const target = page.locator(selector).first();
          if (!await target.count()) continue;
          await target.scrollIntoViewIfNeeded(); await page.waitForTimeout(1800);
          if (critique && region!=='footer') {
            const heading=target.locator('h2,h3').first();
            if (await heading.count()) await align(heading);
          }
          await capture(region);
        }
      } else {
        await seek('Restaurantes para explorar'); await capture('restaurants');
        if (state === 'data' || state === 'partial') {
          await seek('Selecciones FÜDI'); await capture('selections');
          await seek('Tu próxima experiencia gastronómica te espera'); await capture('story');
          await seek('Promociones especiales'); await capture('promotions');
          await seek('Así de fácil es reservar'); await capture('guest');
          await seek('Legal'); await capture('footer');
        }
      }
      await fs.writeFile(path.join(out, 'measurements.json'), JSON.stringify(records,null,2));
      await context.close();
      console.log(`${mode} ${width}x${height} ${state}`);
    }
    completed = true;
    await fs.writeFile(path.join(out, 'measurements.json'), JSON.stringify(records, null, 2));
    await fs.writeFile(path.join(out, 'requests.json'), JSON.stringify(requests, null, 2));
    await fs.writeFile(path.join(out, 'errors.json'), JSON.stringify(errors, null, 2));
    await fs.writeFile(path.join(out, 'console.json'), JSON.stringify(consoleMessages, null, 2));
    await fs.writeFile(path.join(out, 'network-errors.json'), JSON.stringify(networkErrors, null, 2));
    await fs.writeFile(path.join(out, 'run.json'), JSON.stringify({surface,capturedAt:new Date().toISOString(),browser:'isolated Edge / Playwright',textScale:1,reducedMotion:!motionOnly,fixtures:'6 restaurants / 3 recommendations / 4 promotion groups; no auth',apiIntercepted:true},null,2));
  } finally {
    await fs.writeFile(path.join(out, 'measurements.json'), JSON.stringify(records,null,2));
    await fs.writeFile(path.join(out, 'requests.json'), JSON.stringify(requests,null,2));
    await fs.writeFile(path.join(out, 'errors.json'), JSON.stringify(errors,null,2));
    await fs.writeFile(path.join(out, 'console.json'), JSON.stringify(consoleMessages,null,2));
    await fs.writeFile(path.join(out, 'network-errors.json'), JSON.stringify(networkErrors,null,2));
    await fs.writeFile(path.join(out, 'run.json'), JSON.stringify({surface,completed,capturedAt:new Date().toISOString(),browser:'isolated Edge / Playwright',textScale:1,reducedMotion:!motionOnly,fixtures:'6 restaurants / 3 recommendations / 4 promotion groups; no auth',apiIntercepted:true},null,2));
    await browser.close(); await new Promise(resolve => server.close(resolve));
  }
}
main().catch(e => { console.error(e); process.exitCode = 1; });
