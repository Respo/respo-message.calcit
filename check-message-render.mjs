import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { copyFile, mkdir, mkdtemp, rm, symlink } from 'node:fs/promises';
import { resolve, join } from 'node:path';
import { pathToFileURL } from 'node:url';
const binary = process.env.CALCIT_BIN ?? 'calcit';
const run = (...args) => execFileSync(binary, args, { encoding: 'utf8', timeout: 60000 });
await mkdir('.calcit', { recursive: true });
const scratch = await mkdtemp(resolve('.calcit/message-render-'));
try {
  const snapshot = join(scratch, 'calcit.cirru');
  const output = join(scratch, 'js-out');
  await copyFile('calcit.cirru', snapshot);
  await copyFile('deps.cirru', join(scratch, 'deps.cirru'));
  await mkdir(join(scratch, '.calcit'));
  await symlink(resolve('.calcit/modules'), join(scratch, '.calcit/modules'), 'dir');
  run(snapshot, 'edit', 'add-import', 'respo-message.comp.message', '--code', 'quote (respo.render.html :refer (make-string))');
  run(snapshot, 'edit', 'def', 'respo-message.comp.message/expose-render-check!', '--code',
    'quote (defn expose-render-check! () (make-string (comp-message 0 ({} (:text |message)) ({}) (fn (info dispatch!) &unit))) &unit)');
  run(snapshot, 'edit', 'schema', 'respo-message.comp.message/expose-render-check!', '--code',
    "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)");
  run(snapshot, '--reload-fn', 'respo-message.comp.message/expose-render-check!', '--emit-path', output, 'js');
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
