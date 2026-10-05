const fs = require('node:fs/promises');
const path = require('node:path');
const { createRequire } = require('node:module');
const deps = createRequire('C:/Users/forwo/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/qa.cjs');
const sharp = deps('sharp');
const root = path.resolve(__dirname, '../..');
const pass = process.argv[2] || 'after';
if (!['before','after'].includes(pass)) throw Error('Use before or after');
const evidence = path.join(root, 'docs/mig010a/evidence/critique');
const output = path.join(root, 'build/mig010a/parity', `critique-${pass}`);
async function main() {
  await fs.mkdir(output, { recursive: true });
  const angular = JSON.parse(await fs.readFile(path.join(evidence,'angular/measurements.json')));
  const flutter = JSON.parse(await fs.readFile(path.join(evidence,`flutter-${pass}/measurements.json`)));
  const pairs = [];
  for (const a of angular.filter(r=>r.file)) {
    const f = flutter.find(r=>r.file===a.file);
    if (!f) continue;
    const left = path.join(evidence,'angular',a.file);
    const right = path.join(evidence,`flutter-${pass}`,f.file);
    const file = path.join(output,a.file);
    await sharp({create:{width:a.width*2+24,height:a.height,channels:3,background:'#ffffff'}})
      .composite([{input:left,left:0,top:0},{input:right,left:a.width+24,top:0}]).png().toFile(file);
    pairs.push({region:a.region,width:a.width,height:a.height,left,right,file});
  }
  await fs.writeFile(path.join(output,'pairs.json'),JSON.stringify(pairs,null,2));
  console.log(`${pairs.length} exact-size side-by-side pairs: Angular left / Flutter right in ${output}`);
}
main().catch(e=>{console.error(e);process.exitCode=1;});
