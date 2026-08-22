
Respo Message for calcit-js
----

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
  fn (info d!) (d! action/remove-one info)
```

```cirru.no-check
dispatch! action/create $ {}
  :text $ lorem-ipsum
  :token |xxx

dispatch! action/remove-one $ {} (:token |xxx)
```

Messages can be removed with `:id` or `:token`, where `:token` is what you can generate.

### Calcit 0.13.x

The project uses the canonical `calcit.cirru` snapshot and Calcit 0.13.29.
The deprecated `lilac`/`memof` modules have been removed. Message maps use explicit `Option` handling for optional
fields; new tests use the built-in `calcit.test` support.

Before submitting a change, run:

```bash
caps --ci
yarn install --immutable
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn check:unit
yarn check:deprecated
yarn vite build --base=./
```

Sorry but the component gets even harder to setup:

```cirru
defn dispatch! (op op-data)
  let
      op-id $ generate-id!
      op-time $ js/Date.now
      store @*store
    reset! *store $ cond
        = op :states
        update store :states $ mutate op-data
      (action/message-action? op)
        update store :messages $ \ update-messages % op op-data op-id op-time
      true $ do (println "|Unhandled operation:" op) store
```

### License

MIT
