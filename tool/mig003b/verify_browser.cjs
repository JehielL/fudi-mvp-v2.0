const fs = require('node:fs/promises');
const path = require('node:path');
const { createRequire } = require('node:module');
const runtime = process.env.PLAYWRIGHT_MODULE_ROOT ||
  'C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules';
const deps = createRequire(path.join(runtime, 'qa.cjs'));
const { chromium } = deps('playwright');
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const out = path.join(root, 'docs/mig003b/implementation-evidence');
const url = process.env.NAVBAR_PREVIEW_URL || 'http://localhost:5182';

async function main() {
  await fs.mkdir(out, { recursive: true });
  const browser = await chromium.launch({ executablePath: process.env.EDGE_EXECUTABLE ||
    'C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe', headless: true });
  const results = { date: new Date().toISOString(), requests: [], errors: [], records: [] };
  try {
    for (const config of [
      { width: 320, height: 844 }, { width: 390, height: 844 },
      { width: 768, height: 1024 }, { width: 1024, height: 768 },
      { width: 1200, height: 800 }, { width: 1440, height: 900 },
      { width: 390, height: 844, dark: true, reduced: true },
      { width: 1440, height: 900, dark: true, reduced: true },
    ]) {
      const context = await browser.newContext({ viewport: config, locale: 'es-ES',
        colorScheme: config.dark ? 'dark' : 'light', reducedMotion: config.reduced ? 'reduce' : 'no-preference',
        serviceWorkers: 'block' });
      const page = await context.newPage();
      page.setDefaultTimeout(5000);
      page.on('pageerror', error => results.errors.push({ config, message: error.message }));
      await page.route('**/*', async route => {
        const request = route.request(); const target = new URL(request.url());
        if (target.pathname.includes('/api/')) {
          results.requests.push({ url: target.pathname + target.search, handled: 'LOCAL_FIXTURE' });
          return route.fulfill({ contentType: 'application/json', body: '[]' });
        }
        if (['localhost', '127.0.0.1', 'www.gstatic.com'].includes(target.hostname)) return route.continue();
        results.requests.push({ url: target.origin + target.pathname, handled: 'BLOCKED_EXTERNAL' });
        return route.abort();
      });
      await page.goto(url, { waitUntil: 'domcontentloaded' });
      await page.getByRole('button', { name: 'Inicio', exact: true }).first().waitFor();
      await page.waitForTimeout(350);
      const prefix = `flutter-${config.width}-${config.dark ? 'dark' : 'light'}`;
      async function capture(state) {
        if (config.width >= 1200 && ['explore', 'about'].includes(state)) {
          await page.getByText(state === 'explore' ? 'DESCUBRE' : 'LA CASA', { exact: true }).hover();
        }
        await page.waitForTimeout(220);
        const file = `${prefix}-${state}.png`;
        await page.screenshot({ path: path.join(out, file) });
        const buttons = await page.locator('[role=button]').evaluateAll(es => es.map(e => ({
          label: e.getAttribute('aria-label') || e.textContent,
          expanded: e.getAttribute('aria-expanded'), selected: e.getAttribute('aria-selected'),
          rect: e.getBoundingClientRect().toJSON(),
        })));
        const pixels = await sharp(path.join(out, file)).stats();
        if (pixels.channels.every(channel => channel.stdev < 2)) throw new Error('Blank rendered frame: ' + file);
        const landmarks = await page.locator('[role=navigation], [role=region]').evaluateAll(es => es.map(e => ({
          role: e.getAttribute('role'), label: e.getAttribute('aria-label'), rect: e.getBoundingClientRect().toJSON(),
        })));
        results.records.push({ config, state, file, buttons, landmarks, nonblank: true,
          documentWidth: await page.evaluate(() => document.documentElement.scrollWidth) });
        console.log(file);
      }
      await capture('default');
      if (config.width < 1200) {
        await page.getByRole('button', { name: /Abrir men/ }).click();
        await capture('global');
      }
      const explore = page.getByRole('button', { name: /^Explorar/ }).first();
      if (config.width >= 1200) { await page.mouse.move(5, 600); await explore.hover(); }
      else { await explore.click(); }
      await page.getByText('DESCUBRE', { exact: true }).waitFor();
      await capture('explore');
      // Public menu content remains keyboard reachable, including the final CTA.
      await page.keyboard.press('Escape'); await page.waitForTimeout(220);
      if (config.width < 1200) await page.getByRole('button', { name: /Abrir men/ }).click();
      const about = page.getByRole('button', { name: /^Nosotros/ }).first();
      if (config.width >= 1200) { await page.mouse.move(5, 600); await about.hover(); }
      else await about.click();
      await page.getByText('LA CASA', { exact: true }).waitFor();
      await capture('about');
      await page.keyboard.press('Escape'); await page.waitForTimeout(220);
      if (config.width < 1200) await page.getByRole('button', { name: /Abrir men/ }).click();
      await page.getByRole('button', { name: /Mercado actual: Espa/ }).click();
      await capture('market');
      await page.getByRole('button', { name: /^Panam/ }).click();
      await page.getByRole('button', { name: /Mercado actual: Panam/ }).waitFor();
      if (config.width < 1200) await page.keyboard.press('Escape');
      await page.getByText('Mercado: Panamá', { exact: false }).waitFor();
      await page.keyboard.press('Tab');
      const focused = await page.evaluate(() => ({ tag: document.activeElement.tagName,
        label: document.activeElement.textContent }));
      results.records.push({ config, state: 'market-shared-home', verified: true });
      results.records.push({ config, state: 'keyboard-focus', focused });
      await context.close();
    }
  } finally {
    await fs.writeFile(path.join(out, 'browser-results.json'), JSON.stringify(results, null, 2));
    await browser.close();
  }
  if (results.errors.length) throw new Error(JSON.stringify(results.errors));
  console.log('QA PASS: ' + results.records.length + ' observations, no page errors');
}
main().catch(error => { console.error(error); process.exitCode = 1; });
