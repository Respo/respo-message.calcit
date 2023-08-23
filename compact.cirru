
{} (:package |respo-message)
  :configs $ {} (:init-fn |respo-message.main/main!) (:reload-fn |respo-message.main/reload!) (:version |0.0.6)
    :modules $ [] |lilac/ |respo.calcit/ |memof/ |respo-ui.calcit/
  :entries $ {}
  :files $ {}
    |respo-message.action $ {}
      :defs $ {}
        |clear $ %{} :CodeEntry
          :code $ quote
            def clear $ gen-tag "\"message/clear"
          :doc |
        |create $ %{} :CodeEntry
          :code $ quote
            def create $ gen-tag "\"message/create"
          :doc |
        |dict $ %{} :CodeEntry
          :code $ quote
            def dict $ {} (:create create) (:remove-one remove-one) (:clear clear)
          :doc |
        |gen-tag $ %{} :CodeEntry
          :code $ quote
            defn gen-tag (x)
              turn-tag $ str x "\"_GEN_" 0
          :doc |
        |message-action? $ %{} :CodeEntry
          :code $ quote
            defn message-action? (op)
              includes? (#{} clear create remove-one) op
          :doc |
        |remove-one $ %{} :CodeEntry
          :code $ quote
            def remove-one $ gen-tag "\"message/remove-one"
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote (ns respo-message.action)
        :doc |
    |respo-message.comp.container $ {}
      :defs $ {}
        |comp-container $ %{} :CodeEntry
          :code $ quote
            defcomp comp-container (store)
              div
                {} $ :style
                  merge ui/global ui/fullscreen $ {} (:padding 16)
                div
                  {} $ :style ui/row
                  button
                    {} (:style ui/button)
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
                    {} (:style ui/button)
                      :on-click $ fn (e d!) (d! action/clear nil)
                    <> "\"Clear"
                comp-messages (:messages store)
                  {} $ :bottom? true
                  fn (info d!) (d! action/remove-one info)
                when config/dev? $ comp-inspect "\"messages" (:messages store) nil
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-message.comp.container $ :require
            hsl.core :refer $ hsl
            respo.core :refer $ defcomp div span button <>
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo-message.comp.messages :refer $ comp-messages
            respo-message.schema :as schema
            "\"lorem-ipsum" :as lorem-ipsum
            respo-message.action :as action
            respo.comp.inspect :refer $ comp-inspect
            respo-message.config :as config
        :doc |
    |respo-message.comp.message $ {}
      :defs $ {}
        |comp-message $ %{} :CodeEntry
          :code $ quote
            defcomp comp-message (idx message options on-remove!)
              [] (effect-fade message)
                div
                  {} (:class-name css-message)
                    :style $ merge (:style message)
                      if (:bottom? options)
                        {} $ :bottom
                          str
                            + 8 $ * idx 40
                            , "\"px"
                        {} (:top 8)
                          :transform $ str "|translate(0," (* idx 40) "|px)"
                    :on-click $ fn (e d!)
                      on-remove!
                        {}
                          :id $ :id message
                          :token $ :token message
                          :index idx
                          :time $ :time message
                        , d!
                  <> (:text message) nil
          :doc |
        |css-message $ %{} :CodeEntry
          :code $ quote
            defstyle css-message $ {}
              "\"$0" $ {} (:position :absolute) (:right 8) (:height 32) (:line-height |32px) (:font-size |14)
                :background-color $ hsl 0 0 100
                :border-style :solid
                :border-width "\"1px"
                :border-radius "\"6px"
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
                :box-shadow $ str "\"0px 0px 4px " (hsl 0 0 10 0.1)
          :doc |
        |effect-fade $ %{} :CodeEntry
          :code $ quote
            defeffect effect-fade (message) (action el *local)
              case-default action nil
                :mount $ let
                    style $ .-style el
                  set! (.-transform style) "\"translate(60px,0px)"
                  set! (.-opacity style) "\"0"
                  js/setTimeout
                    fn ()
                      set! (.-transform style) "\"translate(0px,0px)"
                      set! (.-opacity style) "\"1"
                      set! (.-zIndex style) "\"-1"
                    , 10
                :unmount $ let
                    cloned $ .!cloneNode el true
                    style $ .-style cloned
                  .!appendChild (.-parentElement el) cloned
                  js/setTimeout
                    fn ()
                      set! (.-transform style) "\"translate(60px,0px)"
                      set! (.-opacity style) "\"0"
                    , 10
                  js/setTimeout
                    fn () $ .!remove cloned
                    , 400
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-message.comp.message $ :require
            respo.core :refer $ defcomp div <> span defeffect
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-message.schema :as schema
            respo.css :refer $ defstyle
        :doc |
    |respo-message.comp.messages $ {}
      :defs $ {}
        |comp-messages $ %{} :CodeEntry
          :code $ quote
            defcomp comp-messages (messages options on-remove!)
              list->
                {} $ :style
                  {} (:position :fixed) (:bottom 0) (:right 0)
                -> messages
                  either $ {}
                  vals
                  .to-list
                  sort $ fn (message m)
                    - (:time m) (:time message)
                  map-indexed $ fn (idx message)
                    [] (:id message) (comp-message idx message options on-remove!)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-message.comp.messages $ :require
            respo.core :refer $ defcomp list-> div span <>
            respo-message.comp.message :refer $ comp-message
        :doc |
    |respo-message.config $ {}
      :defs $ {}
        |cdn? $ %{} :CodeEntry
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= "\"true" js/process.env.cdn)
              true false
          :doc |
        |dev? $ %{} :CodeEntry
          :code $ quote
            def dev? $ let
                debug? false
              cond
                  exists? js/window
                  , debug?
                (exists? js/process) (not= "\"true" js/process.env.release)
                :else true
          :doc |
        |site $ %{} :CodeEntry
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/respo-message/") (:title "\"Message") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-message")
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote (ns respo-message.config)
        :doc |
    |respo-message.main $ {}
      :defs $ {}
        |*store $ %{} :CodeEntry
          :code $ quote (defatom *store schema/store)
          :doc |
        |dispatch! $ %{} :CodeEntry
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println "\"Dispatch:" op
              let
                  op-id $ generate-id!
                  op-time $ js/Date.now
                  store @*store
                reset! *store $ if
                  action/message-action? $ nth op 0
                  update store :messages $ fn (x)
                    update-messages x (nth op 0) (nth op 1) op-id op-time
                  tag-match op
                      :states cursor s
                      update-states store cursor s
                    _ $ do (eprintln "\"Unhandled operation:" op) store
          :doc |
        |main! $ %{} :CodeEntry
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-app! render!
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              js/setTimeout $ fn ()
                dispatch! $ :: action/create
                  {} $ :text (lorem-ipsum/loremIpsum)
              println "|app started!"
          :doc |
        |mount-target $ %{} :CodeEntry
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :doc |
        |reload! $ %{} :CodeEntry
          :code $ quote
            defn reload! () (clear-cache!) (render-app! render!) (println "|Code update.")
              dispatch! $ :: action/create
                {} $ :text (lorem-ipsum/loremIpsum)
          :doc |
        |render-app! $ %{} :CodeEntry
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*store) dispatch!
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-message.main $ :require
            respo.core :refer $ render! clear-cache!
            respo.cursor :refer $ update-states
            respo.util.format :refer $ mute-element
            respo-message.comp.container :refer $ comp-container
            respo-message.schema :as schema
            "\"lorem-ipsum" :as lorem-ipsum
            respo-message.updater :refer $ update-messages
            respo-message.action :as action
            respo-message.config :as config
        :doc |
    |respo-message.schema $ {}
      :defs $ {}
        |message $ %{} :CodeEntry
          :code $ quote
            def message $ {} (:id nil) (:token nil) (:text "\"") (:time 0)
              :style $ {}
          :doc |
        |store $ %{} :CodeEntry
          :code $ quote
            def store $ {}
              :messages $ {}
              :states $ {}
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote (ns respo-message.schema)
        :doc |
    |respo-message.updater $ {}
      :defs $ {}
        |update-messages $ %{} :CodeEntry
          :code $ quote
            defn update-messages (messages op op-data op-id op-time)
              cond
                  = op action/clear
                  {}
                (= op action/create)
                  assoc messages op-id $ merge schema/message op-data
                    {} (:id op-id) (:time op-time)
                (= op action/remove-one)
                  if
                    some? $ :token op-data
                    -> messages (to-pairs)
                      filter $ fn (pair)
                        let[] (k message) pair $ not= (:token op-data) (:token message)
                      pairs-map
                    dissoc messages $ :id op-data
                true messages
          :doc |
      :ns $ %{} :CodeEntry
        :code $ quote
          ns respo-message.updater $ :require (respo-message.schema :as schema) (respo-message.action :as action)
        :doc |
