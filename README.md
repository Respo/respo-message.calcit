
## Respo Message for Calcit

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### Usages

Public APIs:

```cirru.no-check
respo-message.action/message-action?

respo-message.action/create

respo-message.action/clear

respo-message.action/remove-one

respo-message.action/dict

respo-message.updater/update-messages

respo-message.comp.messages/comp-messages
```

To mount component and show a message, by default it shows for 4 seconds:

```cirru.no-check
comp-messages (:messages store)
  {} $ :bottom? true
  fn (info d!) (d! (:: action/remove-one info))
```

```cirru.no-check
dispatch! $ :: action/create $ {}
  :text |hello
  :token |xxx

dispatch! $ :: action/remove-one $ {} (:token |xxx)
```

Messages can be removed with `:id` or `:token`, where `:token` is what you can generate.

### Calcit 0.27.0

The project uses `calcit.cirru` / `deps.cirru`, Calcit/procs 0.27.0, Node 24,
Yarn 4.18.0 and Vite 8.3.1. Release 0.0.29 publishes the merged strict
UI alpha.3 / Respo alpha.5 / js-ffi alpha.4 graph without moving 0.0.28.
The deprecated `lilac`/`memof` modules have been removed. Message maps use explicit `Option` handling for optional
fields; new tests use the built-in `calcit.test` support.

Before submitting a change, run:

```bash
caps --ci --strict
caps verify --toolchain
yarn install --immutable
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn check:unit
yarn check:deprecated
yarn vite build --base=./
```

Respo event handlers and `dispatch!` receive one Enum. The demo's
`respo-message.main/next-store-of` extracts the operation tag/payload and calls
`update-messages` with its existing five-argument API. Keep this boundary when
integrating; do not call the single-argument dispatcher with separate tag/data.

### License

MIT

### 中文说明

本模块为 Calcit/Respo 应用提供消息组件及对应 updater。项目使用 canonical
`calcit.cirru`，Calcit 与 `@calcit/procs` 保持 0.27.0 lockstep，并固定
到已发布的 Respo UI tag。
