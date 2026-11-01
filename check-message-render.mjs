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
  const { comp_messages } = await load('respo-message.comp.messages');
  const { update_messages } = await load('respo-message.updater');
  const { remove_one } = await load('respo-message.action');
  const { make_string } = await load('respo.render.html');
  const t = c.init_tags(['text', 'time', 'id', 'bottom?']);
  for (const time of [null, 42, 'legacy-invalid-time']) {
    const message = c._$n__$M_(t.id, 'm1', t.text, 'notification', t.time, time);
    const component = comp_message(0, message, c._$n__$M_(), () => null);
    assert.match(make_string(component), /notification/);
  }
  console.log('Generated JavaScript renders messages with missing, numeric, and legacy invalid timestamps.');
  for (const token of ['nil', 'false']) {
    const messages = c.parse_cirru_edn(`{} (:a $ {} (:id :a) (:token ${token})) (:b $ {} (:id :b) (:token ${token}))`);
    const data = c.parse_cirru_edn(`{} (:id :a) (:token ${token})`);
    const remaining = update_messages(messages, remove_one, data, 'op', 0);
    assert.deepEqual(c.to_js_data(remaining), { b: { id: 'b', token: token === 'nil' ? null : false } });
  }
  for (const id of ['nil', 'false']) {
    const messages = c.parse_cirru_edn(`{} (:a $ {} (:id ${id}) (:text |notification) (:time 0))`);
    assert.match(make_string(comp_messages(messages, c._$n__$M_(), () => null)), /notification/);
  }
  console.log('Generated JavaScript preserves falsey-token ID removal and falsey-ID rendering.');
} finally {
  await rm(scratch, { recursive: true, force: true });
}
