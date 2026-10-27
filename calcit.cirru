
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-message
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'respo-message.main/main!) (:mode :js) (:reload-fn 'respo-message.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'Dynamic
  :files $ {}
    'respo-message.action $ %{} 'FileEntry
      :defs $ {}
        'clear $ %{} 'CodeEntry
          :doc "|Action tag for clearing all messages. Use it with dispatch! to remove all displayed messages at once."
          :code $ quote $ def clear (gen-tag |message/clear)
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/clear
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/clear
          :schema $ :: 'Tag
        'create $ %{} 'CodeEntry
          :doc "|Action tag for creating a new message. Use it with dispatch! to display a toast message."
          :code $ quote $ def create (gen-tag |message/create)
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/create
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/create
          :schema $ :: 'Tag
        'dict $ %{} 'CodeEntry
          :doc "|Dictionary of all message action tags. Useful for pattern matching and validation."
          :code $ quote $ def dict
            {} (:create create) (:remove-one remove-one) (:clear clear)
          :examples $ []
            quote $ assert= true $ option:some? (get respo-message.action/dict :create)
            quote $ assert= 3 $ count respo-message.action/dict
          :schema $ :: 'Map 'Tag 'Tag
        'gen-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn gen-tag (x)
            to-tag $ str x |_GEN_ 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'String
        'message-action? $ %{} 'CodeEntry
          :doc "|Predicate function to check if an operation is a message action. Returns true for create, clear, and remove-one actions."
          :code $ quote $ defn message-action? (op)
            includes? (#{} clear create remove-one) op
          :examples $ []
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/create
            quote $ assert= false $ respo-message.action/message-action? :unknown-action
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'remove-one $ %{} 'CodeEntry
          :doc "|Action tag for removing a specific message. Messages can be identified by :id or :token field."
          :code $ quote $ def remove-one (gen-tag |message/remove-one)
          :examples $ []
            quote $ assert= true $ tag? respo-message.action/remove-one
            quote $ assert= true $ respo-message.action/message-action? respo-message.action/remove-one
          :schema $ :: 'Tag
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.action
    'respo-message.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store)
            let
                messages $ decode-map-as
                  or
                    .unwrap-or (get store :messages) nil
                    {}
                  :: 'Map 'String 'Dynamic
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
                          d! $ :: action/create $ &merge schema/message
                            {} (:token new-token)
                              :text $ lorem-ipsum/loremIpsum
                          browser/set-timeout!
                            fn ()
                              d! $ :: action/remove-one $ {} (:token new-token)
                              , &unit
                            , 2000
                          , &unit
                    <> |Try
                  =< 16 nil
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        d! $ :: action/clear
                    <> |Clear
                comp-messages messages
                  {} $ :bottom? false
                  fn (info d!)
                    d! $ :: action/remove-one info
                when config/dev? $ comp-inspect |messages messages nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.css :as css
            respo.core :refer $ defcomp div span button <>
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
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
                bottom? $ = true $ .unwrap-or (get options :bottom?) nil
                message-style $ message-style-of message
                message-id $ or
                  .unwrap-or (get message :id) nil
                  , nil
                message-token $ or
                  .unwrap-or (get message :token) nil
                  , nil
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
                      on-remove!
                        {} (:id message-id) (:token message-token) (:index idx) (:time message-timestamp)
                        , d!
                  <> message-text nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'Dynamic 'Dynamic) 'Fn
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
          :schema $ :: 'String
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
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'MessageValue 'Number 'Bool
            :features $ #{} :js-ffi
            :generics $ [] 'MessageValue
        'message-style-of $ %{} 'CodeEntry (:doc "|读取消息样式并校验为 map。")
          :code $ quote $ defn message-style-of (message)
            &let
              style $ .unwrap-or (get message :style) nil
              if (nil? style) ({})
                if (map? style) style $ raise "|respo-message expected :style as a map"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
        'message-text-of $ %{} 'CodeEntry (:doc "|读取消息文本，非字符串值按显示文本转换。")
          :code $ quote $ defn message-text-of (message)
            &let
              text $ .unwrap-or (get message :text) nil
              if (string? text) text $ if (nil? text) | $ str text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
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
                bottom? $ = true $ .unwrap-or (get options :bottom?) nil
              list->
                {} $ :style $ if bottom?
                  {} (:position :fixed) (:bottom 0) (:right 0)
                  {} (:position :fixed) (:top 0) (:right 0)
                -> (message-entries messages)
                  sort $ fn (message m)
                    hint-fn $ {} (:return 'Number)
                      :args $ [] (:: 'Map 'Dynamic 'Dynamic) (:: 'Map 'Dynamic 'Dynamic)
                    - (message-time m) (message-time message)
                  map-indexed $ fn (idx message)
                    hint-fn $ {}
                      :args $ [] 'Number $ :: 'Map 'Dynamic 'Dynamic
                      :return $ :: 'List 'Dynamic
                    []
                      or
                        .unwrap-or (get message :id) nil
                        , |
                      comp-message idx message options on-remove!
          :examples $ []
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? true
              fn (info) nil
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? false
              fn (info) nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'String 'Dynamic) (:: 'Map 'Dynamic 'Dynamic) 'Fn
        'message-entries $ %{} 'CodeEntry (:doc "|去重并校验消息条目为 map。")
          :code $ quote $ defn message-entries (messages)
            foldl
              .to-list $ .distinct-values messages
              []
              defn %message-entry (acc message)
                hint-fn $ {}
                  :args $ []
                    :: 'List $ :: 'Map 'Dynamic 'Dynamic
                    , 'Dynamic
                  :return $ :: 'List $ :: 'Map 'Dynamic 'Dynamic
                if (map? message) (.append acc message)
                  raise $ str "|respo-message expected each message as a map, got: " $ type-of message
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'String 'Dynamic
            :return $ :: 'List $ :: 'Map 'Dynamic 'Dynamic
        'message-time $ %{} 'CodeEntry (:doc "|读取消息时间用于排序，缺失或非数字时为 0。")
          :code $ quote $ defn message-time (message)
            &let
              t $ .unwrap-or (get message :time) nil
              if (number? t) t 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.comp.messages
          :require
            respo.core :refer $ defcomp list-> div span <>
            respo-message.comp.message :refer $ comp-message
    'respo-message.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn? (detect-cdn?)
          :examples $ []
          :schema $ :: 'Bool
        'detect-cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn detect-cdn? ()
            cond
                exists? js/window
                , false
              (exists? js/process) (&= |true js/process.env.cdn)
              true false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
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
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? (detect-dev?)
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-message/) (:title |Message) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-message)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.config
    'respo-message.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Dynamic 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            let
                op-id $ generate-id!
                op-time $ shared/now-ms
              reset! *store $ next-store-of op op-id op-time
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app! render!
            add-watch! *store :changes $ fn (store prev) (render-app! render!)
            browser/set-timeout!
              fn () $ dispatch! $ :: action/create
                {} $ :text $ lorem-ipsum/loremIpsum
              , 0
            println "|app started!"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'next-store-of $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-store-of (op op-id op-time)
            let
                store @*store
              if
                action/message-action? $ &enum:nth op 0
                let
                    next-messages $ update-messages
                      decode-map-as
                        .unwrap-or (get store :messages) nil
                        :: 'Map 'Dynamic 'Dynamic
                      &enum:nth op 0
                      if
                        > (&enum:count op) 1
                        &enum:nth op 1
                        {}
                      , op-id op-time
                  .assoc store :messages next-messages
                match op
                  (:states cursor s)
                    decode-map-as
                      update-states store
                        decode-map-as cursor $ :: 'List 'Dynamic
                        , s
                      :: 'Map 'Dynamic 'Dynamic
                  _ $ do (eprintln "|Unhandled operation:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Enum 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Dynamic 'Dynamic
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
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!) (render-app! render!) (println "|Code update.")
            dispatch! $ :: action/create $ {}
              :text $ lorem-ipsum/loremIpsum
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            renderer (mount-target) (comp-container @*store)
              fn (op)
                if (enum? op) (dispatch! op) (raise |Expected-message-operation-enum)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] (:: 'JsNullish 'respo.dom/DomElement) 'respo.schema/Component $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'Dynamic
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
        'message $ %{} 'CodeEntry
          :doc "|Schema definition for a message object. Contains :id (auto-generated), :token (optional user-defined), :text (message content), :time (creation timestamp), and :style (custom CSS styles)."
          :code $ quote $ def message
            {} (:id nil) (:token nil) (:text |) (:time 0)
              :style $ {}
          :examples $ []
            quote $ &merge schema/message $ {} (:text |Hello) (:token |msg-1)
            quote $ &merge schema/message $ {} (:text "|Error occurred")
              :style $ {} $ :background-color (hsl 0 80 60)
          :schema $ :: 'Dynamic
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
          :schema $ :: 'Map
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
                  &merge schema/message $ decode-map-as op-data $ :: 'Map 'Tag 'Dynamic
                  {} (:id op-id) (:time op-time)
              (&= op action/remove-one)
                let
                    data $ decode-map-as op-data $ :: 'Map 'Dynamic 'Dynamic
                    token $ or
                      .unwrap-or (get data :token) nil
                      , nil
                    message-id $ or
                      .unwrap-or (get data :id) nil
                      , nil
                  if (non-nil? token)
                    -> messages (.to-pairs)
                      filter $ fn (pair)
                        let[] (k message) pair $ not $ &= token
                          or
                            .unwrap-or
                              get
                                decode-map-as message $ :: 'Map 'Dynamic 'Dynamic
                                , :token
                              , nil
                            , nil
                      .to-list
                      pairs-map
                    .dissoc messages message-id
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
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Dynamic 'Dynamic 'Dynamic 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
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
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-message.updater
          :require (respo-message.schema :as schema) (respo-message.action :as action)
