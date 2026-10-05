const fs = require('node:fs/promises');
const path = require('node:path');
const crypto = require('node:crypto');
const { createRequire } = require('node:module');
const deps = createRequire(path.join(process.env.PLAYWRIGHT_MODULE_ROOT ||
  'C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules', 'qa.cjs'));
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const out = path.join(root, 'docs/mig003b/implementation-evidence');
const reference = path.join(root, 'docs/mig003b/evidence');
const angular = process.env.ANGULAR_REFERENCE_ROOT || path.resolve(root, '../../bitefrontend');
async function hash(file) {
  return crypto.createHash('sha256').update(await fs.readFile(file)).digest('hex');
}
async function main() {
  const pairs = [];
  for (const [width, height] of [[390, 844], [768, 1024], [1024, 768], [1200, 800], [1440, 900]]) {
    for (const state of ['default', 'explore']) {
      const source = `${width}x${height}-anonymous-light-1x-${state}.png`;
      const target = `flutter-${width}-light-${state}.png`;
      const crop = width >= 1200 ? 520 : height;
      const file = `pair-${width}-${state}.png`;
      await sharp({ create: { width: width * 2, height: crop, channels: 3, background: '#ffffff' } })
        .composite([
          { input: await sharp(path.join(reference, source)).extract({ left: 0, top: 0, width, height: crop }).png().toBuffer(), left: 0, top: 0 },
          { input: await sharp(path.join(out, target)).extract({ left: 0, top: 0, width, height: crop }).png().toBuffer(), left: width, top: 0 },
        ]).png({ compressionLevel: 9 }).toFile(path.join(out, file));
      pairs.push({ width, state, file, left: source, right: target, sourceSha256: await hash(path.join(reference, source)) });
    }
  }
  const assets = [];
  for (const [source, target] of [
    ['img/fudi-logo-no-bg-cropped.png', 'assets/brand/fudi-wordmark.png'],
    ['img/recommendations-editorial-hero.png', 'assets/navigation/editorial.png'],
    ...['es', 'pa', 'worldwide'].map(market => [`icons/markets/${market}.svg`, `assets/navigation/${market}.svg`]),
  ]) {
    const sourceSha256 = await hash(path.join(angular, 'src/assets', source));
    const targetSha256 = await hash(path.join(root, target));
    assets.push({ source, target, sourceSha256, targetSha256, identical: sourceSha256 === targetSha256 });
  }
  const files = [];
  for (const name of (await fs.readdir(out)).filter(name => name.endsWith('.png')).sort()) {
    const image = await sharp(path.join(out, name)).metadata();
    files.push({ name, width: image.width, height: image.height, sha256: await hash(path.join(out, name)) });
  }
  const builds = [];
  for (const directory of ['web', 'web-production']) {
    const file = path.join(root, 'build', directory, 'main.dart.js');
    if (await fs.stat(file).catch(() => null)) builds.push({ directory, sha256: await hash(file) });
  }
  await fs.writeFile(path.join(out, 'manifest.json'), JSON.stringify({ date: new Date().toISOString(), pairs, assets, builds, files }, null, 2));
  if (assets.some(asset => !asset.identical)) throw new Error('Original asset mismatch');
  console.log(`${pairs.length} side-by-side pairs; ${assets.length} identical original assets; ${files.length} PNGs`);
}
main().catch(error => { console.error(error); process.exitCode = 1; });
