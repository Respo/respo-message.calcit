
Respo Message for calcit-js
----

> Message component for Respo apps.

Demo http://repo.respo-mvc.org/message.calcit/

### Usages

Public APIs:

```cirru
respo-message.action/message-action?
respo-message.action/create
respo-message.action/clear
respo-message.action/remove-one
respo-message.action/dict
respo-message.updater/update-messages
respo-message.comp.messages/comp-messages
```

To mount component and show a message, by default it shows for 4 seconds:

```cirru
comp-messages (:messages store)
  {} (:bottom? true)
  fn (info d!)
    d! action/remove-one info
```

```cirru
dispatch! action/create $ {}
  :text (lorem-ipsum)
  :token "|xxx"

dispatch! action/remove-one $ {}
  :token "|xxx"
```

Messages can be removed with `:id` or `:token`, where `:token` is what you can generate.

Sorry but the component gets even harder to setup:

```cirru
defn dispatch! (op op-data)
  let
      op-id (.generate shortid)
      op-time (js/Date.now)
      store @*store
    reset! *store $ cond
      (= op :states)
        update store :states (mutate op-data)
      (action/message-action? op)
        update store :messages $ \ update-messages % op op-data op-id op-time
      true $ do (println "|Unhandled operation:" op) store
```


### License

MIT
