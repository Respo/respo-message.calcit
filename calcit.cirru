
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |respo-message)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-message.main/main!) (:mode :native) (:reload-fn 'respo-message.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    |respo-message.action $ %{} 'FileEntry
      :defs $ {}
        |clear $ %{} 'CodeEntry (:doc "|Action tag for clearing all messages. Use it with dispatch! to remove all displayed messages at once.")
          :code $ quote
            def clear $ gen-tag |message/clear
          :examples $ []
            quote $ assert= true (tag? respo-message.action/clear)
            quote $ assert= true (respo-message.action/message-action? respo-message.action/clear)
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Map 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        |create $ %{} 'CodeEntry (:doc "|Action tag for creating a new message. Use it with dispatch! to display a toast message.")
          :code $ quote
            def create $ gen-tag |message/create
          :examples $ []
            quote $ assert= true (tag? respo-message.action/create)
            quote $ assert= true (respo-message.action/message-action? respo-message.action/create)
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Map 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        |dict $ %{} 'CodeEntry (:doc "|Dictionary of all message action tags. Useful for pattern matching and validation.")
          :code $ quote
            def dict $ {} (:create create) (:remove-one remove-one) (:clear clear)
          :examples $ []
            quote $ assert= true
              option:some? $ get respo-message.action/dict :create
            quote $ assert= 3 (count respo-message.action/dict)
          :schema $ :: 'Dynamic
        |gen-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn gen-tag (x)
              turn-tag $ str x |_GEN_ 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Tag)
              :args $ [] 'Dynamic
        |message-action? $ %{} 'CodeEntry (:doc "|Predicate function to check if an operation is a message action. Returns true for create, clear, and remove-one actions.")
          :code $ quote
            defn message-action? (op)
              includes? (#{} clear create remove-one) op
          :examples $ []
            quote $ assert= true (respo-message.action/message-action? respo-message.action/create)
            quote $ assert= false (respo-message.action/message-action? :unknown-action)
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        |remove-one $ %{} 'CodeEntry (:doc "|Action tag for removing a specific message. Messages can be identified by :id or :token field.")
          :code $ quote
            def remove-one $ gen-tag |message/remove-one
          :examples $ []
            quote $ assert= true (tag? respo-message.action/remove-one)
            quote $ assert= true (respo-message.action/message-action? respo-message.action/remove-one)
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Map 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-message.action)
    |respo-message.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store)
              let
                  messages $ option:unwrap-or (get store :messages) ({})
                div
                  {}
                    :class-name $ str-spaced css/global css/fullscreen
                    :style $ {} (:padding 16)
                  div
                    {} $ :class-name css/row
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!)
                          let
                              new-token $ generate-id!
                            d! action/create $ merge schema/message
                              {} (:token new-token)
                                :text $ lorem-ipsum/loremIpsum
                            js/setTimeout
                              fn () $ d! action/remove-one
                                {} $ :token new-token
                              , 2000
                      <> |Try
                    =< 16 nil
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!) (d! action/clear nil)
                      <> |Clear
                  comp-messages messages
                    {} $ :bottom? false
                    fn (info d!) (d! action/remove-one info)
                  when config/dev? $ comp-inspect |messages messages nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-message.comp.container $ :require
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
    |respo-message.comp.message $ %{} 'FileEntry
      :defs $ {}
        |comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message (idx message options on-remove!)
              let
                  bottom? $ option:unwrap-or (get options :bottom?) false
                  message-style $ option:unwrap-or (get message :style) ({})
                  message-id $ option:unwrap-or (get message :id) nil
                  message-token $ option:unwrap-or (get message :token) nil
                  message-time $ option:unwrap-or (get message :time) 0
                  message-text $ option:unwrap-or (get message :text) ||
                [] (effect-fade message idx bottom?)
                  div
                    {} (:class-name css-message)
                      :style $ merge message-style
                        if bottom?
                          {} $ :bottom
                            str
                              + 8 $ * idx 40
                              , |px
                          {} (:top 8)
                            :transform $ str "|translate(0," (* idx 40) "|px)"
                      :on-click $ fn (e d!)
                        on-remove!
                          {} (:id message-id) (:token message-token) (:index idx) (:time message-time)
                          , d!
                    <> message-text nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number 'Map 'Map 'Fn
        |css-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-message $ {}
              |$0 $ {} (:position :absolute) (:right 8) (:height 32) (:line-height |32px) (:font-size 14)
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
                :box-shadow $ str "|0px 0px 4px " (hsl 0 0 10 0.1)
          :examples $ []
          :schema $ :: 'Dynamic
        |effect-fade $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-fade (message idx bottom?) (action el *local)
              let
                  dy $ if bottom? 0 (* idx 40)
                case-default action nil
                  :mount $ let
                      style $ unsafe-coerce (.-style el) 'JsObject
                    set! (.-transform style) (str "|translate(60px," dy "|px)")
                    set! (.-opacity style) |0
                    js/setTimeout
                      fn ()
                        set! (.-transform style) (str "|translate(0px," dy "|px)")
                        set! (.-opacity style) |1
                        set! (.-zIndex style) |-1
                      , 10
                  :unmount $ let
                      cloned $ unsafe-coerce (.!cloneNode el true) 'JsObject
                      style $ unsafe-coerce (.-style cloned) 'JsObject
                      parent $ unsafe-coerce (.-parentElement el) 'JsObject
                    .!appendChild parent cloned
                    js/setTimeout
                      fn ()
                        set! (.-transform style) (str "|translate(60px," dy "|px)")
                        set! (.-opacity style) |0
                      , 10
                    js/setTimeout
                      fn () $ .!remove cloned
                      , 400
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-message.comp.message $ :require
            respo.core :refer $ defcomp div <> span defeffect
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-message.schema :as schema
            respo.css :refer $ defstyle
    |respo-message.comp.messages $ %{} 'FileEntry
      :defs $ {}
        |comp-messages $ %{} 'CodeEntry (:doc "|Respo component that renders a list of toast messages. Pass messages map, options (with :bottom? flag for positioning), and on-remove! callback. Messages are auto-sorted by time (newest first) and rendered at fixed position (top-right or bottom-right).")
          :code $ quote
            defcomp comp-messages (messages options on-remove!)
              let
                  bottom? $ option:unwrap-or (get options :bottom?) false
                list->
                  {} $ :style
                    if bottom?
                      {} (:position :fixed) (:bottom 0) (:right 0)
                      {} (:position :fixed) (:top 0) (:right 0)
                  -> messages
                    either $ {}
                    vals
                    .to-list
                    sort $ fn (message m)
                      -
                        option:unwrap-or (get m :time) 0
                        option:unwrap-or (get message :time) 0
                    map-indexed $ fn (idx message)
                      []
                        option:unwrap-or (get message :id) |
                        comp-message idx message options on-remove!
          :examples $ []
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? true
              fn (info) nil
            quote $ respo-message.comp.messages/comp-messages ({})
              {} $ :bottom? false
              fn (info) nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'List 'Map 'Fn
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-message.comp.messages $ :require
            respo.core :refer $ defcomp list-> div span <>
            respo-message.comp.message :refer $ comp-message
    |respo-message.config $ %{} 'FileEntry
      :defs $ {}
        |cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              true false
          :examples $ []
          :schema $ :: 'Bool
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ let
                debug? false
              cond
                  exists? js/window
                  , debug?
                (exists? js/process) (not= |true js/process.env.release)
                true true
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/respo-message/) (:title |Message) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-message)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-message.config)
    |respo-message.main $ %{} 'FileEntry
      :defs $ {}
        |*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println |Dispatch: op
              let
                  op-id $ generate-id!
                  op-time $ js/Date.now
                  store @*store
                reset! *store $ if
                  action/message-action? $ nth op 0
                  update store :messages $ fn (x)
                    update-messages x (nth op 0) (nth op 1) op-id op-time
                  tag-match op
                    (:states cursor s) (update-states store cursor s)
                    _ $ do (eprintln "|Unhandled operation:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app! render!
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              js/setTimeout $ fn ()
                dispatch! $ :: action/create
                  {} $ :text (lorem-ipsum/loremIpsum)
              println "|app started!"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'String
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (clear-cache!) (render-app! render!) (println "|Code update.")
              dispatch! $ :: action/create
                {} $ :text (lorem-ipsum/loremIpsum)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*store) dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-message.main $ :require
            respo.core :refer $ render! clear-cache!
            respo.cursor :refer $ update-states
            respo.util.format :refer $ mute-element
            respo-message.comp.container :refer $ comp-container
            respo-message.schema :as schema
            |lorem-ipsum :as lorem-ipsum
            respo-message.updater :refer $ update-messages
            respo-message.action :as action
            respo-message.config :as config
    |respo-message.schema $ %{} 'FileEntry
      :defs $ {}
        |message $ %{} 'CodeEntry (:doc "|Schema definition for a message object. Contains :id (auto-generated), :token (optional user-defined), :text (message content), :time (creation timestamp), and :style (custom CSS styles).")
          :code $ quote
            def message $ {} (:id nil) (:token nil) (:text |) (:time 0)
              :style $ {}
          :examples $ []
            quote $ merge schema/message
              {} (:text |Hello) (:token |msg-1)
            quote $ merge schema/message
              {} (:text "|Error occurred")
                :style $ {}
                  :background-color $ hsl 0 80 60
          :schema $ :: 'Dynamic
        |store $ %{} 'CodeEntry (:doc "|Schema definition for the message store. Contains :messages (hashmap of messages by id) and :states (component states storage).")
          :code $ quote
            def store $ {}
              :messages $ {}
              :states $ {}
          :examples $ []
            quote $ schema/store
            quote $ merge schema/store
              {} $ :messages
                {} $ |msg-1
                  {} $ :text |Hello
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-message.schema)
    |respo-message.updater $ %{} 'FileEntry
      :defs $ {}
        |update-messages $ %{} 'CodeEntry (:doc "|Updater function that processes message actions and updates the messages state. Handles create, clear, and remove-one operations. Should be called from your main updater when action/message-action? returns true.")
          :code $ quote
            defn update-messages (messages op op-data op-id op-time)
              cond
                  = op action/clear
                  {}
                (= op action/create)
                  assoc messages op-id $ merge schema/message op-data
                    {} (:id op-id) (:time op-time)
                (= op action/remove-one)
                  let
                      token $ option:unwrap-or (get op-data :token) nil
                      message-id $ option:unwrap-or (get op-data :id) nil
                    if (some? token)
                      -> messages (to-pairs)
                        filter $ fn (pair)
                          let[] (k message) pair $ not= token
                            option:unwrap-or (get message :token) nil
                        pairs-map
                      dissoc messages message-id
                true messages
          :examples $ []
            quote $ assert= 1
              count $ respo-message.updater/update-messages ({}) respo-message.action/create
                {} $ :text |Hello
                , |id-1 1234567890
            quote $ assert= 0
              count $ respo-message.updater/update-messages
                {} $ :id-1
                  {} $ :text |Old
                , respo-message.action/clear nil |id-2 1234567891
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Map 'Dynamic 'Dynamic 'Dynamic 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |creates-message)
              :code $ quote
                assert= 1 $ count
                  update-messages ({}) action/create
                    {} $ :text |Hello
                    , |id-1 1234567890
              :tags $ #{} :fast :unit
            %{} 'TestEntry (:name |removes-message-by-token)
              :code $ quote
                assert= 0 $ count
                  update-messages
                    {} $ :old
                      {} $ :token |gone
                    , action/remove-one
                      {} $ :token |gone
                      , |id-2 1234567891
              :tags $ #{} :fast :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-message.updater $ :require (respo-message.schema :as schema) (respo-message.action :as action)
