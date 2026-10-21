import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, mkdtemp, rm } from 'node:fs/promises';
import { resolve, join } from 'node:path';
import { pathToFileURL } from 'node:url';
const binary = process.env.CALCIT_BIN ?? 'calcit';
const run = (...args) => execFileSync(binary, args, { encoding: 'utf8', timeout: 60000 });
await mkdir('.calcit', { recursive: true });
const scratch = await mkdtemp(resolve('.calcit/message-render-'));
try {
  const output = join(scratch, 'js-out');
  run('calcit.cirru', '--emit-path', output, 'js');
  const load = name => import(pathToFileURL(join(output, `${name}.mjs`)).href);
  const c = await load('calcit.core');
  const { comp_message } = await load('respo-message.comp.message');
  const { make_string } = await load('respo.render.html');
  const t = c.init_tags(['text', 'time', 'id', 'bottom?']);
  for (const time of [null, 42, 'legacy-invalid-time']) {
    const message = c._$n__$M_(t.id, 'm1', t.text, 'notification', t.time, time);
    const component = comp_message(0, message, c._$n__$M_(), () => null);
    assert.match(make_string(component), /notification/);
  }
  console.log('Generated JavaScript renders messages with missing, numeric, and legacy invalid timestamps.');
} finally {
  await rm(scratch, { recursive: true, force: true });
}
