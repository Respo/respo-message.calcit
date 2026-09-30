import assert from 'node:assert/strict';
import test from 'node:test';
import * as clt from '../js-out/calcit.core.mjs';
import { comp_container } from '../js-out/respo-message.comp.container.mjs';
import { update_messages } from '../js-out/respo-message.updater.mjs';
import * as action from '../js-out/respo-message.action.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = clt.init_tags(['messages', 'event', 'children', 'click', 'some', 'text', 'token']);
const map = clt._$n__$M_;
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const nth = (v, i) => clt.option_$o_unwrap(clt.nth(v, i));
function click(node, text) {
  if (component_$q_(node)) return click(clt.option_$o_unwrap(component_tree(node)), text);
  const event = clt.get(node, t.event);
  if (clt._$n_enum_$o_nth(event, 0) === t.some && make_string(node).includes(text)) {
    const handler = clt.get(clt.option_$o_unwrap(event), t.click);
    if (clt._$n_enum_$o_nth(handler, 0) === t.some) return clt.option_$o_unwrap(handler);
  }
  const children = clt.get(node, t.children);
  if (clt._$n_enum_$o_nth(children, 0) === t.some) {
    const pairs = clt.option_$o_unwrap(children);
    for (let i = 0; i < clt.count(pairs); i++) {
      const result = click(nth(nth(pairs, i), 1), text);
      if (result) return result;
    }
  }
}

test('Try and timer dispatch one Enum with the same message token', () => {
  const saved = globalThis.setTimeout;
  let timer;
  const ops = [];
  const dispatch = (...args) => { assert.equal(args.length, 1); ops.push(args[0]); };
  try {
    globalThis.setTimeout = (callback, delay) => { timer = { callback, delay }; return 1; };
    click(comp_container(map(t.messages, map())), 'Try')(null, dispatch);
    assert.equal(timer.delay, 2000);
    assert.equal(clt._$n_enum_$o_nth(ops[0], 0), action.create);
    timer.callback();
    assert.equal(clt._$n_enum_$o_nth(ops[1], 0), action.remove_one);
    assert.equal(field(clt._$n_enum_$o_nth(ops[0], 1), t.token), field(clt._$n_enum_$o_nth(ops[1], 1), t.token));
  } finally { globalThis.setTimeout = saved; }
});

test('Clear dispatches a single payload-free Enum', () => {
  click(comp_container(map(t.messages, map())), 'Clear')(null, (...args) => {
    assert.equal(args.length, 1);
    assert.equal(clt._$n_enum_$o_nth(args[0], 0), action.clear);
    assert.equal(clt._$n_enum_$o_count(args[0]), 1);
  });
});

test('clicking a visible message dispatches one remove Enum accepted by updater', () => {
  const messages = update_messages(map(), action.create, map(t.text, 'fixture-message', t.token, 'fixture'), 'id', 1);
  let next;
  click(comp_container(map(t.messages, messages)), 'fixture-message')(null, (...args) => {
    assert.equal(args.length, 1);
    assert.equal(clt._$n_enum_$o_nth(args[0], 0), action.remove_one);
    next = update_messages(messages, action.remove_one, clt._$n_enum_$o_nth(args[0], 1), 'remove', 2);
  });
  assert.equal(clt.count(next), 0);
});
