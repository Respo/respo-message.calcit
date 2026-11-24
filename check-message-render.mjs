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
  run('calcit.cirru', '--reload-fn', 'respo.render.html/make-string', '--emit-path', output, 'js');
  const load = name => import(pathToFileURL(join(output, `${name}.mjs`)).href);
  const c = await load('calcit.core');
  const { comp_message, message_style_of } = await load('respo-message.comp.message');
  const { comp_messages } = await load('respo-message.comp.messages');
  const { update_messages } = await load('respo-message.updater');
  const { clear, create, remove_one, message_action_$q_ } = await load('respo-message.action');
  for (const action of [clear, create, remove_one]) assert.equal(message_action_$q_(action), true);
  for (const other of [c.init_tags(['unknown-action'])['unknown-action'], null, false, 'message/create']) {
    assert.equal(message_action_$q_(other), false);
  }
  const { make_string } = await load('respo.render.html');
  const t = c.init_tags(['text', 'time', 'id', 'bottom?']);
  for (const time of [null, 42, 'legacy-invalid-time']) {
    const message = c._$n__$M_(t.id, 'm1', t.text, 'notification', t.time, time);
    const component = comp_message(0, message, c._$n__$M_(), () => null);
    assert.match(make_string(component), /notification/);
  }
  console.log('Generated JavaScript renders messages with missing, numeric, and legacy invalid timestamps.');
  const positioningMessage = c._$n__$M_(t.id, 'position', t.text, 'position', t.time, 0);
  const positioningMessages = c._$n__$M_('position', positioningMessage);
  for (const [options, bottom] of [
    [c._$n__$M_(), false],
    [c._$n__$M_(t['bottom?'], true), true],
    [c._$n__$M_(t['bottom?'], false), false],
    [c._$n__$M_(t['bottom?'], null), false],
    [c._$n__$M_(t['bottom?'], 1), false],
  ]) {
    const html = make_string(comp_messages(positioningMessages, options, () => null));
    assert.match(html, bottom ? /bottom:0/ : /top:0/);
    const item = make_string(comp_message(0, positioningMessage, options, () => null));
    assert.match(item, bottom ? /bottom:8px/ : /top:8px/);
  }
  console.log('Message positioning only uses the bottom layout for true.');
  for (const token of ['nil', 'false']) {
    const messages = c.parse_cirru_edn(`{} (:a $ {} (:id :a) (:token ${token})) (:b $ {} (:id :b) (:token ${token}))`);
    const data = c.parse_cirru_edn(`{} (:id :a) (:token ${token})`);
    const remaining = update_messages(messages, remove_one, data, 'op', 0);
    assert.deepEqual(c.to_js_data(remaining), { b: { id: 'b', token: token === 'nil' ? null : false } });
  }
  for (const id of ['nil', 'false', '0', '|']) {
    const messages = c.parse_cirru_edn(`{} (:a $ {} (:id ${id}) (:text |notification) (:time 0))`);
    assert.match(make_string(comp_messages(messages, c._$n__$M_(), () => null)), /notification/);
  }
  console.log('Generated JavaScript preserves falsey-token ID removal and falsey-ID rendering.');
  const css = c.init_tags(['style', 'opacity', 'border-color', 'outline-color', 'none', 'some', 'blue']);
  const style = c._$n__$M_(css.opacity, 0.5,
    css['border-color'], c._PCT__$o__$o_(c.Option, css.none),
    css['outline-color'], c._PCT__$o__$o_(c.Option, css.some, css.blue));
  const styled = c._$n__$M_(t.id, 'styled', t.text, 'typed style', css.style, style);
  const html = make_string(comp_message(0, styled, c._$n__$M_(), () => null));
  assert.match(html, /opacity:0\.5/);
  assert.match(html, /outline-color:blue/);
  assert.doesNotMatch(html, /border-color:/);
  assert.throws(() => message_style_of(c._$n__$M_(css.style, c._$n__$M_(css.opacity, true))), /decode-map-as/);
  console.log('Checked inline styles preserve scalar/some/none rendering and reject Bool values.');
} finally {
  await rm(scratch, { recursive: true, force: true });
}
