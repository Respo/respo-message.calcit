
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-message
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'respo-message.main/main!) (:mode :js) (:reload-fn 'respo-message.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'respo-message.schema/Op
  :files $ {}
    'respo-message.action $ %{} 'FileEntry
      :defs $ {}
        'clear $ %{} 'CodeEntry
          :doc "|Action tag for clearing all messages. Use it with dispatch! to remove all displayed messages at once."
          :code $ quote $ def clear :message/clear
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/clear
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/clear
          :schema $ quote Tag
        'create $ %{} 'CodeEntry
          :doc "|Action tag for creating a new message. Use it with dispatch! to display a toast message."
          :code $ quote $ def create :message/create
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/create
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/create
          :schema $ quote Tag
        'dict $ %{} 'CodeEntry
          :doc "|Dictionary of all message action tags. Useful for pattern matching and validation."
          :code $ quote $ def dict
            {} (:create create) (:remove-one remove-one) (:clear clear)
          :examples $ []
            quote $ assert= true $ option:some? (get respo-message.action/dict :create)
            quote $ assert= 3 $ count respo-message.action/dict
          :schema $ quote $ Map Tag Tag
        'gen-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn gen-tag (x)
            to-tag $ str x |_GEN_ 0
          :examples $ []
          :schema $ quote $ Fn String (-> Tag)
        'message-action? $ %{} 'CodeEntry
          :doc "|Predicate function to check if an operation is a message action. Returns true for create, clear, and remove-one actions."
          :code $ quote $ defn message-action? (op)
            includes? (#{} clear create remove-one) op
          :examples $ []
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/create
            quote $ assert= false $ respo-message.action/message-action? :unknown-action
          :schema $ quote $ Fn T (-> Bool) (:generics T)
        'remove-one $ %{} 'CodeEntry
          :doc "|Action tag for removing a specific message. Messages can be identified by :id or :token field."
          :code $ quote $ def remove-one :message/remove-one
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/remove-one
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/remove-one
          :schema $ quote Tag
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.action
    'respo-message.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store)
            let
                messages $ decode-map-as
                  match (get store :messages)
                    (:some value)
                      either value $ {}
                    (:none) ({})
                  Map String Dynamic
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen
                  :style $ {} $ :padding 16
                div
                  {} $ :class-name css/row
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        let
                            new-token $ generate-id!
                          d! $ schema/Op :message/create $ &merge schema/message
                            {} (:token new-token)
                              :text $ lorem-ipsum/loremIpsum
                          browser/set-timeout!
                            fn ()
                              d! $ schema/Op :message/remove-one $ {} (:token new-token)
                              , &unit
                            , 2000
                          , &unit
                    <> |Try
                  space-x 16
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        d! $ schema/Op :message/clear
                    <> |Clear
                comp-messages messages
                  {} $ :bottom? false
                  fn (info d!)
                    d! $ schema/Op :message/remove-one info
                nil->option $ when config/dev? $ comp-inspect |messages messages ({})
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (-> respo.schema/Component) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.css :as css
            respo.core :refer $ defcomp div span button <>
            respo-ui.core :as ui
            respo.comp.space :refer $ space-x
            respo-message.comp.messages :refer $ comp-messages
            respo-message.schema :as schema
            |lorem-ipsum :as lorem-ipsum
            respo-message.action :as action
            respo.comp.inspect :refer $ comp-inspect
            respo-message.config :as config
            js-ffi.browser :as browser
    'respo-message.comp.message $ %{} 'FileEntry
      :defs $ {}
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (idx message options on-remove!)
            let
                bottom? $ = true $ .unwrap-or (get options :bottom?) false
                message-style $ message-style-of message
                message-timestamp $ message-time message
                message-text $ message-text-of message
              [] (effect-fade message idx bottom?)
                div
                  {} (:class-name css-message)
                    :style $ &merge message-style $ if bottom?
                      {} $ :bottom $ str
                        + 8 $ * idx 40
                        , |px
                      {} (:top 8)
                        :transform $ str "|translate(0," (* idx 40) "|px)"
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn *dispatch-op $ -> Unit
                        -> Unit
                      on-remove!
                        ->
                          {} (:index idx) (:time message-timestamp)
                          with-present :id $ get message :id
                          with-present :token $ get message :token
                        , d!
                      , &unit
                  <> message-text
          :examples $ []
          :schema $ quote $ Fn Number (Map Dynamic Dynamic) (Map Dynamic Dynamic)
            Fn (Map Tag Dynamic)
              Fn *dispatch-op $ -> Unit
              -> R
            -> respo.schema/Component
            :generics R
        'css-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-message
            {} $ |$0 $ {} (:position :absolute) (:right 8) (:height 32) (:line-height |32px) (:font-size 14)
              :background-color $ hsl 0 0 100
              :border-style :solid
              :border-width |1px
              :border-radius |6px
              :border-color $ hsl 200 50 90
              :color $ hsl 0 0 60
              :padding "|0 16px"
              :min-width 64
              :text-align :left
              :overflow :hidden
              :text-overflow :ellipsis
              :max-width 320
              :cursor :pointer
              :transition-duration |400ms
              :box-shadow $ str "|0px 0px 4px " $ hsl 0 0 10 0.1
          :examples $ []
          :schema $ quote String
        'effect-fade $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-fade (message idx bottom?) (action el *local)
            let
                dy $ if (= true bottom?) 0 $ if (number? idx) (* idx 40) 0
              match action
                :mount $ let
                    element $ browser/element-host el
                  browser/element-set-style! element |transform $ str "|translate(60px," dy "|px)"
                  browser/element-set-style! element |opacity |0
                  browser/set-timeout!
                    fn ()
                      browser/element-set-style! element |transform $ str "|translate(0px," dy "|px)"
                      browser/element-set-style! element |opacity |1
                      browser/element-set-style! element |zIndex |-1
                    , 10
                :unmount $ let
                    element $ browser/element-host el
                    cloned $ element .clone-node true
                    parent $ browser/element-host $ element :parent-element
                  parent .append-child! cloned
                  browser/set-timeout!
                    fn ()
                      browser/element-set-style! cloned |transform $ str "|translate(60px," dy "|px)"
                      browser/element-set-style! cloned |opacity |0
                    , 10
                  browser/set-timeout!
                    fn () $ cloned .remove!
                    , 400
                _ nil
          :examples $ []
          :schema $ quote $ Fn MessageValue Number Bool (-> respo.schema/Effect) (:generics MessageValue) (:features :js-ffi)
        'message-style-of $ %{} 'CodeEntry
          :doc "|读取真实消息边界，保留缺省/nil 样式为空 Map，并校验键为 Tag、值为 StyleValue 或 Option StyleValue。"
          :code $ quote $ defn message-style-of (message)
            match (get message :style)
              (:some style)
                if (nil? style) ({})
                  decode-map-as style $ Map Tag respo-ui.schema/InlineStyleValue
              (:none) ({})
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic MessageValue)
            -> $ Map Tag respo-ui.schema/InlineStyleValue
            :generics MessageValue
            :features :js-ffi
          :tests $ [] $ %{} 'TestEntry (:name |checked-inline-style-values)
            :code $ quote $ do
              let
                  style $ {} (:opacity 0.5) (:color |red) (:border-color None)
                    :outline-color $ Some :blue
                assert= style $ message-style-of $ {} (:style style)
              assert= ({})
                message-style-of $ {} $ :style nil
            :tags $ #{} :unit
        'message-text-of $ %{} 'CodeEntry (:doc "|读取消息文本，非字符串值按显示文本转换。")
          :code $ quote $ defn message-text-of (message)
            match (get message :text)
              (:some text)
                if (string? text) text $ if (nil? text) | $ str text
              (:none) |
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic MessageValue) (-> String) (:generics MessageValue)
        'with-present $ %{} 'CodeEntry
          :doc "|Add k when the value is present and not nil; otherwise keep the map, so a removal payload only carries the fields the message has."
          :code $ quote $ defn with-present (m k value-option)
            match value-option
              (:some value)
                if (nil? value) m $ assoc m k value
              (:none) m
          :examples $ []
          :schema $ quote $ Fn (Map Tag V) Tag (Option V)
            -> $ Map Tag V
            :generics V
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.comp.message
          :require
            respo.core :refer $ defcomp div <> span defeffect
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-message.schema :as schema
            respo.css :refer $ defstyle
            js-ffi.browser :as browser
            respo-message.comp.messages :refer $ message-time
    'respo-message.comp.messages $ %{} 'FileEntry
      :defs $ {}
        'comp-messages $ %{} 'CodeEntry
          :doc "|Respo component that renders a list of toast messages. Pass messages map, options (with :bottom? flag for positioning), and on-remove! callback. Messages are auto-sorted by time (newest first) and rendered at fixed position (top-right or bottom-right)."
          :code $ quote $ defcomp comp-messages (messages options on-remove!)
            let
                bottom? $ = true $ .unwrap-or (get options :bottom?) false
              keyed->
                {} $ :style $ if bottom?
                  {} (:position :fixed) (:bottom 0) (:right 0)
                  {} (:position :fixed) (:top 0) (:right 0)
                -> (message-entries messages)
                  sort $ fn (message m)
                    hint-fn $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> Number)
                    - (message-time m) (message-time message)
                  map-indexed $ fn (idx message)
                    hint-fn $ Fn Number (Map Dynamic Dynamic) (-> respo.schema/ChildPair)
                    keyed-component
                      read-coord-key $ match (get message :id)
                        (:some id) (if id id |)
                        (:none) |
                      comp-message idx message options on-remove!
          :examples $ []
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? true
              fn (info d!) &unit
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? false
              fn (info d!) &unit
          :schema $ quote $ Fn (Map String Dynamic) (Map Dynamic Dynamic)
            Fn (Map Tag Dynamic)
              Fn *dispatch-op $ -> Unit
              -> R
            -> respo.schema/Component
            :generics R
        'message-entries $ %{} 'CodeEntry (:doc "|去重并校验消息条目为 map。")
          :code $ quote $ defn message-entries (messages)
            foldl
              .to-list $ .distinct-values messages
              []
              defn %message-entry (acc message)
                hint-fn $ Fn
                  List $ Map Dynamic Dynamic
                  , Dynamic $ ->
                    List $ Map Dynamic Dynamic
                if (map? message) (.append acc message)
                  raise $ str "|respo-message expected each message as a map, got: " $ type-of message
          :examples $ []
          :schema $ quote $ Fn (Map String Dynamic)
            -> $ List $ Map Dynamic Dynamic
        'message-time $ %{} 'CodeEntry (:doc "|读取消息时间用于排序，缺失或非数字时为 0。")
          :code $ quote $ defn message-time (message)
            match (get message :time)
              (:some t)
                if (number? t) t 0
              (:none) 0
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic MessageValue) (-> Number) (:generics MessageValue)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.comp.messages
          :require
            respo.core :refer $ defcomp keyed-> keyed-component div span <>
            respo-message.comp.message :refer $ comp-message
            respo.util.list :refer $ read-coord-key
    'respo-message.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn? (detect-cdn?)
          :examples $ []
          :schema $ quote Bool
        'detect-cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-cdn? ()
            cond
                exists? js/window
                , false
              (exists? js/process) (&= |true js/process.env.cdn)
              true false
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'detect-dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-dev? ()
            let
                debug? false
              cond
                  exists? js/window
                  , debug?
                (exists? js/process)
                  not $ &= |true js/process.env.release
                true true
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? (detect-dev?)
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-message/) (:title |Message) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-message)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.config
    'respo-message.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ quote $ Ref (Map Dynamic Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            let
                op-id $ generate-id!
                op-time $ shared/now-ms
              reset! *store $ next-store-of op op-id op-time
              , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app! render!
            add-watch! *store :changes $ fn (store prev) (render-app! render!)
            browser/set-timeout!
              fn () $ dispatch! $ schema/Op :message/create
                {} $ :text $ lorem-ipsum/loremIpsum
              , 0
            println "|app started!"
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'next-store-of $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-store-of (op op-id op-time)
            let
                store @*store
                apply-action $ fn (action payload)
                  hint-fn $ Fn Tag (Map Tag Dynamic)
                    -> $ Map Dynamic Dynamic
                  let
                      messages $ decode-map-as
                        match (get store :messages)
                          (:some value)
                            either value $ {}
                          (:none) ({})
                        Map Dynamic Dynamic
                    .assoc store :messages $ update-messages messages action payload op-id op-time
              match op
                (:message/create payload) (apply-action action/create payload)
                (:message/remove-one payload) (apply-action action/remove-one payload)
                (:message/clear)
                  apply-action action/clear $ {}
                (:states cursor state)
                  decode-map-as (update-states store cursor state) (Map Dynamic Dynamic)
                _ $ do (eprintln "|Unhandled operation:" op) store
          :examples $ []
          :schema $ quote $ Fn schema/Op String Number
            -> $ Map Dynamic Dynamic
            :features :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |clear-without-payload)
              :code $ quote $ assert= ({})
                .unwrap $ get
                  next-store-of (:: action/clear) |id-clear 1
                  , :messages
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |create-with-payload)
              :code $ quote $ assert= |Hello
                .unwrap-or
                  get-in
                    next-store-of
                      :: action/create $ {} $ :text |Hello
                      , |id-1 123
                    [] :messages |id-1 :text
                  , nil
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |typed-remove-one)
              :code $ quote $ let
                  original @*store
                  seeded $ next-store-of
                    schema/Op :message/create $ {} (:text |Hello) (:token |remove-me)
                    , |id-message 1
                reset! *store seeded
                let
                    result $ next-store-of
                      schema/Op :message/remove-one $ {} $ :token |remove-me
                      , |id-remove 2
                  reset! *store original
                  assert=
                    Some $ {}
                    get result :messages
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |typed-states)
              :code $ quote $ assert= (Result :ok false)
                get-in
                  next-store-of
                    schema/Op :states ([] :panel) false
                    , |id-states 1
                  [] :states :panel :data
              :tags $ #{} :fast :unit
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!) (render-app! render!) (println "|Code update.")
            dispatch! $ schema/Op :message/create $ {}
              :text $ lorem-ipsum/loremIpsum
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            renderer (mount-target) (comp-container @*store)
              fn (op) (dispatch! op)
          :examples $ []
          :schema $ quote $ Fn
            Fn (JsNullish respo.dom/DomElement) respo.schema/Component
              Fn schema/Op $ -> Unit
              -> Unit
            -> Unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.main
          :require
            respo.core :refer $ render! clear-cache!
            respo.cursor :refer $ update-states
            respo.util.format :refer $ mute-element
            respo-message.comp.container :refer $ comp-container
            respo-message.schema :as schema
            |lorem-ipsum :as lorem-ipsum
            respo-message.updater :refer $ update-messages
            respo-message.action :as action
            respo-message.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.ffi.browser :as dom
    'respo-message.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Dispatch Op of the message demo, bound to the :dispatch-op type slot. Message actions carry an optional payload map; :states carries the Respo cursor update."
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :message/create $ Map Tag Dynamic
            :message/clear
            :message/remove-one $ Map Tag Dynamic
          :examples $ [] $ quote (%:: respo-message.schema/Op :message/clear)
          :schema $ quote EnumDef
        'message $ %{} 'CodeEntry
          :doc "|Schema definition for a message object. Contains :id (auto-generated), :token (optional user-defined), :text (message content), :time (creation timestamp), and :style (custom CSS styles)."
          :code $ quote $ def message
            {} (:id nil) (:token nil) (:text |) (:time 0)
              :style $ {}
          :examples $ []
            quote $ &merge schema/message $ {} (:text |Hello) (:token |msg-1)
            quote $ &merge schema/message $ {} (:text "|Error occurred")
              :style $ {} $ :background-color (hsl 0 80 60)
          :schema $ quote $ Map Tag Dynamic
        'store $ %{} 'CodeEntry
          :doc "|Schema definition for the message store. Contains :messages (hashmap of messages by id) and :states (component states storage)."
          :code $ quote $ def store
            {}
              :messages $ {}
              :states $ {}
          :examples $ []
            quote $ schema/store
            quote $ &merge schema/store $ {}
              :messages $ {} $ |msg-1
                {} $ :text |Hello
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.schema
    'respo-message.updater $ %{} 'FileEntry
      :defs $ {} $ 'update-messages
        %{} 'CodeEntry
          :doc "|Updater function that processes message actions and updates the messages state. Handles create, clear, and remove-one operations. Should be called from your main updater when action/message-action? returns true."
          :code $ quote $ defn update-messages (messages op op-data op-id op-time)
            cond
                &= op action/clear
                {}
              (&= op action/create)
                .assoc messages op-id $ &merge
                  &merge schema/message $ decode-map-as op-data $ Map Tag Dynamic
                  {} (:id op-id) (:time op-time)
              (&= op action/remove-one)
                let
                    data $ decode-map-as op-data $ Map Dynamic Dynamic
                    token $ match (get data :token)
                      (:some value)
                        if value (Some value) None
                      (:none) None
                    message-id $ get data :id
                  match token
                    (:some token-value)
                      -> messages (.to-pairs)
                        filter $ fn (pair)
                          let[] (k message) pair $ not= (Some token-value)
                            get
                              decode-map-as message $ Map Dynamic Dynamic
                              , :token
                        .to-list
                        pairs-map
                    (:none)
                      match message-id
                        (:some id)
                          if id (.dissoc messages id) (.dissoc messages nil)
                        (:none) (.dissoc messages nil)
              true messages
          :examples $ []
            quote $ assert= 1 $ count
              respo-message.updater/update-messages ({}) respo-message.action/create
                {} $ :text |Hello
                , |id-1 1234567890
            quote $ assert= 0 $ count
              respo-message.updater/update-messages
                {} $ :id-1 $ {} (:text |Old)
                , respo-message.action/clear nil |id-2 1234567891
          :schema $ quote $ Fn (Map Dynamic Dynamic) Dynamic Dynamic Dynamic Dynamic
            -> $ Map Dynamic Dynamic
          :tests $ []
            %{} 'TestEntry (:name |creates-message)
              :code $ quote $ assert= 1
                count $ update-messages ({}) action/create
                  {} $ :text |Hello
                  , |id-1 1234567890
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |removes-message-by-token)
              :code $ quote $ assert= 0
                count $ update-messages
                  {} $ :old $ {} (:token |gone)
                  , action/remove-one
                    {} $ :token |gone
                    , |id-2 1234567891
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |falsey-token-removes-only-requested-id)
              :code $ quote $ let
                  check $ fn (token)
                    hint-fn $ Fn Dynamic $ -> Unit
                    let
                        messages $ {}
                          :a $ {} (:id :a) (:token token)
                          :b $ {} (:id :b) (:token token)
                        expected $ {} $ :b
                          {} (:id :b) (:token token)
                      assert= expected $ update-messages messages action/remove-one
                        {} (:id :a) (:token token)
                        , |op 0
                      , &unit
                check nil
                check false
              :tags $ #{} :fast :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.updater
          :require (respo-message.schema :as schema) (respo-message.action :as action)
