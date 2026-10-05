const fs = require('node:fs/promises');
const path = require('node:path');
const http = require('node:http');
const crypto = require('node:crypto');
const { createRequire } = require('node:module');
const deps = createRequire(process.env.PLAYWRIGHT_MODULE_ROOT || 'C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/qa.cjs');
const { chromium } = deps('playwright');
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const angular = process.env.ANGULAR_ROOT || 'C:/Users/forwo/Documents/bitefrontend/bitefrontend';
const reference = path.join(root, 'build/mig003b/angular-reference');
const dist = path.join(reference, 'audit-dist/browser');
const interactionsOnly = process.argv.includes('--interactions-only');
const out = path.join(root, `docs/mig011/evidence/${interactionsOnly ? 'interactions' : 'angular'}`);
const origin = 'http://localhost:5185';
const fixture = {
  id: 101, name: 'Mesa local', phone: '+34 910 000 000', restaurantType: 'SPAIN_FOOD',
  description: 'Cocina de temporada y una mesa para compartir. Una descripcion de prueba, no contenido publicado.',
  openingTime: '12:00:00', closingTime: '23:00:00', status: true,
  coverImageUrl: `${origin}/qa-photo-a`, imageUrls: [`${origin}/qa-photo-a`, `${origin}/qa-photo-b`, `${origin}/qa-photo-c`],
  city: 'Madrid', address: 'Calle local', number: '10', postalCode: '28001', countryCode: 'ES',
  timezone: 'Europe/Madrid', latitude: 40.4168, longitude: -3.7038, averageRating: 4.6,
  discount: null, group: { id: 1, name: 'Grupo local', slug: 'grupo-local' },
};
const menu = { id: 201, title: 'Carta de temporada', description: 'Platos del restaurante.', imgMenu: `${origin}/qa-photo-b`, active: true, restaurantType: 'SPAIN_FOOD', alergys: false, restaurantId: 101, likesCount: 2, liked: false };
const rating = { id: 301, score: 4, comment: 'Comentario local de prueba.', likesCount: 2, author: { id: 401, displayName: 'Comensal local', avatar: null }, restaurant: { id: 101, name: fixture.name, city: 'Madrid', coverImageUrl: fixture.coverImageUrl }, images: [{ id: 501, imagePath: `${origin}/qa-photo-c`, imageOrder: 0 }] };
const promotion = { id: 601, title: 'Menu de temporada', description: 'Oferta local de prueba.', type: 'SPECIAL_MENU', discountValue: null, fixedPrice: 25, startDate: '2026-01-01', endDate: '2027-01-01', active: true, featured: false, restaurant: fixture };
async function hashes(base, dir) {
  const result = {};
  async function visit(file) {
    if ((await fs.stat(file)).isDirectory()) {
      for (const child of await fs.readdir(file)) await visit(path.join(file, child));
    } else result[path.relative(base, file).replaceAll('\\', '/')] = crypto.createHash('sha256').update(await fs.readFile(file)).digest('hex');
  }
  await visit(path.join(base, dir));
  return result;
}
async function main() {
  await fs.mkdir(out, { recursive: true });
  const source = await hashes(angular, 'src');
  const copy = await hashes(reference, 'src');
  const mismatch = Object.keys(source).filter(p => source[p] !== copy[p]);
  const compiled = [];
  for (const file of (await fs.readdir(dist)).filter(f => f.endsWith('.map'))) {
    const map = JSON.parse(await fs.readFile(path.join(dist, file), 'utf8'));
    for (let i = 0; i < map.sources.length; i++) {
      const p = map.sources[i];
      if (p.startsWith('src/') && /restaurant-detail|public-restaurant-catalog|promotion.service|availability.service|restaurant-follow|app-shell/.test(p) && map.sourcesContent?.[i] != null) {
        const current = await fs.readFile(path.join(angular, p), 'utf8').catch(() => null);
        if (current != null) compiled.push({ path: p, matched: current === map.sourcesContent[i] });
      }
    }
  }
  await fs.writeFile(path.join(out, 'source-integrity.json'), JSON.stringify({ sourceFiles: Object.keys(source).length, mismatch, compiled }, null, 2));
  if (mismatch.length || compiled.some(p => !p.matched) || !compiled.some(p => p.path.includes('restaurant-detail.component.ts'))) throw Error('Reference does not prove current Detail source');
  const server = http.createServer(async (req, res) => {
    try {
      const url = new URL(req.url, origin);
      let file;
      if (url.pathname.startsWith('/qa-photo')) file = path.join(angular, 'src/assets/img/home-discovery-hero.jpg');
      else if (url.pathname === '/qa-broken') { res.writeHead(404); res.end(); return; }
      else {
        file = path.resolve(dist, '.' + decodeURIComponent(url.pathname));
        if (file !== dist && !file.startsWith(dist + path.sep)) { res.writeHead(403); res.end(); return; }
        if (!(await fs.stat(file).catch(() => null))?.isFile()) file = path.join(dist, 'index.html');
      }
      const type = { '.html': 'text/html', '.js': 'text/javascript', '.css': 'text/css', '.json': 'application/json', '.jpg': 'image/jpeg', '.svg': 'image/svg+xml', '.ttf': 'font/ttf' }[path.extname(file)] || 'application/octet-stream';
      res.writeHead(200, { 'Content-Type': type, 'Cache-Control': 'no-store' });
      res.end(await fs.readFile(file));
    } catch (e) { res.writeHead(500); res.end(String(e)); }
  });
  await new Promise(resolve => server.listen(5185, '127.0.0.1', resolve));
  const browser = await chromium.launch({ executablePath: process.env.EDGE_EXECUTABLE || 'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe', headless: true });
  const records = [], requests = [], errors = [], consoleMessages = [], failures = [], interactions = [];
  let completed = false;
  const configs = [320,390,768,1024,1200,1440].flatMap((width, i) => [1,2].map(scale => ({ width, height: [800,844,1024,768,800,900][i], scale, state: 'content', locale: 'es-ES' })));
  configs.push({ width:390, height:844, scale:1, state:'content', locale:'en-US' });
  for (const state of ['loading','partial','404','server','network','invalid-image','no-images','no-rating','invalid-id','missing-id']) configs.push({ width:390, height:844, scale:1, state, locale:'es-ES' });
  try {
    for (const config of interactionsOnly ? configs.filter(c => c.width === 390 && c.scale === 1 && c.state === 'content' && c.locale === 'es-ES') : configs) {
      const { width, height, scale, state, locale } = config;
      const context = await browser.newContext({ viewport:{width,height}, deviceScaleFactor:1, locale, reducedMotion:'no-preference', isMobile:width<768, hasTouch:width<768 });
      await context.addInitScript(() => { localStorage.setItem('fudi.market.selection', JSON.stringify({code:'ES'})); Math.random = () => .5; });
      let retried = false;
      await context.route('**/*', async route => {
        const url = new URL(route.request().url());
        if (url.pathname.includes('/api/')) {
          const p = url.pathname;
          const method = route.request().method();
          requests.push({ ...config, method, path:p, query:url.search, originalHost:url.host, fixture:true });
          const headers = { 'access-control-allow-origin':'*', 'access-control-allow-headers':'*', 'access-control-allow-methods':'*' };
          const json = (body, status=200) => route.fulfill({status,headers,contentType:'application/json',body:JSON.stringify(body)});
          if (method === 'OPTIONS') return json({},204);
          if (p.includes('/files/')) return route.fulfill({status:404,headers,body:''});
          if (p === '/api/v1/restaurants/101') {
            if (state === 'loading') await new Promise(r => setTimeout(r,5000));
            if (state === 'network') return route.abort('internetdisconnected');
            if (state === '404') return json({message:'LOCAL_FIXTURE_NOT_FOUND'},404);
            if (state === 'server' && !retried) return json({message:'LOCAL_FIXTURE_SERVER'},500);
            let body = {...fixture};
            if (state === 'partial') body = {...body,phone:null,description:null,restaurantType:null,openingTime:null,closingTime:null,group:null};
            if (state === 'no-rating') body.averageRating = null;
            if (state === 'no-images') body = {...body,coverImageUrl:null,imageUrls:[]};
            if (state === 'invalid-image') body = {...body,coverImageUrl:`${origin}/qa-broken`,imageUrls:[]};
            return json(body);
          }
          if (/\/restaurants\/101\/menus$/.test(p)) return state === 'partial' ? json({message:'LOCAL_MENU_ERROR'},500) : json([menu]);
          if (/\/restaurants\/101\/ratings$/.test(p)) return state === 'partial' ? json({message:'LOCAL_RATING_ERROR'},500) : json([rating]);
          if (p.endsWith('/status/open-now')) return json(state === 'partial' ? null : {restaurantId:101,isOpenNow:true,reason:null,statusSource:'GENERAL_HOURS',restaurantTimeZone:'Europe/Madrid'});
          if (/\/restaurant-follows\/count\/101$/.test(p)) return json({count:7});
          if (/promotions/.test(p)) return json(state === 'partial' ? [] : [promotion]);
          if (p === '/api/v1/restaurants') return json([fixture,...[102,103,104].map(id=>({...fixture,id,name:`Mesa local ${id}`}))]);
          if (/\/auth\//.test(p)) return json({},401);
          return json([]);
        }
        if (url.origin === origin) return route.continue();
        // Reference fonts/media are local; no external service is contacted.
        return route.abort('blockedbyclient');
      });
      const page = await context.newPage();
      page.on('pageerror', e => errors.push({...config,message:e.message}));
      page.on('console', msg => { if (['warning','error'].includes(msg.type())) consoleMessages.push({...config,type:msg.type(),message:msg.text()}); });
      page.on('requestfailed', req => failures.push({...config,url:req.url(),error:req.failure()?.errorText}));
      const routePath = state === 'invalid-id' ? '/restaurant/not-a-number/detail' : state === 'missing-id' ? '/restaurant/detail' : '/restaurant/101/detail';
      await page.goto(origin+routePath,{waitUntil:'domcontentloaded'});
      await page.waitForTimeout(state === 'loading' ? 700 : 2000);
      if (scale === 2) await page.addStyleTag({content:'html { font-size:32px !important; }'});
      await page.evaluate(() => document.fonts.ready);
      const prefix = `${width}x${height}-${locale}-${scale}x-${state}`;
      async function capture(region, selector) {
        if (selector) {
          const el = page.locator(selector).first();
          if (!(await el.count()) || !(await el.isVisible())) return;
          await el.evaluate(e=>window.scrollTo(0,e.getBoundingClientRect().top+scrollY-100));
        }
        await page.waitForTimeout(450);
        const file = `${prefix}-${region}.png`;
        await page.screenshot({path:path.join(out,file)});
        const stats = await sharp(path.join(out,file)).stats();
        records.push({...config,region,file,nonblank:stats.channels.some(c=>c.stdev>2),url:page.url(),geometry:await page.locator('.restaurant-hero-section,.restaurant-hero-section > .container,.carousel-container,.carousel-image.active,.restaurant-info-card,.restaurant-title,.restaurant-header-actions,.restaurant-details-grid,.detail-item,.description-text,.restaurant-actions,.action-btn,.thumbnails-grid,.thumbnail-item,.promotions-section,.menus-section,.menu-card,.recommendations-section,.restaurant-card,.ratings-section,.ratings-two-columns,.ratings-list,.detail-loading-shell,.detail-error-shell').evaluateAll(es=>es.map(e=>{const s=getComputedStyle(e);return {selector:e.className,text:e.textContent.trim().replace(/\s+/g,' ').slice(0,100),rect:e.getBoundingClientRect().toJSON(),font:s.font,padding:s.padding,margin:s.margin,gap:s.gap,ratio:s.aspectRatio,position:s.position,top:s.top,fit:s.objectFit,crop:s.objectPosition,background:s.backgroundImage,transition:s.transition,animation:s.animation,overflow:s.overflow};})),document:await page.evaluate(()=>({scrollY,scrollWidth:document.documentElement.scrollWidth,innerWidth,lang:document.documentElement.lang,headings:[...document.querySelectorAll('h1,h2,h3,h4,h5')].map(e=>({tag:e.tagName,text:e.textContent.trim()})),links:[...document.querySelectorAll('.restaurant-actions a')].map(e=>({text:e.textContent.trim(),href:e.getAttribute('href')}))}))});
      }
      await capture('top');
      if (state === 'content') {
        for (const [region, selector] of [['promotions','.promotions-section'],['menus','.menus-section'],['recommendations','.recommendations-section'],['ratings','.ratings-section']]) await capture(region,selector);
        if (width === 390 && scale === 1 && locale === 'es-ES') {
          await page.evaluate(()=>window.scrollTo(0,0));
          const counter = () => page.locator('.image-counter').innerText();
          const sequence = [await counter()];
          await page.getByRole('button',{name:'Siguiente imagen',exact:true}).click(); sequence.push(await counter());
          await page.getByRole('button',{name:'Imagen anterior',exact:true}).click(); sequence.push(await counter());
          await page.getByRole('button',{name:'Ir a imagen 3',exact:true}).click(); sequence.push(await counter());
          await page.keyboard.press('ArrowRight'); sequence.push(await counter());
          await page.keyboard.press('Escape'); sequence.push(await counter());
          await page.locator('.carousel-container').evaluate(el => {
            for (const [type, x] of [['touchstart',200],['touchend',100]]) {
              const touch = new Touch({identifier:0,target:el,screenX:x,clientX:x,clientY:200});
              el.dispatchEvent(new TouchEvent(type,{bubbles:true,changedTouches:[touch]}));
            }
          }); sequence.push(await counter());
          await page.locator('.carousel-image.active').click();
          interactions.push({kind:'gallery',sequence,lightboxCount:await page.locator('.image-lightbox').count(),buttons:await page.locator('.carousel-btn,.indicator-dot,.thumbnail-item').evaluateAll(es=>es.map(e=>({label:e.getAttribute('aria-label'),pressed:e.getAttribute('aria-pressed'),rect:e.getBoundingClientRect().toJSON()})))});
          const card = page.locator('.menu-card').first();
          await card.focus(); await page.keyboard.press('Enter');
          interactions.push({kind:'menu-keyboard-enter',url:page.url(),focused:await page.evaluate(()=>document.activeElement?.className)});
          const photo = page.locator('.rating-card .gallery-card').first();
          await photo.click(); await page.waitForTimeout(350);
          const modalState = () => page.evaluate(() => ({scrollY,bodyOverflow:document.body.style.overflow,active:document.activeElement?.tagName,elements:[...document.querySelectorAll('.image-lightbox,.lightbox-content,.lightbox-close')].map(e=>({class:e.className,role:e.getAttribute('role'),label:e.getAttribute('aria-label'),rect:e.getBoundingClientRect().toJSON(),position:getComputedStyle(e).position})),ancestors:[...document.querySelectorAll('app-shell main,main')].map(e=>({class:e.className,contain:getComputedStyle(e).contain,rect:e.getBoundingClientRect().toJSON()}))}));
          const modalBefore = await modalState();
          await page.screenshot({path:path.join(out,`${prefix}-review-lightbox.png`)});
          await page.keyboard.press('Escape');
          const afterEscape = await page.locator('.image-lightbox').count();
          await page.locator('.lightbox-close').dispatchEvent('click');
          interactions.push({kind:'review-lightbox',before:modalBefore,afterEscape,afterClose:await modalState(),closeMethod:'DOM dispatch: isolate offscreen containing-block defect, not physical tap'});
          if (interactionsOnly) {
            await page.evaluate(()=>window.scrollTo(0,0));
            await page.getByRole('button',{name:'Siguiente imagen',exact:true}).click();
            const samples=[];
            for (const delay of [0,100,200,300]) {
              await page.waitForTimeout(delay);
              samples.push({delay,slides:await page.locator('.carousel-image').evaluateAll(es=>es.map(e=>({active:e.classList.contains('active'),opacity:getComputedStyle(e).opacity,transition:getComputedStyle(e).transition,fit:getComputedStyle(e).objectFit,crop:getComputedStyle(e).objectPosition})))});
            }
            const beforePoll=requests.filter(r=>r.path.endsWith('/status/open-now')).length;
            await page.waitForTimeout(61000);
            const afterPoll=requests.filter(r=>r.path.endsWith('/status/open-now')).length;
            interactions.push({kind:'gallery-fade-and-polling',samples,beforePoll,afterPoll,intervalDeclaredMs:60000});
          }
          await page.getByRole('link',{name:'Reservar Mesa',exact:true}).click();
          await page.waitForTimeout(800);
          interactions.push({kind:'booking-anonymous',url:page.url()});
          await page.goto(origin+'/restaurant-list?name=Mesa',{waitUntil:'domcontentloaded'});
          await page.waitForTimeout(1200);
          await page.evaluate(()=>window.scrollTo(0,240));
          const before={url:page.url(),scrollY:await page.evaluate(()=>scrollY)};
          const link=page.locator('a[href="/restaurant/101/detail"]').first();
          if(await link.count()) {
            await link.click(); await page.waitForTimeout(900); await page.goBack(); await page.waitForTimeout(900);
            interactions.push({kind:'listing-back',before,after:{url:page.url(),scrollY:await page.evaluate(()=>scrollY)}});
          } else interactions.push({kind:'listing-back',before,notObserved:'No canonical anchor; inspect route source'});
        }
      }
      if (state === 'server') {
        retried=true;
        await page.getByRole('button',{name:'Reintentar',exact:true}).click();
        await page.waitForTimeout(900); await capture('after-retry');
      }
      if (['partial','no-images','no-rating','invalid-image'].includes(state)) await capture('identity','.restaurant-info-card');
      await context.close();
      process.stdout.write(`${prefix}\n`);
    }
    completed=true;
  } finally {
    for (const [file,data] of Object.entries({'measurements.json':records,'requests.json':requests,'errors.json':errors,'console.json':consoleMessages,'network-errors.json':failures,'interactions.json':interactions,'run.json':{completed,capturedAt:new Date().toISOString(),browser:await browser.version(),origin,configs:interactionsOnly ? 1 : configs.length,fixture:'public anonymous, local, no JWT/backend traffic',textScale:'Angular root rem16/32px, DPR1; not Flutter TextScaler',externalServices:'all aborted'}})) await fs.writeFile(path.join(out,file),JSON.stringify(data,null,2));
    await browser.close(); await new Promise(resolve=>server.close(resolve));
  }
}
main().catch(e=>{console.error(e);process.exitCode=1;});
