
{} (:package |respo-message)
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |respo-message.main/main!) (:output |src) (:port 6001) (:reload-fn |respo-message.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.6)
    :modules $ [] |lilac/ |respo.calcit/ |memof/ |respo-ui.calcit/
  :entries $ {}
  :files $ {}
    |respo-message.action $ {}
      :defs $ {}
        |clear $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528520516852) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528520552732) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528520516852) (:by |root) (:text |clear)
              |r $ %{} :Expr (:at 1528520516852) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1685801803130) (:by |5tTrKalIE) (:text |gen-tag)
                  |j $ %{} :Leaf (:at 1528520560056) (:by |root) (:text "|\"message/clear")
          :doc |
        |create $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528520506466) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528520572313) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528520506466) (:by |root) (:text |create)
              |r $ %{} :Expr (:at 1528520516852) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1685801812267) (:by |5tTrKalIE) (:text |gen-tag)
                  |j $ %{} :Leaf (:at 1528520575795) (:by |root) (:text "|\"message/create")
          :doc |
        |dict $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1529229114710) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529229121434) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1529229114710) (:by |root) (:text |dict)
              |r $ %{} :Expr (:at 1529229127156) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1529229127728) (:by |root) (:text |{})
                  |T $ %{} :Expr (:at 1529229114710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529229123376) (:by |root) (:text |:create)
                      |j $ %{} :Leaf (:at 1529229125847) (:by |root) (:text |create)
                  |j $ %{} :Expr (:at 1529229128207) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529229130425) (:by |root) (:text |:remove-one)
                      |j $ %{} :Leaf (:at 1529229131847) (:by |root) (:text |remove-one)
                  |r $ %{} :Expr (:at 1529229132756) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529229141541) (:by |root) (:text |:clear)
                      |j $ %{} :Leaf (:at 1529229142175) (:by |root) (:text |clear)
          :doc |
        |gen-tag $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1614325405022) (:by |5tTrKalIE)
            :data $ {}
              |T $ %{} :Leaf (:at 1614325405022) (:by |5tTrKalIE) (:text |defn)
              |j $ %{} :Leaf (:at 1685801795361) (:by |5tTrKalIE) (:text |gen-tag)
              |r $ %{} :Expr (:at 1614325405022) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614325406749) (:by |5tTrKalIE) (:text |x)
              |v $ %{} :Expr (:at 1614325407293) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1685801769331) (:by |5tTrKalIE) (:text |turn-tag)
                  |j $ %{} :Expr (:at 1614325424796) (:by |5tTrKalIE)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614325426412) (:by |5tTrKalIE) (:text |str)
                      |T $ %{} :Leaf (:at 1614325413218) (:by |5tTrKalIE) (:text |x)
                      |j $ %{} :Leaf (:at 1614325429288) (:by |5tTrKalIE) (:text "|\"_GEN_")
                      |r $ %{} :Leaf (:at 1614325430129) (:by |5tTrKalIE) (:text |0)
          :doc |
        |message-action? $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528524695341) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528524695341) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1528524695341) (:by |root) (:text |message-action?)
              |r $ %{} :Expr (:at 1528524695341) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528524699919) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1528524700827) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614325256843) (:by |5tTrKalIE) (:text |includes?)
                  |j $ %{} :Expr (:at 1528524703943) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528524704507) (:by |root) (:text |#{})
                      |j $ %{} :Leaf (:at 1528524710702) (:by |root) (:text |clear)
                      |r $ %{} :Leaf (:at 1528524712769) (:by |root) (:text |create)
                      |v $ %{} :Leaf (:at 1528524713839) (:by |root) (:text |remove-one)
                  |r $ %{} :Leaf (:at 1528524715365) (:by |root) (:text |op)
          :doc |
        |remove-one $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528520513291) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528520521169) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528520513291) (:by |root) (:text |remove-one)
              |r $ %{} :Expr (:at 1528520513291) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1685801826220) (:by |5tTrKalIE) (:text |gen-tag)
                  |j $ %{} :Leaf (:at 1528522462519) (:by |root) (:text "|\"message/remove-one")
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1528522309643) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1528522309643) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1528522309643) (:by |root) (:text |respo-message.action)
        :doc |
    |respo-message.comp.container $ {}
      :defs $ {}
        |comp-container $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui/global)
                              |n $ %{} :Leaf (:at 1614326066439) (:by |5tTrKalIE) (:text |ui/fullscreen)
                              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1528360074639) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1528360076063) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1528360076299) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528360076602) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1528360077111) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528360077799) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1528360079091) (:by |root) (:text |ui/row)
                      |T $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528360068620) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui/button)
                              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1515222127924) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1528391704977) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528391705937) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1528391706194) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1528391706408) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1528391707090) (:by |root) (:text |d!)
                                      |r $ %{} :Expr (:at 1528911625319) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1528911626284) (:by |root) (:text |let)
                                          |L $ %{} :Expr (:at 1528911626492) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1528911626798) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528911629316) (:by |root) (:text |new-token)
                                                  |j $ %{} :Expr (:at 1528911434641) (:by |root)
                                                    :data $ {}
                                                      |j $ %{} :Leaf (:at 1644596245617) (:by |5tTrKalIE) (:text |generate-id!)
                                          |T $ %{} :Expr (:at 1510939172486) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528391710641) (:by |root) (:text |d!)
                                              |j $ %{} :Leaf (:at 1528522358233) (:by |root) (:text |action/create)
                                              |r $ %{} :Expr (:at 1528391771320) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1528391772252) (:by |root) (:text |merge)
                                                  |L $ %{} :Leaf (:at 1528391776454) (:by |root) (:text |schema/message)
                                                  |T $ %{} :Expr (:at 1528391713465) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1528391714424) (:by |root) (:text |{})
                                                      |b $ %{} :Expr (:at 1528911433032) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1528911433875) (:by |root) (:text |:token)
                                                          |j $ %{} :Leaf (:at 1528911636983) (:by |root) (:text |new-token)
                                                      |j $ %{} :Expr (:at 1528391714762) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1528391716032) (:by |root) (:text |:text)
                                                          |j $ %{} :Expr (:at 1528440216633) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1572281380281) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
                                          |j $ %{} :Expr (:at 1528911601205) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528911604088) (:by |root) (:text |js/setTimeout)
                                              |j $ %{} :Expr (:at 1528911604504) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528911604811) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1528911607478) (:by |root)
                                                    :data $ {}
                                                  |r $ %{} :Expr (:at 1528911614241) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1528911615403) (:by |root) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1528911682992) (:by |root) (:text |action/remove-one)
                                                      |r $ %{} :Expr (:at 1528911619119) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1528911619885) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1528911622108) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1528911623072) (:by |root) (:text |:token)
                                                              |j $ %{} :Leaf (:at 1528911645496) (:by |root) (:text |new-token)
                                              |r $ %{} :Leaf (:at 1528911612852) (:by |root) (:text |2000)
                          |r $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1528360120056) (:by |root) (:text ||Try)
                      |j $ %{} :Expr (:at 1528360080499) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528360081658) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1528360082338) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1528360082910) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1528360083634) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528360084427) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1528360084625) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528360085183) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1528360085440) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528360086086) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1528360089803) (:by |root) (:text |ui/button)
                              |r $ %{} :Expr (:at 1528360091913) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528360093988) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1528360094752) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528360095043) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1528360095837) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1528360095331) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1528360097401) (:by |root) (:text |d!)
                                      |r $ %{} :Expr (:at 1528360098965) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1528360099989) (:by |root) (:text |d!)
                                          |f $ %{} :Leaf (:at 1528522355148) (:by |root) (:text |action/clear)
                                          |r $ %{} :Leaf (:at 1528360104404) (:by |root) (:text |nil)
                          |r $ %{} :Expr (:at 1528360106115) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528360106494) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1528360109990) (:by |root) (:text "|\"Clear")
                  |v $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614325332443) (:by |5tTrKalIE) (:text |comp-messages)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:messages)
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1528529145455) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528529145892) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1528529146812) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528529159567) (:by |root) (:text |:bottom?)
                              |j $ %{} :Leaf (:at 1528529235966) (:by |root) (:text |true)
                      |v $ %{} :Expr (:at 1529229242024) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529229247542) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1529229247809) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529229248737) (:by |root) (:text |info)
                              |j $ %{} :Leaf (:at 1529229250671) (:by |root) (:text |d!)
                          |r $ %{} :Expr (:at 1529229252363) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529229278303) (:by |root) (:text |d!)
                              |j $ %{} :Leaf (:at 1529229260160) (:by |root) (:text |action/remove-one)
                              |r $ %{} :Leaf (:at 1529229263447) (:by |root) (:text |info)
                  |x $ %{} :Expr (:at 1528525148231) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1528525150836) (:by |root) (:text |when)
                      |L $ %{} :Leaf (:at 1528525172904) (:by |root) (:text |config/dev?)
                      |T $ %{} :Expr (:at 1528525121704) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528525123974) (:by |root) (:text |comp-inspect)
                          |j $ %{} :Leaf (:at 1528525126530) (:by |root) (:text "|\"messages")
                          |r $ %{} :Expr (:at 1528525126767) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528525127990) (:by |root) (:text |:messages)
                              |j $ %{} :Leaf (:at 1528525129551) (:by |root) (:text |store)
                          |v $ %{} :Leaf (:at 1528525131089) (:by |root) (:text |nil)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.container)
            |v $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540961221067) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                        |w $ %{} :Leaf (:at 1528360071567) (:by |root) (:text |button)
                        |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516546723109) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528391846546) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1528391843482) (:by |root) (:text |comp-messages)
                |yT $ %{} :Expr (:at 1528391780833) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528391785167) (:by |root) (:text |respo-message.schema)
                    |r $ %{} :Leaf (:at 1528391785573) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528391786594) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1528440220433) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528440222223) (:by |root) (:text "|\"lorem-ipsum")
                    |r $ %{} :Leaf (:at 1528440223110) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528440236215) (:by |root) (:text |lorem-ipsum)
                |yr $ %{} :Expr (:at 1528522362204) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528522367754) (:by |root) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1528522370259) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528522372360) (:by |root) (:text |action)
                |yv $ %{} :Expr (:at 1528525136401) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528525141798) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1528525143311) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1528525143509) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1528525146386) (:by |root) (:text |comp-inspect)
                |yx $ %{} :Expr (:at 1528525160605) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528525180385) (:by |root) (:text |respo-message.config)
                    |r $ %{} :Leaf (:at 1528525197989) (:by |root) (:text |:as)
                    |t $ %{} :Leaf (:at 1528525200155) (:by |root) (:text |config)
        :doc |
    |respo-message.comp.message $ {}
      :defs $ {}
        |comp-message $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                  |r $ %{} :Leaf (:at 1528529177917) (:by |root) (:text |options)
                  |v $ %{} :Leaf (:at 1529229288034) (:by |root) (:text |on-remove!)
              |v $ %{} :Expr (:at 1572678703321) (:by |5tTrKalIE)
                :data $ {}
                  |D $ %{} :Leaf (:at 1572678703949) (:by |5tTrKalIE) (:text |[])
                  |L $ %{} :Expr (:at 1572678704546) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572678708741) (:by |5tTrKalIE) (:text |effect-fade)
                      |j $ %{} :Leaf (:at 1572679103599) (:by |5tTrKalIE) (:text |message)
                  |T $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1669657481089) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1669657482802) (:by |5tTrKalIE) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1669657485383) (:by |5tTrKalIE) (:text |css-message)
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |merge)
                                  |n $ %{} :Expr (:at 1528392251243) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528392251991) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1528392252994) (:by |root) (:text |message)
                                  |r $ %{} :Expr (:at 1528529182331) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1528529182866) (:by |root) (:text |if)
                                      |L $ %{} :Expr (:at 1528529183301) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1528529186560) (:by |root) (:text |:bottom?)
                                          |j $ %{} :Leaf (:at 1528529187401) (:by |root) (:text |options)
                                      |P $ %{} :Expr (:at 1510939172486) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                          |b $ %{} :Expr (:at 1510939172486) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528529193968) (:by |root) (:text |:bottom)
                                              |j $ %{} :Expr (:at 1669657566012) (:by |5tTrKalIE)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1669657566728) (:by |5tTrKalIE) (:text |str)
                                                  |T $ %{} :Expr (:at 1669657563796) (:by |5tTrKalIE)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1669657564441) (:by |5tTrKalIE) (:text |+)
                                                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |8)
                                                      |b $ %{} :Expr (:at 1669657565347) (:by |5tTrKalIE)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1669657565347) (:by |5tTrKalIE) (:text |*)
                                                          |b $ %{} :Leaf (:at 1669657565347) (:by |5tTrKalIE) (:text |idx)
                                                          |h $ %{} :Leaf (:at 1669657835607) (:by |5tTrKalIE) (:text |40)
                                                  |b $ %{} :Leaf (:at 1669657569577) (:by |5tTrKalIE) (:text "|\"px")
                                      |T $ %{} :Expr (:at 1510939172486) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                          |b $ %{} :Expr (:at 1510939172486) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:top)
                                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |8)
                                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:transform)
                                              |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |str)
                                                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||translate(0,")
                                                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*)
                                                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                                                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |40)
                                                  |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||px)")
                          |r $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1515222115301) (:by |root) (:text |:on-click)
                              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1528392222423) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1529229292421) (:by |root) (:text |on-remove!)
                                      |l $ %{} :Expr (:at 1528521563946) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1528521564404) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1528521564692) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528521566470) (:by |root) (:text |:id)
                                              |j $ %{} :Expr (:at 1528521567706) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528521568558) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1528521570040) (:by |root) (:text |message)
                                          |n $ %{} :Expr (:at 1528911389880) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528911390949) (:by |root) (:text |:token)
                                              |j $ %{} :Expr (:at 1528911391328) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528911394744) (:by |root) (:text |:token)
                                                  |j $ %{} :Leaf (:at 1528911395873) (:by |root) (:text |message)
                                          |r $ %{} :Expr (:at 1528521571587) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528521575197) (:by |root) (:text |:index)
                                              |j $ %{} :Leaf (:at 1528521575883) (:by |root) (:text |idx)
                                          |v $ %{} :Expr (:at 1528521576700) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528521578112) (:by |root) (:text |:time)
                                              |j $ %{} :Expr (:at 1528521579148) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528521579655) (:by |root) (:text |:time)
                                                  |j $ %{} :Leaf (:at 1528521580986) (:by |root) (:text |message)
                                      |s $ %{} :Leaf (:at 1529229301018) (:by |root) (:text |d!)
                      |r $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                          |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |nil)
          :doc |
        |css-message $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1669657469727) (:by |5tTrKalIE) (:text |defstyle)
              |j $ %{} :Leaf (:at 1669657500731) (:by |5tTrKalIE) (:text |css-message)
              |r $ %{} :Expr (:at 1669657470569) (:by |5tTrKalIE)
                :data $ {}
                  |D $ %{} :Leaf (:at 1669657471122) (:by |5tTrKalIE) (:text |{})
                  |T $ %{} :Expr (:at 1669657472663) (:by |5tTrKalIE)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1669657474512) (:by |5tTrKalIE) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:absolute)
                          |v $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:right)
                              |j $ %{} :Leaf (:at 1669657601886) (:by |5tTrKalIE) (:text |8)
                          |x $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |32)
                          |y $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||32px)
                          |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||14)
                          |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1528392304095) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528392304559) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1528392305194) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1528392305413) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1528392585183) (:by |root) (:text |100)
                          |yl $ %{} :Expr (:at 1528525891916) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528525896008) (:by |root) (:text |:border-style)
                              |j $ %{} :Leaf (:at 1528525899053) (:by |root) (:text |:solid)
                          |yo $ %{} :Expr (:at 1528525884255) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528525887648) (:by |root) (:text |:border-width)
                              |j $ %{} :Leaf (:at 1528525889378) (:by |root) (:text "|\"1px")
                          |yp $ %{} :Expr (:at 1528392613177) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528392620740) (:by |root) (:text |:border-radius)
                              |j $ %{} :Leaf (:at 1669657947291) (:by |5tTrKalIE) (:text "|\"6px")
                          |ypT $ %{} :Expr (:at 1528525875225) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528525878562) (:by |root) (:text |:border-color)
                              |j $ %{} :Expr (:at 1528392574979) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528392575407) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1528392604953) (:by |root) (:text |200)
                                  |r $ %{} :Leaf (:at 1528392608707) (:by |root) (:text |50)
                                  |v $ %{} :Leaf (:at 1669657930596) (:by |5tTrKalIE) (:text |90)
                          |yq $ %{} :Expr (:at 1528392627127) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528392628093) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1528392631313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528392631732) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1528392632000) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1528392632200) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1528392633454) (:by |root) (:text |60)
                          |yv $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||0 16px")
                          |yx $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |64)
                          |yy $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text-align)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:left)
                          |yyT $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:hidden)
                          |yyj $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text-overflow)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:ellipsis)
                          |yyr $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:max-width)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |320)
                          |yyv $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:pointer)
                          |yyx $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:transition-duration)
                              |j $ %{} :Leaf (:at 1669657803472) (:by |5tTrKalIE) (:text ||400ms)
                          |z $ %{} :Expr (:at 1669657876206) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1669657878730) (:by |5tTrKalIE) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1669657879115) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669657879608) (:by |5tTrKalIE) (:text |str)
                                  |b $ %{} :Leaf (:at 1669657911926) (:by |5tTrKalIE) (:text "|\"0px 0px 4px ")
                                  |h $ %{} :Expr (:at 1669657891219) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1669657891673) (:by |5tTrKalIE) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1669657891977) (:by |5tTrKalIE) (:text |0)
                                      |h $ %{} :Leaf (:at 1669657892221) (:by |5tTrKalIE) (:text |0)
                                      |j $ %{} :Leaf (:at 1669657938329) (:by |5tTrKalIE) (:text |10)
                                      |l $ %{} :Leaf (:at 1669657908165) (:by |5tTrKalIE) (:text |0.1)
          :doc |
        |effect-fade $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1572678709484) (:by |5tTrKalIE)
            :data $ {}
              |T $ %{} :Leaf (:at 1572678711783) (:by |5tTrKalIE) (:text |defeffect)
              |j $ %{} :Leaf (:at 1572678709484) (:by |5tTrKalIE) (:text |effect-fade)
              |r $ %{} :Expr (:at 1572678709484) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572679107784) (:by |5tTrKalIE) (:text |message)
              |v $ %{} :Expr (:at 1572678713730) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572678715693) (:by |5tTrKalIE) (:text |action)
                  |j $ %{} :Leaf (:at 1572678716027) (:by |5tTrKalIE) (:text |el)
                  |r $ %{} :Leaf (:at 1572678717886) (:by |5tTrKalIE) (:text |*local)
              |x $ %{} :Expr (:at 1572678728122) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614324825797) (:by |5tTrKalIE) (:text |case-default)
                  |j $ %{} :Leaf (:at 1572678732389) (:by |5tTrKalIE) (:text |action)
                  |n $ %{} :Leaf (:at 1619591569274) (:by |5tTrKalIE) (:text |nil)
                  |r $ %{} :Expr (:at 1572678732699) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572678734274) (:by |5tTrKalIE) (:text |:mount)
                      |j $ %{} :Expr (:at 1572678788807) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572678789884) (:by |5tTrKalIE) (:text |let)
                          |j $ %{} :Expr (:at 1572678790061) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Expr (:at 1572678790221) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572678790852) (:by |5tTrKalIE) (:text |style)
                                  |j $ %{} :Expr (:at 1572678791174) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572678793824) (:by |5tTrKalIE) (:text |.-style)
                                      |j $ %{} :Leaf (:at 1572678794196) (:by |5tTrKalIE) (:text |el)
                          |r $ %{} :Expr (:at 1572678795447) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572678797876) (:by |5tTrKalIE) (:text |set!)
                              |j $ %{} :Expr (:at 1572678798241) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669657211003) (:by |5tTrKalIE) (:text |.-transform)
                                  |j $ %{} :Leaf (:at 1572678807939) (:by |5tTrKalIE) (:text |style)
                              |r $ %{} :Leaf (:at 1669657274510) (:by |5tTrKalIE) (:text "|\"translate(60px,0px)")
                          |t $ %{} :Expr (:at 1572680044797) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |set!)
                              |j $ %{} :Expr (:at 1572680044797) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |.-opacity)
                                  |j $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |style)
                              |r $ %{} :Leaf (:at 1572680046361) (:by |5tTrKalIE) (:text "|\"0")
                          |v $ %{} :Expr (:at 1572678844367) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644595980493) (:by |5tTrKalIE) (:text |js/setTimeout)
                              |r $ %{} :Expr (:at 1572678855015) (:by |5tTrKalIE)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1572678855899) (:by |5tTrKalIE) (:text |fn)
                                  |L $ %{} :Expr (:at 1572678856286) (:by |5tTrKalIE)
                                    :data $ {}
                                  |T $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |set!)
                                      |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1669657204802) (:by |5tTrKalIE) (:text |.-transform)
                                          |j $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |style)
                                      |r $ %{} :Leaf (:at 1669657615062) (:by |5tTrKalIE) (:text "|\"translate(0px,0px)")
                                  |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |set!)
                                      |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572680036111) (:by |5tTrKalIE) (:text |.-opacity)
                                          |j $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |style)
                                      |r $ %{} :Leaf (:at 1572680038879) (:by |5tTrKalIE) (:text "|\"1")
                                  |n $ %{} :Expr (:at 1669657637276) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1669657638112) (:by |5tTrKalIE) (:text |set!)
                                      |b $ %{} :Expr (:at 1669657638558) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1669657642665) (:by |5tTrKalIE) (:text |.-zIndex)
                                          |b $ %{} :Leaf (:at 1669657643511) (:by |5tTrKalIE) (:text |style)
                                      |h $ %{} :Leaf (:at 1669657645614) (:by |5tTrKalIE) (:text "|\"-1")
                              |v $ %{} :Leaf (:at 1669657769019) (:by |5tTrKalIE) (:text |10)
                  |v $ %{} :Expr (:at 1572678740834) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572678744603) (:by |5tTrKalIE) (:text |:unmount)
                      |j $ %{} :Expr (:at 1572679870834) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572679871232) (:by |5tTrKalIE) (:text |let)
                          |j $ %{} :Expr (:at 1572679871458) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Expr (:at 1572679871621) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572679873081) (:by |5tTrKalIE) (:text |cloned)
                                  |j $ %{} :Expr (:at 1572679873571) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1644596300778) (:by |5tTrKalIE) (:text |.!cloneNode)
                                      |j $ %{} :Leaf (:at 1572679878362) (:by |5tTrKalIE) (:text |el)
                                      |r $ %{} :Leaf (:at 1572679879501) (:by |5tTrKalIE) (:text |true)
                              |j $ %{} :Expr (:at 1572679880681) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572679881561) (:by |5tTrKalIE) (:text |style)
                                  |j $ %{} :Expr (:at 1572679882696) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572679883676) (:by |5tTrKalIE) (:text |.-style)
                                      |j $ %{} :Leaf (:at 1572679885580) (:by |5tTrKalIE) (:text |cloned)
                          |r $ %{} :Expr (:at 1572679889306) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644596304571) (:by |5tTrKalIE) (:text |.!appendChild)
                              |j $ %{} :Expr (:at 1572679906795) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572679910354) (:by |5tTrKalIE) (:text |.-parentElement)
                                  |j $ %{} :Leaf (:at 1572679911232) (:by |5tTrKalIE) (:text |el)
                              |r $ %{} :Leaf (:at 1572679915363) (:by |5tTrKalIE) (:text |cloned)
                          |v $ %{} :Expr (:at 1572679917314) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644595988674) (:by |5tTrKalIE) (:text |js/setTimeout)
                              |r $ %{} :Expr (:at 1572679920231) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572679920512) (:by |5tTrKalIE) (:text |fn)
                                  |j $ %{} :Expr (:at 1572679920792) (:by |5tTrKalIE)
                                    :data $ {}
                                  |r $ %{} :Expr (:at 1572679928337) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572679928337) (:by |5tTrKalIE) (:text |set!)
                                      |j $ %{} :Expr (:at 1572679928337) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1669657217113) (:by |5tTrKalIE) (:text |.-transform)
                                          |j $ %{} :Leaf (:at 1572679928337) (:by |5tTrKalIE) (:text |style)
                                      |r $ %{} :Leaf (:at 1669657276386) (:by |5tTrKalIE) (:text "|\"translate(60px,0px)")
                                  |v $ %{} :Expr (:at 1572680050025) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |set!)
                                      |j $ %{} :Expr (:at 1572680050025) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |.-opacity)
                                          |j $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |style)
                                      |r $ %{} :Leaf (:at 1572680052342) (:by |5tTrKalIE) (:text "|\"0")
                              |v $ %{} :Leaf (:at 1669657770907) (:by |5tTrKalIE) (:text |10)
                          |x $ %{} :Expr (:at 1572679934643) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1644595993998) (:by |5tTrKalIE) (:text |js/setTimeout)
                              |r $ %{} :Expr (:at 1572679954170) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572679954396) (:by |5tTrKalIE) (:text |fn)
                                  |j $ %{} :Expr (:at 1572679954695) (:by |5tTrKalIE)
                                    :data $ {}
                                  |r $ %{} :Expr (:at 1572679955817) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1644596307558) (:by |5tTrKalIE) (:text |.!remove)
                                      |j $ %{} :Leaf (:at 1572679959725) (:by |5tTrKalIE) (:text |cloned)
                              |v $ %{} :Leaf (:at 1669657797988) (:by |5tTrKalIE) (:text |400)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.message)
            |v $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                |n $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540961225660) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                        |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1572678725038) (:by |5tTrKalIE) (:text |defeffect)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516546729079) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1528392317239) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614324843782) (:by |5tTrKalIE) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1528392321723) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1528392321951) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1528392322760) (:by |root) (:text |hsl)
                |x $ %{} :Expr (:at 1528521378255) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528521384540) (:by |root) (:text |respo-message.schema)
                    |r $ %{} :Leaf (:at 1528521384927) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528521385649) (:by |root) (:text |schema)
                |y $ %{} :Expr (:at 1669657463541) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1669657464664) (:by |5tTrKalIE) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1669657466621) (:by |5tTrKalIE) (:text |:refer)
                    |h $ %{} :Expr (:at 1669657466806) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1669657467918) (:by |5tTrKalIE) (:text |defstyle)
        :doc |
    |respo-message.comp.messages $ {}
      :defs $ {}
        |comp-messages $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-messages)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |messages)
                  |j $ %{} :Leaf (:at 1528529167100) (:by |root) (:text |options)
                  |r $ %{} :Leaf (:at 1529229283855) (:by |root) (:text |on-remove!)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1510940595266) (:by |root) (:text |list->)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1528440292142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528440293907) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1528440294146) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528440294471) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1669657330589) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669657334710) (:by |5tTrKalIE) (:text |:position)
                                  |b $ %{} :Leaf (:at 1669657336718) (:by |5tTrKalIE) (:text |:fixed)
                              |h $ %{} :Expr (:at 1669657363889) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669657364992) (:by |5tTrKalIE) (:text |:bottom)
                                  |b $ %{} :Leaf (:at 1669657365293) (:by |5tTrKalIE) (:text |0)
                              |l $ %{} :Expr (:at 1669657367376) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1669657368644) (:by |5tTrKalIE) (:text |:right)
                                  |b $ %{} :Leaf (:at 1669657369229) (:by |5tTrKalIE) (:text |0)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619591838170) (:by |5tTrKalIE) (:text |->)
                      |b $ %{} :Leaf (:at 1619591841777) (:by |5tTrKalIE) (:text |messages)
                      |j $ %{} :Expr (:at 1614325573692) (:by |5tTrKalIE)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1614325584140) (:by |5tTrKalIE) (:text |either)
                          |j $ %{} :Expr (:at 1614325575884) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614325576417) (:by |5tTrKalIE) (:text |{})
                      |n $ %{} :Expr (:at 1619591842799) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528391863867) (:by |root) (:text |vals)
                      |nT $ %{} :Expr (:at 1614325223625) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623719730432) (:by |5tTrKalIE) (:text |.to-list)
                      |o $ %{} :Expr (:at 1528526572242) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614324735501) (:by |5tTrKalIE) (:text |sort)
                          |j $ %{} :Expr (:at 1528526578695) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528526578979) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1528526579306) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528526580619) (:by |root) (:text |message)
                                  |j $ %{} :Leaf (:at 1614324740960) (:by |5tTrKalIE) (:text |m)
                              |r $ %{} :Expr (:at 1614324742808) (:by |5tTrKalIE)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1614324744361) (:by |5tTrKalIE) (:text |-)
                                  |j $ %{} :Expr (:at 1528526582102) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528526583545) (:by |root) (:text |:time)
                                      |j $ %{} :Leaf (:at 1614324747489) (:by |5tTrKalIE) (:text |m)
                                  |r $ %{} :Expr (:at 1614324982557) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614324982557) (:by |5tTrKalIE) (:text |:time)
                                      |j $ %{} :Leaf (:at 1614324982557) (:by |5tTrKalIE) (:text |message)
                      |r $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528527730960) (:by |root) (:text |map-indexed)
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |L $ %{} :Leaf (:at 1528527732937) (:by |root) (:text |idx)
                                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |[])
                                  |f $ %{} :Expr (:at 1528527840799) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528527842769) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1528527843825) (:by |root) (:text |message)
                                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
                                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                                      |v $ %{} :Leaf (:at 1528529174932) (:by |root) (:text |options)
                                      |x $ %{} :Leaf (:at 1529229285752) (:by |root) (:text |on-remove!)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.messages)
            |v $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                |b $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540961216673) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1510940599505) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.message)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
        :doc |
    |respo-message.config $ {}
      :defs $ {}
        |cdn? $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
            :data $ {}
              |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |def)
              |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |cdn?)
              |r $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |cond)
                  |j $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |exists?)
                          |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/window)
                      |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |false)
                  |r $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |exists?)
                          |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/process)
                      |j $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |=)
                          |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text "|\"true")
                          |r $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/process.env.cdn)
                  |v $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614324592420) (:by |5tTrKalIE) (:text |true)
                      |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |false)
          :doc |
        |dev? $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
            :data $ {}
              |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |def)
              |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |dev?)
              |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |let)
                  |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |debug?)
                          |j $ %{} :Leaf (:at 1614324598152) (:by |5tTrKalIE) (:text |false)
                  |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |cond)
                      |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |exists?)
                              |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/window)
                          |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |debug?)
                      |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |exists?)
                              |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/process)
                          |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |not=)
                              |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text "|\"true")
                              |r $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/process.env.release)
                      |v $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |:else)
                          |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |true)
          :doc |
        |site $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528303955753) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1528303955753) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1528303955753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1572280534263) (:by |5tTrKalIE) (:text "|\"http://localhost:8100/main-fonts.css")
                  |v $ %{} :Expr (:at 1528303955753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1572280531072) (:by |5tTrKalIE) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                  |x $ %{} :Expr (:at 1528303955753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1528303977249) (:by |root) (:text "|\"http://cdn.tiye.me/respo-message/")
                  |yT $ %{} :Expr (:at 1528303955753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1528303989279) (:by |root) (:text "|\"Message")
                  |yj $ %{} :Expr (:at 1528303955753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1528303996833) (:by |root) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                  |yr $ %{} :Expr (:at 1572280520594) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572280522696) (:by |5tTrKalIE) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1572280520594) (:by |5tTrKalIE) (:text "|\"respo-message")
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1528303955753) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |respo-message.config)
        :doc |
    |respo-message.main $ {}
      :defs $ {}
        |*store $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614324626539) (:by |5tTrKalIE) (:text |defatom)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
              |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |schema/store)
          :doc |
        |dispatch! $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1572280592734) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |when)
                  |j $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1572280592734) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |println)
                      |j $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |op)
              |x $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |op-id)
                          |j $ %{} :Expr (:at 1510939172486) (:by nil)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1644595848724) (:by |5tTrKalIE) (:text |generate-id!)
                      |X $ %{} :Expr (:at 1528391735056) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528391740088) (:by |root) (:text |op-time)
                          |j $ %{} :Expr (:at 1528391740397) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1644595835512) (:by |5tTrKalIE) (:text |js/Date.now)
                      |l $ %{} :Expr (:at 1528523934093) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528523936881) (:by |root) (:text |store)
                          |j $ %{} :Leaf (:at 1528523939420) (:by |root) (:text |@*store)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
                      |n $ %{} :Expr (:at 1692541993482) (:by |5tTrKalIE)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1692541994165) (:by |5tTrKalIE) (:text |if)
                          |L $ %{} :Expr (:at 1692541995942) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692541995631) (:by |5tTrKalIE) (:text |action/message-action?)
                              |b $ %{} :Expr (:at 1692541998062) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692541999015) (:by |5tTrKalIE) (:text |nth)
                                  |b $ %{} :Leaf (:at 1692541999500) (:by |5tTrKalIE) (:text |op)
                                  |h $ %{} :Leaf (:at 1692541999916) (:by |5tTrKalIE) (:text |0)
                          |P $ %{} :Expr (:at 1692542005628) (:by |5tTrKalIE)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |update)
                              |b $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |store)
                              |h $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |:messages)
                              |l $ %{} :Expr (:at 1692542005628) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |fn)
                                  |b $ %{} :Expr (:at 1692542005628) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |x)
                                  |h $ %{} :Expr (:at 1692542005628) (:by |5tTrKalIE)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |update-messages)
                                      |b $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |x)
                                      |h $ %{} :Expr (:at 1692542017328) (:by |5tTrKalIE)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1692542018935) (:by |5tTrKalIE) (:text |nth)
                                          |T $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |op)
                                          |b $ %{} :Leaf (:at 1692542019508) (:by |5tTrKalIE) (:text |0)
                                      |l $ %{} :Expr (:at 1692542020541) (:by |5tTrKalIE)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1692542021452) (:by |5tTrKalIE) (:text |nth)
                                          |T $ %{} :Leaf (:at 1692542191188) (:by |5tTrKalIE) (:text |op)
                                          |b $ %{} :Leaf (:at 1692542022374) (:by |5tTrKalIE) (:text |1)
                                      |o $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |op-id)
                                      |q $ %{} :Leaf (:at 1692542005628) (:by |5tTrKalIE) (:text |op-time)
                          |T $ %{} :Expr (:at 1528523925774) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692542026830) (:by |5tTrKalIE) (:text |tag-match)
                              |b $ %{} :Leaf (:at 1692542028812) (:by |5tTrKalIE) (:text |op)
                              |j $ %{} :Expr (:at 1528523949097) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1528523949273) (:by |root)
                                    :data $ {}
                                      |r $ %{} :Leaf (:at 1528523954713) (:by |root) (:text |:states)
                                      |t $ %{} :Leaf (:at 1692542032500) (:by |5tTrKalIE) (:text |cursor)
                                      |u $ %{} :Leaf (:at 1692542032734) (:by |5tTrKalIE) (:text |s)
                                  |j $ %{} :Expr (:at 1614314253050) (:by |5tTrKalIE)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1614314254531) (:by |5tTrKalIE) (:text |update-states)
                                      |L $ %{} :Leaf (:at 1614314256339) (:by |5tTrKalIE) (:text |store)
                                      |P $ %{} :Leaf (:at 1692542035609) (:by |5tTrKalIE) (:text |cursor)
                                      |Y $ %{} :Leaf (:at 1692542035876) (:by |5tTrKalIE) (:text |s)
                              |v $ %{} :Expr (:at 1528524666119) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692542041644) (:by |5tTrKalIE) (:text |_)
                                  |j $ %{} :Expr (:at 1528524667856) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528524668349) (:by |root) (:text |do)
                                      |j $ %{} :Expr (:at 1528524669307) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1692542043291) (:by |5tTrKalIE) (:text |eprintln)
                                          |j $ %{} :Leaf (:at 1528524684483) (:by |root) (:text "|\"Unhandled operation:")
                                          |r $ %{} :Leaf (:at 1528524684828) (:by |root) (:text |op)
                                      |r $ %{} :Leaf (:at 1528524673954) (:by |root) (:text |store)
          :doc |
        |main! $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
              |u $ %{} :Expr (:at 1572280627898) (:by |5tTrKalIE)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |println)
                  |j $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1572280627898) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |if)
                      |j $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"release")
              |y $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
              |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614325280377) (:by |5tTrKalIE) (:text |store)
                          |j $ %{} :Leaf (:at 1614325281481) (:by |5tTrKalIE) (:text |prev)
                      |r $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
              |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |js/setTimeout)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                      |r $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1692542151464) (:by |5tTrKalIE)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1692542152144) (:by |5tTrKalIE) (:text |::)
                              |L $ %{} :Leaf (:at 1692542152613) (:by |5tTrKalIE) (:text |action/create)
                              |T $ %{} :Expr (:at 1528440002271) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528440003315) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1528440003647) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528440004520) (:by |root) (:text |:text)
                                      |j $ %{} :Expr (:at 1528440193138) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572281360053) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
              |yr $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||app started!")
          :doc |
        |mount-target $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1644596060678) (:by |5tTrKalIE) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||.app)
          :doc |
        |reload! $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |reload!)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |clear-cache!)
              |x $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
              |y $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||Code update.")
              |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1692542162896) (:by |5tTrKalIE)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1692542163546) (:by |5tTrKalIE) (:text |::)
                      |L $ %{} :Leaf (:at 1692542163928) (:by |5tTrKalIE) (:text |action/create)
                      |T $ %{} :Expr (:at 1528392523011) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528392523392) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1528392523684) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528392525266) (:by |root) (:text |:text)
                              |j $ %{} :Expr (:at 1528440245410) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572281370514) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
          :doc |
        |render-app! $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |renderer)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |renderer)
                  |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |@*store)
                  |t $ %{} :Leaf (:at 1692542178850) (:by |5tTrKalIE) (:text |dispatch!)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.main)
            |r $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |clear-cache!)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1614314187931) (:by |5tTrKalIE) (:text |update-states)
                |v $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mute-element)
                |x $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.container)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
                |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.schema)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |schema)
                |yr $ %{} :Expr (:at 1528440195419) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528440196771) (:by |root) (:text "|\"lorem-ipsum")
                    |r $ %{} :Leaf (:at 1528440197429) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528440197852) (:by |root) (:text |lorem-ipsum)
                |yv $ %{} :Expr (:at 1528520794905) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528520928432) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1528520801581) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1528520801763) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1528520804255) (:by |root) (:text |update-messages)
                |yy $ %{} :Expr (:at 1528522520031) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528522524884) (:by |root) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1528522525485) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528522526884) (:by |root) (:text |action)
                |yyT $ %{} :Expr (:at 1572280594833) (:by |5tTrKalIE)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572280600329) (:by |5tTrKalIE) (:text |respo-message.config)
                    |r $ %{} :Leaf (:at 1572280600749) (:by |5tTrKalIE) (:text |:as)
                    |v $ %{} :Leaf (:at 1572280601458) (:by |5tTrKalIE) (:text |config)
        :doc |
    |respo-message.schema $ {}
      :defs $ {}
        |message $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528391493047) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528391495172) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1528391493047) (:by |root) (:text |message)
              |r $ %{} :Expr (:at 1528391493047) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528391496919) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1528391497845) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528391500176) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1528391501274) (:by |root) (:text |nil)
                  |n $ %{} :Expr (:at 1528911373534) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528911375030) (:by |root) (:text |:token)
                      |j $ %{} :Leaf (:at 1528911377027) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1528391501803) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528391503060) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1528391504106) (:by |root) (:text "|\"")
                  |v $ %{} :Expr (:at 1528391504542) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528391506399) (:by |root) (:text |:time)
                      |j $ %{} :Leaf (:at 1528391510504) (:by |root) (:text |0)
                  |x $ %{} :Expr (:at 1528391511114) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528391513989) (:by |root) (:text |:style)
                      |j $ %{} :Expr (:at 1528391514242) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528391514562) (:by |root) (:text |{})
          :doc |
        |store $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528391593443) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.schema)
        :doc |
    |respo-message.updater $ {}
      :defs $ {}
        |update-messages $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528520592927) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528520592927) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1528520592927) (:by |root) (:text |update-messages)
              |r $ %{} :Expr (:at 1528520592927) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528520705287) (:by |root) (:text |messages)
                  |r $ %{} :Leaf (:at 1528520617160) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1528520619128) (:by |root) (:text |op-data)
                  |x $ %{} :Leaf (:at 1528520620084) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1528520621396) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1528520622995) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528520626421) (:by |root) (:text |cond)
                  |j $ %{} :Expr (:at 1528520951911) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1528520633640) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528520643056) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1528520650756) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1529232013449) (:by |root) (:text |action/clear)
                      |j $ %{} :Expr (:at 1528520953135) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528520940840) (:by |root) (:text |{})
                  |n $ %{} :Expr (:at 1528520941547) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1528520942532) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528520943883) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1528520945898) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1529232033353) (:by |root) (:text |action/create)
                      |j $ %{} :Expr (:at 1528520954593) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528520955510) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1528520958977) (:by |root) (:text |messages)
                          |r $ %{} :Leaf (:at 1528520962819) (:by |root) (:text |op-id)
                          |v $ %{} :Expr (:at 1528520974260) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1528520975207) (:by |root) (:text |merge)
                              |L $ %{} :Leaf (:at 1528520979417) (:by |root) (:text |schema/message)
                              |P $ %{} :Leaf (:at 1528520986621) (:by |root) (:text |op-data)
                              |T $ %{} :Expr (:at 1528520987507) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1528520988168) (:by |root) (:text |{})
                                  |T $ %{} :Expr (:at 1528391665161) (:by |root)
                                    :data $ {}
                                      |j $ %{} :Leaf (:at 1528391668989) (:by |root) (:text |:id)
                                      |r $ %{} :Leaf (:at 1528391669686) (:by |root) (:text |op-id)
                                  |j $ %{} :Expr (:at 1528520992883) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1528520993547) (:by |root) (:text |:time)
                                      |j $ %{} :Leaf (:at 1528520995423) (:by |root) (:text |op-time)
                  |p $ %{} :Expr (:at 1528521001637) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1528521003013) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1528521001927) (:by |root) (:text |=)
                          |j $ %{} :Leaf (:at 1528521005811) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1529232040792) (:by |root) (:text |action/remove-one)
                      |j $ %{} :Expr (:at 1528911484992) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1528911486734) (:by |root) (:text |if)
                          |L $ %{} :Expr (:at 1528911486964) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528911487642) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1528911487882) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528911488713) (:by |root) (:text |:token)
                                  |j $ %{} :Leaf (:at 1528911489624) (:by |root) (:text |op-data)
                          |P $ %{} :Expr (:at 1528911490784) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619591867949) (:by |5tTrKalIE) (:text |->)
                              |j $ %{} :Leaf (:at 1528911501964) (:by |root) (:text |messages)
                              |l $ %{} :Expr (:at 1614326031127) (:by |5tTrKalIE)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614326032468) (:by |5tTrKalIE) (:text |to-pairs)
                              |n $ %{} :Expr (:at 1528911507933) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1528911509987) (:by |root) (:text |filter)
                                  |j $ %{} :Expr (:at 1528911510233) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1528911522116) (:by |root) (:text |fn)
                                      |L $ %{} :Expr (:at 1614324871132) (:by |5tTrKalIE)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614324872129) (:by |5tTrKalIE) (:text |pair)
                                      |j $ %{} :Expr (:at 1614324873151) (:by |5tTrKalIE)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1614324875794) (:by |5tTrKalIE) (:text |let[])
                                          |H $ %{} :Expr (:at 1614324878528) (:by |5tTrKalIE)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1614324880433) (:by |5tTrKalIE) (:text |k)
                                              |j $ %{} :Leaf (:at 1614324882425) (:by |5tTrKalIE) (:text |message)
                                          |L $ %{} :Leaf (:at 1614324877796) (:by |5tTrKalIE) (:text |pair)
                                          |T $ %{} :Expr (:at 1528911528922) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1528911560373) (:by |root) (:text |not=)
                                              |j $ %{} :Expr (:at 1528911562475) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528911563383) (:by |root) (:text |:token)
                                                  |j $ %{} :Leaf (:at 1528911565499) (:by |root) (:text |op-data)
                                              |r $ %{} :Expr (:at 1528911566942) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1528911567763) (:by |root) (:text |:token)
                                                  |j $ %{} :Leaf (:at 1528911568762) (:by |root) (:text |message)
                              |r $ %{} :Expr (:at 1528911503219) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614325009642) (:by |5tTrKalIE) (:text |pairs-map)
                          |T $ %{} :Expr (:at 1528521023227) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1528521026232) (:by |root) (:text |dissoc)
                              |j $ %{} :Leaf (:at 1528521028520) (:by |root) (:text |messages)
                              |r $ %{} :Expr (:at 1528521502181) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1528521503211) (:by |root) (:text |:id)
                                  |T $ %{} :Leaf (:at 1528521033483) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1528520635271) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614325014816) (:by |5tTrKalIE) (:text |true)
                      |j $ %{} :Leaf (:at 1528521109881) (:by |root) (:text |messages)
          :doc |
      :ns $ %{} :CodeEntry
        :code $ %{} :Expr (:at 1510939172486) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.updater)
            |r $ %{} :Expr (:at 1528520657102) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528520657805) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1528520658056) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1528520662229) (:by |root) (:text |respo-message.schema)
                    |r $ %{} :Leaf (:at 1528520663907) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1528520664908) (:by |root) (:text |schema)
                |r $ %{} :Expr (:at 1528520658056) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529232022539) (:by |root) (:text |respo-message.action)
                    |r $ %{} :Leaf (:at 1528520663907) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529232026000) (:by |root) (:text |action)
        :doc |
  :ir $ {} (:package |respo-message)
    :files $ {}
      |respo-message.action $ {}
        :defs $ {}
          |clear $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528520516852) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528520552732) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1528520516852) (:by |root) (:text |clear)
                |r $ %{} :Expr (:at 1528520516852) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1685801803130) (:by |5tTrKalIE) (:text |gen-tag)
                    |j $ %{} :Leaf (:at 1528520560056) (:by |root) (:text "|\"message/clear")
            :doc |
          |create $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528520506466) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528520572313) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1528520506466) (:by |root) (:text |create)
                |r $ %{} :Expr (:at 1528520516852) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1685801812267) (:by |5tTrKalIE) (:text |gen-tag)
                    |j $ %{} :Leaf (:at 1528520575795) (:by |root) (:text "|\"message/create")
            :doc |
          |dict $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1529229114710) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1529229121434) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1529229114710) (:by |root) (:text |dict)
                |r $ %{} :Expr (:at 1529229127156) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1529229127728) (:by |root) (:text |{})
                    |T $ %{} :Expr (:at 1529229114710) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529229123376) (:by |root) (:text |:create)
                        |j $ %{} :Leaf (:at 1529229125847) (:by |root) (:text |create)
                    |j $ %{} :Expr (:at 1529229128207) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529229130425) (:by |root) (:text |:remove-one)
                        |j $ %{} :Leaf (:at 1529229131847) (:by |root) (:text |remove-one)
                    |r $ %{} :Expr (:at 1529229132756) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529229141541) (:by |root) (:text |:clear)
                        |j $ %{} :Leaf (:at 1529229142175) (:by |root) (:text |clear)
            :doc |
          |gen-tag $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1614325405022) (:by |5tTrKalIE)
              :data $ {}
                |T $ %{} :Leaf (:at 1614325405022) (:by |5tTrKalIE) (:text |defn)
                |j $ %{} :Leaf (:at 1685801795361) (:by |5tTrKalIE) (:text |gen-tag)
                |r $ %{} :Expr (:at 1614325405022) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614325406749) (:by |5tTrKalIE) (:text |x)
                |v $ %{} :Expr (:at 1614325407293) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1685801769331) (:by |5tTrKalIE) (:text |turn-tag)
                    |j $ %{} :Expr (:at 1614325424796) (:by |5tTrKalIE)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1614325426412) (:by |5tTrKalIE) (:text |str)
                        |T $ %{} :Leaf (:at 1614325413218) (:by |5tTrKalIE) (:text |x)
                        |j $ %{} :Leaf (:at 1614325429288) (:by |5tTrKalIE) (:text "|\"_GEN_")
                        |r $ %{} :Leaf (:at 1614325430129) (:by |5tTrKalIE) (:text |0)
            :doc |
          |message-action? $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528524695341) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528524695341) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1528524695341) (:by |root) (:text |message-action?)
                |r $ %{} :Expr (:at 1528524695341) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528524699919) (:by |root) (:text |op)
                |v $ %{} :Expr (:at 1528524700827) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614325256843) (:by |5tTrKalIE) (:text |includes?)
                    |j $ %{} :Expr (:at 1528524703943) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528524704507) (:by |root) (:text |#{})
                        |j $ %{} :Leaf (:at 1528524710702) (:by |root) (:text |clear)
                        |r $ %{} :Leaf (:at 1528524712769) (:by |root) (:text |create)
                        |v $ %{} :Leaf (:at 1528524713839) (:by |root) (:text |remove-one)
                    |r $ %{} :Leaf (:at 1528524715365) (:by |root) (:text |op)
            :doc |
          |remove-one $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528520513291) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528520521169) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1528520513291) (:by |root) (:text |remove-one)
                |r $ %{} :Expr (:at 1528520513291) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1685801826220) (:by |5tTrKalIE) (:text |gen-tag)
                    |j $ %{} :Leaf (:at 1528522462519) (:by |root) (:text "|\"message/remove-one")
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528522309643) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528522309643) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1528522309643) (:by |root) (:text |respo-message.action)
          :doc |
      |respo-message.comp.container $ {}
        :defs $ {}
          |comp-container $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
                |v $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |merge)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui/global)
                                |n $ %{} :Leaf (:at 1614326066439) (:by |5tTrKalIE) (:text |ui/fullscreen)
                                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:padding)
                                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |16)
                    |r $ %{} :Expr (:at 1528360074639) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1528360076063) (:by |root) (:text |div)
                        |L $ %{} :Expr (:at 1528360076299) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528360076602) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1528360077111) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528360077799) (:by |root) (:text |:style)
                                |j $ %{} :Leaf (:at 1528360079091) (:by |root) (:text |ui/row)
                        |T $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528360068620) (:by |root) (:text |button)
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui/button)
                                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1515222127924) (:by |root) (:text |:on-click)
                                    |j $ %{} :Expr (:at 1528391704977) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528391705937) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1528391706194) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528391706408) (:by |root) (:text |e)
                                            |j $ %{} :Leaf (:at 1528391707090) (:by |root) (:text |d!)
                                        |r $ %{} :Expr (:at 1528911625319) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1528911626284) (:by |root) (:text |let)
                                            |L $ %{} :Expr (:at 1528911626492) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1528911626798) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528911629316) (:by |root) (:text |new-token)
                                                    |j $ %{} :Expr (:at 1528911434641) (:by |root)
                                                      :data $ {}
                                                        |j $ %{} :Leaf (:at 1644596245617) (:by |5tTrKalIE) (:text |generate-id!)
                                            |T $ %{} :Expr (:at 1510939172486) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528391710641) (:by |root) (:text |d!)
                                                |j $ %{} :Leaf (:at 1528522358233) (:by |root) (:text |action/create)
                                                |r $ %{} :Expr (:at 1528391771320) (:by |root)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1528391772252) (:by |root) (:text |merge)
                                                    |L $ %{} :Leaf (:at 1528391776454) (:by |root) (:text |schema/message)
                                                    |T $ %{} :Expr (:at 1528391713465) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1528391714424) (:by |root) (:text |{})
                                                        |b $ %{} :Expr (:at 1528911433032) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1528911433875) (:by |root) (:text |:token)
                                                            |j $ %{} :Leaf (:at 1528911636983) (:by |root) (:text |new-token)
                                                        |j $ %{} :Expr (:at 1528391714762) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1528391716032) (:by |root) (:text |:text)
                                                            |j $ %{} :Expr (:at 1528440216633) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1572281380281) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
                                            |j $ %{} :Expr (:at 1528911601205) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528911604088) (:by |root) (:text |js/setTimeout)
                                                |j $ %{} :Expr (:at 1528911604504) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528911604811) (:by |root) (:text |fn)
                                                    |j $ %{} :Expr (:at 1528911607478) (:by |root)
                                                      :data $ {}
                                                    |r $ %{} :Expr (:at 1528911614241) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1528911615403) (:by |root) (:text |d!)
                                                        |j $ %{} :Leaf (:at 1528911682992) (:by |root) (:text |action/remove-one)
                                                        |r $ %{} :Expr (:at 1528911619119) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1528911619885) (:by |root) (:text |{})
                                                            |j $ %{} :Expr (:at 1528911622108) (:by |root)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1528911623072) (:by |root) (:text |:token)
                                                                |j $ %{} :Leaf (:at 1528911645496) (:by |root) (:text |new-token)
                                                |r $ %{} :Leaf (:at 1528911612852) (:by |root) (:text |2000)
                            |r $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                                |r $ %{} :Leaf (:at 1528360120056) (:by |root) (:text ||Try)
                        |j $ %{} :Expr (:at 1528360080499) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528360081658) (:by |root) (:text |=<)
                            |j $ %{} :Leaf (:at 1528360082338) (:by |root) (:text |16)
                            |r $ %{} :Leaf (:at 1528360082910) (:by |root) (:text |nil)
                        |r $ %{} :Expr (:at 1528360083634) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528360084427) (:by |root) (:text |button)
                            |j $ %{} :Expr (:at 1528360084625) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528360085183) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1528360085440) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528360086086) (:by |root) (:text |:style)
                                    |j $ %{} :Leaf (:at 1528360089803) (:by |root) (:text |ui/button)
                                |r $ %{} :Expr (:at 1528360091913) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528360093988) (:by |root) (:text |:on-click)
                                    |j $ %{} :Expr (:at 1528360094752) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528360095043) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1528360095837) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528360095331) (:by |root) (:text |e)
                                            |j $ %{} :Leaf (:at 1528360097401) (:by |root) (:text |d!)
                                        |r $ %{} :Expr (:at 1528360098965) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528360099989) (:by |root) (:text |d!)
                                            |f $ %{} :Leaf (:at 1528522355148) (:by |root) (:text |action/clear)
                                            |r $ %{} :Leaf (:at 1528360104404) (:by |root) (:text |nil)
                            |r $ %{} :Expr (:at 1528360106115) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528360106494) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1528360109990) (:by |root) (:text "|\"Clear")
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614325332443) (:by |5tTrKalIE) (:text |comp-messages)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:messages)
                            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
                        |r $ %{} :Expr (:at 1528529145455) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528529145892) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1528529146812) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528529159567) (:by |root) (:text |:bottom?)
                                |j $ %{} :Leaf (:at 1528529235966) (:by |root) (:text |true)
                        |v $ %{} :Expr (:at 1529229242024) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1529229247542) (:by |root) (:text |fn)
                            |j $ %{} :Expr (:at 1529229247809) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1529229248737) (:by |root) (:text |info)
                                |j $ %{} :Leaf (:at 1529229250671) (:by |root) (:text |d!)
                            |r $ %{} :Expr (:at 1529229252363) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1529229278303) (:by |root) (:text |d!)
                                |j $ %{} :Leaf (:at 1529229260160) (:by |root) (:text |action/remove-one)
                                |r $ %{} :Leaf (:at 1529229263447) (:by |root) (:text |info)
                    |x $ %{} :Expr (:at 1528525148231) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1528525150836) (:by |root) (:text |when)
                        |L $ %{} :Leaf (:at 1528525172904) (:by |root) (:text |config/dev?)
                        |T $ %{} :Expr (:at 1528525121704) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528525123974) (:by |root) (:text |comp-inspect)
                            |j $ %{} :Leaf (:at 1528525126530) (:by |root) (:text "|\"messages")
                            |r $ %{} :Expr (:at 1528525126767) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528525127990) (:by |root) (:text |:messages)
                                |j $ %{} :Leaf (:at 1528525129551) (:by |root) (:text |store)
                            |v $ %{} :Leaf (:at 1528525131089) (:by |root) (:text |nil)
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.container)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |hsl.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |hsl)
                  |n $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540961221067) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                          |w $ %{} :Leaf (:at 1528360071567) (:by |root) (:text |button)
                          |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516546723109) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui)
                  |x $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |=<)
                  |y $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528391846546) (:by |root) (:text |respo-message.comp.messages)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1528391843482) (:by |root) (:text |comp-messages)
                  |yT $ %{} :Expr (:at 1528391780833) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528391785167) (:by |root) (:text |respo-message.schema)
                      |r $ %{} :Leaf (:at 1528391785573) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528391786594) (:by |root) (:text |schema)
                  |yj $ %{} :Expr (:at 1528440220433) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528440222223) (:by |root) (:text "|\"lorem-ipsum")
                      |r $ %{} :Leaf (:at 1528440223110) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528440236215) (:by |root) (:text |lorem-ipsum)
                  |yr $ %{} :Expr (:at 1528522362204) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528522367754) (:by |root) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1528522370259) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528522372360) (:by |root) (:text |action)
                  |yv $ %{} :Expr (:at 1528525136401) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528525141798) (:by |root) (:text |respo.comp.inspect)
                      |r $ %{} :Leaf (:at 1528525143311) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1528525143509) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1528525146386) (:by |root) (:text |comp-inspect)
                  |yx $ %{} :Expr (:at 1528525160605) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528525180385) (:by |root) (:text |respo-message.config)
                      |r $ %{} :Leaf (:at 1528525197989) (:by |root) (:text |:as)
                      |t $ %{} :Leaf (:at 1528525200155) (:by |root) (:text |config)
          :doc |
      |respo-message.comp.message $ {}
        :defs $ {}
          |comp-message $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                    |r $ %{} :Leaf (:at 1528529177917) (:by |root) (:text |options)
                    |v $ %{} :Leaf (:at 1529229288034) (:by |root) (:text |on-remove!)
                |v $ %{} :Expr (:at 1572678703321) (:by |5tTrKalIE)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1572678703949) (:by |5tTrKalIE) (:text |[])
                    |L $ %{} :Expr (:at 1572678704546) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572678708741) (:by |5tTrKalIE) (:text |effect-fade)
                        |j $ %{} :Leaf (:at 1572679103599) (:by |5tTrKalIE) (:text |message)
                    |T $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                            |b $ %{} :Expr (:at 1669657481089) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1669657482802) (:by |5tTrKalIE) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1669657485383) (:by |5tTrKalIE) (:text |css-message)
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |merge)
                                    |n $ %{} :Expr (:at 1528392251243) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528392251991) (:by |root) (:text |:style)
                                        |j $ %{} :Leaf (:at 1528392252994) (:by |root) (:text |message)
                                    |r $ %{} :Expr (:at 1528529182331) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1528529182866) (:by |root) (:text |if)
                                        |L $ %{} :Expr (:at 1528529183301) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528529186560) (:by |root) (:text |:bottom?)
                                            |j $ %{} :Leaf (:at 1528529187401) (:by |root) (:text |options)
                                        |P $ %{} :Expr (:at 1510939172486) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                            |b $ %{} :Expr (:at 1510939172486) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528529193968) (:by |root) (:text |:bottom)
                                                |j $ %{} :Expr (:at 1669657566012) (:by |5tTrKalIE)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1669657566728) (:by |5tTrKalIE) (:text |str)
                                                    |T $ %{} :Expr (:at 1669657563796) (:by |5tTrKalIE)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1669657564441) (:by |5tTrKalIE) (:text |+)
                                                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |8)
                                                        |b $ %{} :Expr (:at 1669657565347) (:by |5tTrKalIE)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1669657565347) (:by |5tTrKalIE) (:text |*)
                                                            |b $ %{} :Leaf (:at 1669657565347) (:by |5tTrKalIE) (:text |idx)
                                                            |h $ %{} :Leaf (:at 1669657835607) (:by |5tTrKalIE) (:text |40)
                                                    |b $ %{} :Leaf (:at 1669657569577) (:by |5tTrKalIE) (:text "|\"px")
                                        |T $ %{} :Expr (:at 1510939172486) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                                            |b $ %{} :Expr (:at 1510939172486) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:top)
                                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |8)
                                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:transform)
                                                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |str)
                                                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||translate(0,")
                                                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*)
                                                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                                                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |40)
                                                    |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||px)")
                            |r $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1515222115301) (:by |root) (:text |:on-click)
                                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |e)
                                        |j $ %{} :Leaf (:at 1528392222423) (:by |root) (:text |d!)
                                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1529229292421) (:by |root) (:text |on-remove!)
                                        |l $ %{} :Expr (:at 1528521563946) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528521564404) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1528521564692) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528521566470) (:by |root) (:text |:id)
                                                |j $ %{} :Expr (:at 1528521567706) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528521568558) (:by |root) (:text |:id)
                                                    |j $ %{} :Leaf (:at 1528521570040) (:by |root) (:text |message)
                                            |n $ %{} :Expr (:at 1528911389880) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528911390949) (:by |root) (:text |:token)
                                                |j $ %{} :Expr (:at 1528911391328) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528911394744) (:by |root) (:text |:token)
                                                    |j $ %{} :Leaf (:at 1528911395873) (:by |root) (:text |message)
                                            |r $ %{} :Expr (:at 1528521571587) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528521575197) (:by |root) (:text |:index)
                                                |j $ %{} :Leaf (:at 1528521575883) (:by |root) (:text |idx)
                                            |v $ %{} :Expr (:at 1528521576700) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528521578112) (:by |root) (:text |:time)
                                                |j $ %{} :Expr (:at 1528521579148) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528521579655) (:by |root) (:text |:time)
                                                    |j $ %{} :Leaf (:at 1528521580986) (:by |root) (:text |message)
                                        |s $ %{} :Leaf (:at 1529229301018) (:by |root) (:text |d!)
                        |r $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                            |r $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                            |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |nil)
            :doc |
          |css-message $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1669657469727) (:by |5tTrKalIE) (:text |defstyle)
                |j $ %{} :Leaf (:at 1669657500731) (:by |5tTrKalIE) (:text |css-message)
                |r $ %{} :Expr (:at 1669657470569) (:by |5tTrKalIE)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1669657471122) (:by |5tTrKalIE) (:text |{})
                    |T $ %{} :Expr (:at 1669657472663) (:by |5tTrKalIE)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1669657474512) (:by |5tTrKalIE) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:position)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:absolute)
                            |v $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:right)
                                |j $ %{} :Leaf (:at 1669657601886) (:by |5tTrKalIE) (:text |8)
                            |x $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:height)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |32)
                            |y $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:line-height)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||32px)
                            |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:font-size)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||14)
                            |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:background-color)
                                |j $ %{} :Expr (:at 1528392304095) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528392304559) (:by |root) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1528392305194) (:by |root) (:text |0)
                                    |r $ %{} :Leaf (:at 1528392305413) (:by |root) (:text |0)
                                    |v $ %{} :Leaf (:at 1528392585183) (:by |root) (:text |100)
                            |yl $ %{} :Expr (:at 1528525891916) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528525896008) (:by |root) (:text |:border-style)
                                |j $ %{} :Leaf (:at 1528525899053) (:by |root) (:text |:solid)
                            |yo $ %{} :Expr (:at 1528525884255) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528525887648) (:by |root) (:text |:border-width)
                                |j $ %{} :Leaf (:at 1528525889378) (:by |root) (:text "|\"1px")
                            |yp $ %{} :Expr (:at 1528392613177) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528392620740) (:by |root) (:text |:border-radius)
                                |j $ %{} :Leaf (:at 1669657947291) (:by |5tTrKalIE) (:text "|\"6px")
                            |ypT $ %{} :Expr (:at 1528525875225) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528525878562) (:by |root) (:text |:border-color)
                                |j $ %{} :Expr (:at 1528392574979) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528392575407) (:by |root) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1528392604953) (:by |root) (:text |200)
                                    |r $ %{} :Leaf (:at 1528392608707) (:by |root) (:text |50)
                                    |v $ %{} :Leaf (:at 1669657930596) (:by |5tTrKalIE) (:text |90)
                            |yq $ %{} :Expr (:at 1528392627127) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528392628093) (:by |root) (:text |:color)
                                |j $ %{} :Expr (:at 1528392631313) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528392631732) (:by |root) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1528392632000) (:by |root) (:text |0)
                                    |r $ %{} :Leaf (:at 1528392632200) (:by |root) (:text |0)
                                    |v $ %{} :Leaf (:at 1528392633454) (:by |root) (:text |60)
                            |yv $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:padding)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||0 16px")
                            |yx $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:min-width)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |64)
                            |yy $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text-align)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:left)
                            |yyT $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:overflow)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:hidden)
                            |yyj $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:text-overflow)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:ellipsis)
                            |yyr $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:max-width)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |320)
                            |yyv $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:pointer)
                            |yyx $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:transition-duration)
                                |j $ %{} :Leaf (:at 1669657803472) (:by |5tTrKalIE) (:text ||400ms)
                            |z $ %{} :Expr (:at 1669657876206) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1669657878730) (:by |5tTrKalIE) (:text |:box-shadow)
                                |b $ %{} :Expr (:at 1669657879115) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1669657879608) (:by |5tTrKalIE) (:text |str)
                                    |b $ %{} :Leaf (:at 1669657911926) (:by |5tTrKalIE) (:text "|\"0px 0px 4px ")
                                    |h $ %{} :Expr (:at 1669657891219) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1669657891673) (:by |5tTrKalIE) (:text |hsl)
                                        |b $ %{} :Leaf (:at 1669657891977) (:by |5tTrKalIE) (:text |0)
                                        |h $ %{} :Leaf (:at 1669657892221) (:by |5tTrKalIE) (:text |0)
                                        |j $ %{} :Leaf (:at 1669657938329) (:by |5tTrKalIE) (:text |10)
                                        |l $ %{} :Leaf (:at 1669657908165) (:by |5tTrKalIE) (:text |0.1)
            :doc |
          |effect-fade $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1572678709484) (:by |5tTrKalIE)
              :data $ {}
                |T $ %{} :Leaf (:at 1572678711783) (:by |5tTrKalIE) (:text |defeffect)
                |j $ %{} :Leaf (:at 1572678709484) (:by |5tTrKalIE) (:text |effect-fade)
                |r $ %{} :Expr (:at 1572678709484) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572679107784) (:by |5tTrKalIE) (:text |message)
                |v $ %{} :Expr (:at 1572678713730) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572678715693) (:by |5tTrKalIE) (:text |action)
                    |j $ %{} :Leaf (:at 1572678716027) (:by |5tTrKalIE) (:text |el)
                    |r $ %{} :Leaf (:at 1572678717886) (:by |5tTrKalIE) (:text |*local)
                |x $ %{} :Expr (:at 1572678728122) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614324825797) (:by |5tTrKalIE) (:text |case-default)
                    |j $ %{} :Leaf (:at 1572678732389) (:by |5tTrKalIE) (:text |action)
                    |n $ %{} :Leaf (:at 1619591569274) (:by |5tTrKalIE) (:text |nil)
                    |r $ %{} :Expr (:at 1572678732699) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572678734274) (:by |5tTrKalIE) (:text |:mount)
                        |j $ %{} :Expr (:at 1572678788807) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572678789884) (:by |5tTrKalIE) (:text |let)
                            |j $ %{} :Expr (:at 1572678790061) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Expr (:at 1572678790221) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572678790852) (:by |5tTrKalIE) (:text |style)
                                    |j $ %{} :Expr (:at 1572678791174) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572678793824) (:by |5tTrKalIE) (:text |.-style)
                                        |j $ %{} :Leaf (:at 1572678794196) (:by |5tTrKalIE) (:text |el)
                            |r $ %{} :Expr (:at 1572678795447) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572678797876) (:by |5tTrKalIE) (:text |set!)
                                |j $ %{} :Expr (:at 1572678798241) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1669657211003) (:by |5tTrKalIE) (:text |.-transform)
                                    |j $ %{} :Leaf (:at 1572678807939) (:by |5tTrKalIE) (:text |style)
                                |r $ %{} :Leaf (:at 1669657274510) (:by |5tTrKalIE) (:text "|\"translate(60px,0px)")
                            |t $ %{} :Expr (:at 1572680044797) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |set!)
                                |j $ %{} :Expr (:at 1572680044797) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |.-opacity)
                                    |j $ %{} :Leaf (:at 1572680044797) (:by |5tTrKalIE) (:text |style)
                                |r $ %{} :Leaf (:at 1572680046361) (:by |5tTrKalIE) (:text "|\"0")
                            |v $ %{} :Expr (:at 1572678844367) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1644595980493) (:by |5tTrKalIE) (:text |js/setTimeout)
                                |r $ %{} :Expr (:at 1572678855015) (:by |5tTrKalIE)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1572678855899) (:by |5tTrKalIE) (:text |fn)
                                    |L $ %{} :Expr (:at 1572678856286) (:by |5tTrKalIE)
                                      :data $ {}
                                    |T $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |set!)
                                        |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1669657204802) (:by |5tTrKalIE) (:text |.-transform)
                                            |j $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |style)
                                        |r $ %{} :Leaf (:at 1669657615062) (:by |5tTrKalIE) (:text "|\"translate(0px,0px)")
                                    |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |set!)
                                        |j $ %{} :Expr (:at 1572678854320) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1572680036111) (:by |5tTrKalIE) (:text |.-opacity)
                                            |j $ %{} :Leaf (:at 1572678854320) (:by |5tTrKalIE) (:text |style)
                                        |r $ %{} :Leaf (:at 1572680038879) (:by |5tTrKalIE) (:text "|\"1")
                                    |n $ %{} :Expr (:at 1669657637276) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1669657638112) (:by |5tTrKalIE) (:text |set!)
                                        |b $ %{} :Expr (:at 1669657638558) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1669657642665) (:by |5tTrKalIE) (:text |.-zIndex)
                                            |b $ %{} :Leaf (:at 1669657643511) (:by |5tTrKalIE) (:text |style)
                                        |h $ %{} :Leaf (:at 1669657645614) (:by |5tTrKalIE) (:text "|\"-1")
                                |v $ %{} :Leaf (:at 1669657769019) (:by |5tTrKalIE) (:text |10)
                    |v $ %{} :Expr (:at 1572678740834) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572678744603) (:by |5tTrKalIE) (:text |:unmount)
                        |j $ %{} :Expr (:at 1572679870834) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572679871232) (:by |5tTrKalIE) (:text |let)
                            |j $ %{} :Expr (:at 1572679871458) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Expr (:at 1572679871621) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572679873081) (:by |5tTrKalIE) (:text |cloned)
                                    |j $ %{} :Expr (:at 1572679873571) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1644596300778) (:by |5tTrKalIE) (:text |.!cloneNode)
                                        |j $ %{} :Leaf (:at 1572679878362) (:by |5tTrKalIE) (:text |el)
                                        |r $ %{} :Leaf (:at 1572679879501) (:by |5tTrKalIE) (:text |true)
                                |j $ %{} :Expr (:at 1572679880681) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572679881561) (:by |5tTrKalIE) (:text |style)
                                    |j $ %{} :Expr (:at 1572679882696) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572679883676) (:by |5tTrKalIE) (:text |.-style)
                                        |j $ %{} :Leaf (:at 1572679885580) (:by |5tTrKalIE) (:text |cloned)
                            |r $ %{} :Expr (:at 1572679889306) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1644596304571) (:by |5tTrKalIE) (:text |.!appendChild)
                                |j $ %{} :Expr (:at 1572679906795) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572679910354) (:by |5tTrKalIE) (:text |.-parentElement)
                                    |j $ %{} :Leaf (:at 1572679911232) (:by |5tTrKalIE) (:text |el)
                                |r $ %{} :Leaf (:at 1572679915363) (:by |5tTrKalIE) (:text |cloned)
                            |v $ %{} :Expr (:at 1572679917314) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1644595988674) (:by |5tTrKalIE) (:text |js/setTimeout)
                                |r $ %{} :Expr (:at 1572679920231) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572679920512) (:by |5tTrKalIE) (:text |fn)
                                    |j $ %{} :Expr (:at 1572679920792) (:by |5tTrKalIE)
                                      :data $ {}
                                    |r $ %{} :Expr (:at 1572679928337) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572679928337) (:by |5tTrKalIE) (:text |set!)
                                        |j $ %{} :Expr (:at 1572679928337) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1669657217113) (:by |5tTrKalIE) (:text |.-transform)
                                            |j $ %{} :Leaf (:at 1572679928337) (:by |5tTrKalIE) (:text |style)
                                        |r $ %{} :Leaf (:at 1669657276386) (:by |5tTrKalIE) (:text "|\"translate(60px,0px)")
                                    |v $ %{} :Expr (:at 1572680050025) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |set!)
                                        |j $ %{} :Expr (:at 1572680050025) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |.-opacity)
                                            |j $ %{} :Leaf (:at 1572680050025) (:by |5tTrKalIE) (:text |style)
                                        |r $ %{} :Leaf (:at 1572680052342) (:by |5tTrKalIE) (:text "|\"0")
                                |v $ %{} :Leaf (:at 1669657770907) (:by |5tTrKalIE) (:text |10)
                            |x $ %{} :Expr (:at 1572679934643) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1644595993998) (:by |5tTrKalIE) (:text |js/setTimeout)
                                |r $ %{} :Expr (:at 1572679954170) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1572679954396) (:by |5tTrKalIE) (:text |fn)
                                    |j $ %{} :Expr (:at 1572679954695) (:by |5tTrKalIE)
                                      :data $ {}
                                    |r $ %{} :Expr (:at 1572679955817) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1644596307558) (:by |5tTrKalIE) (:text |.!remove)
                                        |j $ %{} :Leaf (:at 1572679959725) (:by |5tTrKalIE) (:text |cloned)
                                |v $ %{} :Leaf (:at 1669657797988) (:by |5tTrKalIE) (:text |400)
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.message)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                  |n $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540961225660) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                          |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                          |y $ %{} :Leaf (:at 1572678725038) (:by |5tTrKalIE) (:text |defeffect)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516546729079) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ui)
                  |v $ %{} :Expr (:at 1528392317239) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1614324843782) (:by |5tTrKalIE) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1528392321723) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1528392321951) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1528392322760) (:by |root) (:text |hsl)
                  |x $ %{} :Expr (:at 1528521378255) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528521384540) (:by |root) (:text |respo-message.schema)
                      |r $ %{} :Leaf (:at 1528521384927) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528521385649) (:by |root) (:text |schema)
                  |y $ %{} :Expr (:at 1669657463541) (:by |5tTrKalIE)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1669657464664) (:by |5tTrKalIE) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1669657466621) (:by |5tTrKalIE) (:text |:refer)
                      |h $ %{} :Expr (:at 1669657466806) (:by |5tTrKalIE)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1669657467918) (:by |5tTrKalIE) (:text |defstyle)
          :doc |
      |respo-message.comp.messages $ {}
        :defs $ {}
          |comp-messages $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-messages)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |messages)
                    |j $ %{} :Leaf (:at 1528529167100) (:by |root) (:text |options)
                    |r $ %{} :Leaf (:at 1529229283855) (:by |root) (:text |on-remove!)
                |v $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1510940595266) (:by |root) (:text |list->)
                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1528440292142) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528440293907) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1528440294146) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528440294471) (:by |root) (:text |{})
                                |b $ %{} :Expr (:at 1669657330589) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1669657334710) (:by |5tTrKalIE) (:text |:position)
                                    |b $ %{} :Leaf (:at 1669657336718) (:by |5tTrKalIE) (:text |:fixed)
                                |h $ %{} :Expr (:at 1669657363889) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1669657364992) (:by |5tTrKalIE) (:text |:bottom)
                                    |b $ %{} :Leaf (:at 1669657365293) (:by |5tTrKalIE) (:text |0)
                                |l $ %{} :Expr (:at 1669657367376) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1669657368644) (:by |5tTrKalIE) (:text |:right)
                                    |b $ %{} :Leaf (:at 1669657369229) (:by |5tTrKalIE) (:text |0)
                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1619591838170) (:by |5tTrKalIE) (:text |->)
                        |b $ %{} :Leaf (:at 1619591841777) (:by |5tTrKalIE) (:text |messages)
                        |j $ %{} :Expr (:at 1614325573692) (:by |5tTrKalIE)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1614325584140) (:by |5tTrKalIE) (:text |either)
                            |j $ %{} :Expr (:at 1614325575884) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614325576417) (:by |5tTrKalIE) (:text |{})
                        |n $ %{} :Expr (:at 1619591842799) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528391863867) (:by |root) (:text |vals)
                        |nT $ %{} :Expr (:at 1614325223625) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1623719730432) (:by |5tTrKalIE) (:text |.to-list)
                        |o $ %{} :Expr (:at 1528526572242) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614324735501) (:by |5tTrKalIE) (:text |sort)
                            |j $ %{} :Expr (:at 1528526578695) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528526578979) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1528526579306) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528526580619) (:by |root) (:text |message)
                                    |j $ %{} :Leaf (:at 1614324740960) (:by |5tTrKalIE) (:text |m)
                                |r $ %{} :Expr (:at 1614324742808) (:by |5tTrKalIE)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1614324744361) (:by |5tTrKalIE) (:text |-)
                                    |j $ %{} :Expr (:at 1528526582102) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528526583545) (:by |root) (:text |:time)
                                        |j $ %{} :Leaf (:at 1614324747489) (:by |5tTrKalIE) (:text |m)
                                    |r $ %{} :Expr (:at 1614324982557) (:by |5tTrKalIE)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614324982557) (:by |5tTrKalIE) (:text |:time)
                                        |j $ %{} :Leaf (:at 1614324982557) (:by |5tTrKalIE) (:text |message)
                        |r $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528527730960) (:by |root) (:text |map-indexed)
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                                |j $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |L $ %{} :Leaf (:at 1528527732937) (:by |root) (:text |idx)
                                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |[])
                                    |f $ %{} :Expr (:at 1528527840799) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528527842769) (:by |root) (:text |:id)
                                        |j $ %{} :Leaf (:at 1528527843825) (:by |root) (:text |message)
                                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
                                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |idx)
                                        |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |message)
                                        |v $ %{} :Leaf (:at 1528529174932) (:by |root) (:text |options)
                                        |x $ %{} :Leaf (:at 1529229285752) (:by |root) (:text |on-remove!)
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.messages)
              |v $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                  |b $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540961216673) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1510940599505) (:by |root) (:text |list->)
                          |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |div)
                          |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |span)
                          |x $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |<>)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.message)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-message)
          :doc |
      |respo-message.config $ {}
        :defs $ {}
          |cdn? $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
              :data $ {}
                |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |def)
                |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |cdn?)
                |r $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |cond)
                    |j $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |exists?)
                            |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/window)
                        |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |false)
                    |r $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |exists?)
                            |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/process)
                        |j $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |=)
                            |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text "|\"true")
                            |r $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |js/process.env.cdn)
                    |v $ %{} :Expr (:at 1572280494836) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614324592420) (:by |5tTrKalIE) (:text |true)
                        |j $ %{} :Leaf (:at 1572280494836) (:by |5tTrKalIE) (:text |false)
            :doc |
          |dev? $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
              :data $ {}
                |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |def)
                |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |dev?)
                |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |let)
                    |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |debug?)
                            |j $ %{} :Leaf (:at 1614324598152) (:by |5tTrKalIE) (:text |false)
                    |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |cond)
                        |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |exists?)
                                |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/window)
                            |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |debug?)
                        |r $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |exists?)
                                |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/process)
                            |j $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |not=)
                                |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text "|\"true")
                                |r $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |js/process.env.release)
                        |v $ %{} :Expr (:at 1572280501951) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |:else)
                            |j $ %{} :Leaf (:at 1572280501951) (:by |5tTrKalIE) (:text |true)
            :doc |
          |site $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528303955753) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |site)
                |r $ %{} :Expr (:at 1528303955753) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1528303955753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:dev-ui)
                        |j $ %{} :Leaf (:at 1572280534263) (:by |5tTrKalIE) (:text "|\"http://localhost:8100/main-fonts.css")
                    |v $ %{} :Expr (:at 1528303955753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:release-ui)
                        |j $ %{} :Leaf (:at 1572280531072) (:by |5tTrKalIE) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                    |x $ %{} :Expr (:at 1528303955753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:cdn-url)
                        |j $ %{} :Leaf (:at 1528303977249) (:by |root) (:text "|\"http://cdn.tiye.me/respo-message/")
                    |yT $ %{} :Expr (:at 1528303955753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:title)
                        |j $ %{} :Leaf (:at 1528303989279) (:by |root) (:text "|\"Message")
                    |yj $ %{} :Expr (:at 1528303955753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |:icon)
                        |j $ %{} :Leaf (:at 1528303996833) (:by |root) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                    |yr $ %{} :Expr (:at 1572280520594) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572280522696) (:by |5tTrKalIE) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1572280520594) (:by |5tTrKalIE) (:text "|\"respo-message")
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1528303955753) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1528303955753) (:by |root) (:text |respo-message.config)
          :doc |
      |respo-message.main $ {}
        :defs $ {}
          |*store $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1614324626539) (:by |5tTrKalIE) (:text |defatom)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
                |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |schema/store)
            :doc |
          |dispatch! $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |op)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |op-data)
                |v $ %{} :Expr (:at 1572280592734) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |when)
                    |j $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |config/dev?)
                    |r $ %{} :Expr (:at 1572280592734) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |println)
                        |j $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text "|\"Dispatch:")
                        |r $ %{} :Leaf (:at 1572280592734) (:by |5tTrKalIE) (:text |op)
                |x $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |op-id)
                            |j $ %{} :Expr (:at 1510939172486) (:by nil)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1644595848724) (:by |5tTrKalIE) (:text |generate-id!)
                        |X $ %{} :Expr (:at 1528391735056) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528391740088) (:by |root) (:text |op-time)
                            |j $ %{} :Expr (:at 1528391740397) (:by |root)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1644595835512) (:by |5tTrKalIE) (:text |js/Date.now)
                        |l $ %{} :Expr (:at 1528523934093) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528523936881) (:by |root) (:text |store)
                            |j $ %{} :Leaf (:at 1528523939420) (:by |root) (:text |@*store)
                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |reset!)
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
                        |n $ %{} :Expr (:at 1528523925774) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528523948615) (:by |root) (:text |cond)
                            |j $ %{} :Expr (:at 1528523949097) (:by |root)
                              :data $ {}
                                |T $ %{} :Expr (:at 1528523949273) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528523949539) (:by |root) (:text |=)
                                    |j $ %{} :Leaf (:at 1528523950866) (:by |root) (:text |op)
                                    |r $ %{} :Leaf (:at 1528523954713) (:by |root) (:text |:states)
                                |j $ %{} :Expr (:at 1614314253050) (:by |5tTrKalIE)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1614314254531) (:by |5tTrKalIE) (:text |update-states)
                                    |L $ %{} :Leaf (:at 1614314256339) (:by |5tTrKalIE) (:text |store)
                                    |P $ %{} :Leaf (:at 1614314264170) (:by |5tTrKalIE) (:text |op-data)
                            |r $ %{} :Expr (:at 1528524019451) (:by |root)
                              :data $ {}
                                |T $ %{} :Expr (:at 1528524004158) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528524694266) (:by |root) (:text |action/message-action?)
                                    |j $ %{} :Leaf (:at 1528524016877) (:by |root) (:text |op)
                                |j $ %{} :Expr (:at 1528524021920) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528524652839) (:by |root) (:text |update)
                                    |j $ %{} :Leaf (:at 1528524653629) (:by |root) (:text |store)
                                    |r $ %{} :Leaf (:at 1528524656382) (:by |root) (:text |:messages)
                                    |v $ %{} :Expr (:at 1614324923713) (:by |5tTrKalIE)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1614324924302) (:by |5tTrKalIE) (:text |fn)
                                        |L $ %{} :Expr (:at 1614324924598) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614324924813) (:by |5tTrKalIE) (:text |x)
                                        |T $ %{} :Expr (:at 1528520761321) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1528520764688) (:by |root) (:text |update-messages)
                                            |j $ %{} :Leaf (:at 1614324926630) (:by |5tTrKalIE) (:text |x)
                                            |r $ %{} :Leaf (:at 1528520769791) (:by |root) (:text |op)
                                            |v $ %{} :Leaf (:at 1528520771286) (:by |root) (:text |op-data)
                                            |x $ %{} :Leaf (:at 1528520774617) (:by |root) (:text |op-id)
                                            |y $ %{} :Leaf (:at 1528520778457) (:by |root) (:text |op-time)
                            |v $ %{} :Expr (:at 1528524666119) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614325759263) (:by |5tTrKalIE) (:text |true)
                                |j $ %{} :Expr (:at 1528524667856) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528524668349) (:by |root) (:text |do)
                                    |j $ %{} :Expr (:at 1528524669307) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528524670742) (:by |root) (:text |println)
                                        |j $ %{} :Leaf (:at 1528524684483) (:by |root) (:text "|\"Unhandled operation:")
                                        |r $ %{} :Leaf (:at 1528524684828) (:by |root) (:text |op)
                                    |r $ %{} :Leaf (:at 1528524673954) (:by |root) (:text |store)
            :doc |
          |main! $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |main!)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                |u $ %{} :Expr (:at 1572280627898) (:by |5tTrKalIE)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |println)
                    |j $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"Running mode:")
                    |r $ %{} :Expr (:at 1572280627898) (:by |5tTrKalIE)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |if)
                        |j $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text |config/dev?)
                        |r $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"dev")
                        |v $ %{} :Leaf (:at 1572280627898) (:by |5tTrKalIE) (:text "|\"release")
                |y $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
                |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |*store)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:changes)
                    |v $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614325280377) (:by |5tTrKalIE) (:text |store)
                            |j $ %{} :Leaf (:at 1614325281481) (:by |5tTrKalIE) (:text |prev)
                        |r $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                            |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
                |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |js/setTimeout)
                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                        |r $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                            |j $ %{} :Leaf (:at 1528522517824) (:by |root) (:text |action/create)
                            |r $ %{} :Expr (:at 1528440002271) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528440003315) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1528440003647) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528440004520) (:by |root) (:text |:text)
                                    |j $ %{} :Expr (:at 1528440193138) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1572281360053) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
                |yr $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||app started!")
            :doc |
          |mount-target $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mount-target)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1644596060678) (:by |5tTrKalIE) (:text |js/document.querySelector)
                    |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text ||.app)
            :doc |
          |reload! $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |reload!)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                |v $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |clear-cache!)
                |x $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
                |y $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |println)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text "||Code update.")
                |yT $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                    |j $ %{} :Leaf (:at 1528529257258) (:by |root) (:text |action/create)
                    |r $ %{} :Expr (:at 1528392523011) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528392523392) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1528392523684) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528392525266) (:by |root) (:text |:text)
                            |j $ %{} :Expr (:at 1528440245410) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1572281370514) (:by |5tTrKalIE) (:text |lorem-ipsum/loremIpsum)
            :doc |
          |render-app! $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render-app!)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |renderer)
                |v $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |renderer)
                    |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mount-target)
                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
                        |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |@*store)
                    |v $ %{} :Expr (:at 1614324941574) (:by |5tTrKalIE)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1614324942200) (:by |5tTrKalIE) (:text |fn)
                        |L $ %{} :Expr (:at 1614324942462) (:by |5tTrKalIE)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614324944767) (:by |5tTrKalIE) (:text |x)
                            |j $ %{} :Leaf (:at 1614324945839) (:by |5tTrKalIE) (:text |y)
                        |T $ %{} :Expr (:at 1528525264475) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |dispatch!)
                            |j $ %{} :Leaf (:at 1614324948972) (:by |5tTrKalIE) (:text |x)
                            |r $ %{} :Leaf (:at 1614324949317) (:by |5tTrKalIE) (:text |y)
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.main)
              |r $ %{} :Expr (:at 1510939172486) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |render!)
                          |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |clear-cache!)
                  |r $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1614314187931) (:by |5tTrKalIE) (:text |update-states)
                  |v $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |mute-element)
                  |x $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.comp.container)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1510939172486) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |comp-container)
                  |yj $ %{} :Expr (:at 1510939172486) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.schema)
                      |r $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |schema)
                  |yr $ %{} :Expr (:at 1528440195419) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528440196771) (:by |root) (:text "|\"lorem-ipsum")
                      |r $ %{} :Leaf (:at 1528440197429) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528440197852) (:by |root) (:text |lorem-ipsum)
                  |yv $ %{} :Expr (:at 1528520794905) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528520928432) (:by |root) (:text |respo-message.updater)
                      |r $ %{} :Leaf (:at 1528520801581) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1528520801763) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1528520804255) (:by |root) (:text |update-messages)
                  |yy $ %{} :Expr (:at 1528522520031) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528522524884) (:by |root) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1528522525485) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528522526884) (:by |root) (:text |action)
                  |yyT $ %{} :Expr (:at 1572280594833) (:by |5tTrKalIE)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1572280600329) (:by |5tTrKalIE) (:text |respo-message.config)
                      |r $ %{} :Leaf (:at 1572280600749) (:by |5tTrKalIE) (:text |:as)
                      |v $ %{} :Leaf (:at 1572280601458) (:by |5tTrKalIE) (:text |config)
          :doc |
      |respo-message.schema $ {}
        :defs $ {}
          |message $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528391493047) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528391495172) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1528391493047) (:by |root) (:text |message)
                |r $ %{} :Expr (:at 1528391493047) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528391496919) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1528391497845) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528391500176) (:by |root) (:text |:id)
                        |j $ %{} :Leaf (:at 1528391501274) (:by |root) (:text |nil)
                    |n $ %{} :Expr (:at 1528911373534) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528911375030) (:by |root) (:text |:token)
                        |j $ %{} :Leaf (:at 1528911377027) (:by |root) (:text |nil)
                    |r $ %{} :Expr (:at 1528391501803) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528391503060) (:by |root) (:text |:text)
                        |j $ %{} :Leaf (:at 1528391504106) (:by |root) (:text "|\"")
                    |v $ %{} :Expr (:at 1528391504542) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528391506399) (:by |root) (:text |:time)
                        |j $ %{} :Leaf (:at 1528391510504) (:by |root) (:text |0)
                    |x $ %{} :Expr (:at 1528391511114) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528391513989) (:by |root) (:text |:style)
                        |j $ %{} :Expr (:at 1528391514242) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528391514562) (:by |root) (:text |{})
            :doc |
          |store $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1510939172486) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |store)
                |r $ %{} :Expr (:at 1510939172486) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:messages)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528391593443) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1510939172486) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |:states)
                        |j $ %{} :Expr (:at 1510939172486) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |{})
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.schema)
          :doc |
      |respo-message.updater $ {}
        :defs $ {}
          |update-messages $ %{} :CodeEntry
            :code $ %{} :Expr (:at 1528520592927) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528520592927) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1528520592927) (:by |root) (:text |update-messages)
                |r $ %{} :Expr (:at 1528520592927) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528520705287) (:by |root) (:text |messages)
                    |r $ %{} :Leaf (:at 1528520617160) (:by |root) (:text |op)
                    |v $ %{} :Leaf (:at 1528520619128) (:by |root) (:text |op-data)
                    |x $ %{} :Leaf (:at 1528520620084) (:by |root) (:text |op-id)
                    |y $ %{} :Leaf (:at 1528520621396) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1528520622995) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1528520626421) (:by |root) (:text |cond)
                    |j $ %{} :Expr (:at 1528520951911) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1528520633640) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528520643056) (:by |root) (:text |=)
                            |j $ %{} :Leaf (:at 1528520650756) (:by |root) (:text |op)
                            |r $ %{} :Leaf (:at 1529232013449) (:by |root) (:text |action/clear)
                        |j $ %{} :Expr (:at 1528520953135) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528520940840) (:by |root) (:text |{})
                    |n $ %{} :Expr (:at 1528520941547) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1528520942532) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528520943883) (:by |root) (:text |=)
                            |j $ %{} :Leaf (:at 1528520945898) (:by |root) (:text |op)
                            |r $ %{} :Leaf (:at 1529232033353) (:by |root) (:text |action/create)
                        |j $ %{} :Expr (:at 1528520954593) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528520955510) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1528520958977) (:by |root) (:text |messages)
                            |r $ %{} :Leaf (:at 1528520962819) (:by |root) (:text |op-id)
                            |v $ %{} :Expr (:at 1528520974260) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1528520975207) (:by |root) (:text |merge)
                                |L $ %{} :Leaf (:at 1528520979417) (:by |root) (:text |schema/message)
                                |P $ %{} :Leaf (:at 1528520986621) (:by |root) (:text |op-data)
                                |T $ %{} :Expr (:at 1528520987507) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1528520988168) (:by |root) (:text |{})
                                    |T $ %{} :Expr (:at 1528391665161) (:by |root)
                                      :data $ {}
                                        |j $ %{} :Leaf (:at 1528391668989) (:by |root) (:text |:id)
                                        |r $ %{} :Leaf (:at 1528391669686) (:by |root) (:text |op-id)
                                    |j $ %{} :Expr (:at 1528520992883) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1528520993547) (:by |root) (:text |:time)
                                        |j $ %{} :Leaf (:at 1528520995423) (:by |root) (:text |op-time)
                    |p $ %{} :Expr (:at 1528521001637) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1528521003013) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1528521001927) (:by |root) (:text |=)
                            |j $ %{} :Leaf (:at 1528521005811) (:by |root) (:text |op)
                            |r $ %{} :Leaf (:at 1529232040792) (:by |root) (:text |action/remove-one)
                        |j $ %{} :Expr (:at 1528911484992) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1528911486734) (:by |root) (:text |if)
                            |L $ %{} :Expr (:at 1528911486964) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528911487642) (:by |root) (:text |some?)
                                |j $ %{} :Expr (:at 1528911487882) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528911488713) (:by |root) (:text |:token)
                                    |j $ %{} :Leaf (:at 1528911489624) (:by |root) (:text |op-data)
                            |P $ %{} :Expr (:at 1528911490784) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1619591867949) (:by |5tTrKalIE) (:text |->)
                                |j $ %{} :Leaf (:at 1528911501964) (:by |root) (:text |messages)
                                |l $ %{} :Expr (:at 1614326031127) (:by |5tTrKalIE)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614326032468) (:by |5tTrKalIE) (:text |to-pairs)
                                |n $ %{} :Expr (:at 1528911507933) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1528911509987) (:by |root) (:text |filter)
                                    |j $ %{} :Expr (:at 1528911510233) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1528911522116) (:by |root) (:text |fn)
                                        |L $ %{} :Expr (:at 1614324871132) (:by |5tTrKalIE)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614324872129) (:by |5tTrKalIE) (:text |pair)
                                        |j $ %{} :Expr (:at 1614324873151) (:by |5tTrKalIE)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1614324875794) (:by |5tTrKalIE) (:text |let[])
                                            |H $ %{} :Expr (:at 1614324878528) (:by |5tTrKalIE)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1614324880433) (:by |5tTrKalIE) (:text |k)
                                                |j $ %{} :Leaf (:at 1614324882425) (:by |5tTrKalIE) (:text |message)
                                            |L $ %{} :Leaf (:at 1614324877796) (:by |5tTrKalIE) (:text |pair)
                                            |T $ %{} :Expr (:at 1528911528922) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1528911560373) (:by |root) (:text |not=)
                                                |j $ %{} :Expr (:at 1528911562475) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528911563383) (:by |root) (:text |:token)
                                                    |j $ %{} :Leaf (:at 1528911565499) (:by |root) (:text |op-data)
                                                |r $ %{} :Expr (:at 1528911566942) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1528911567763) (:by |root) (:text |:token)
                                                    |j $ %{} :Leaf (:at 1528911568762) (:by |root) (:text |message)
                                |r $ %{} :Expr (:at 1528911503219) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614325009642) (:by |5tTrKalIE) (:text |pairs-map)
                            |T $ %{} :Expr (:at 1528521023227) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1528521026232) (:by |root) (:text |dissoc)
                                |j $ %{} :Leaf (:at 1528521028520) (:by |root) (:text |messages)
                                |r $ %{} :Expr (:at 1528521502181) (:by |root)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1528521503211) (:by |root) (:text |:id)
                                    |T $ %{} :Leaf (:at 1528521033483) (:by |root) (:text |op-data)
                    |r $ %{} :Expr (:at 1528520635271) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614325014816) (:by |5tTrKalIE) (:text |true)
                        |j $ %{} :Leaf (:at 1528521109881) (:by |root) (:text |messages)
            :doc |
        :ns $ %{} :CodeEntry
          :code $ %{} :Expr (:at 1510939172486) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510939172486) (:by |root) (:text |respo-message.updater)
              |r $ %{} :Expr (:at 1528520657102) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1528520657805) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1528520658056) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1528520662229) (:by |root) (:text |respo-message.schema)
                      |r $ %{} :Leaf (:at 1528520663907) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1528520664908) (:by |root) (:text |schema)
                  |r $ %{} :Expr (:at 1528520658056) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1529232022539) (:by |root) (:text |respo-message.action)
                      |r $ %{} :Leaf (:at 1528520663907) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1529232026000) (:by |root) (:text |action)
          :doc |
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |5tTrKalIE $ {} (:avatar nil) (:id |5tTrKalIE) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
