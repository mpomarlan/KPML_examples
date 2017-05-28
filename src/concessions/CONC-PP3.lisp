(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-PP3
;    :GENERATEDFORM   "In spite of the bad weather, we will go to the lake."
;    :TARGETFORM   "NOTWITHSTANDING the bad weather, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :THEME WE :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :LEGALISTIC-Q
;    (WE)
;    LEGALISTIC :FORMALITY-Q
;    (WE)
;    FORMAL :CONCESSIVE
;    (WE / OBJECT :LEX WEATHER :DETERMINER THE :PROPERTY-ASCRIPTION
;        (B / QUALITY :LEX BAD))
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-PP3
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Notwithstanding the bad weather ,we will go to the lake ."
    :TARGETFORM   "Notwithstanding the bad weather, we will go to the lake."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
              :circumstantial-theme-q context 
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (L1 / |space#GeneralizedRoute|
                                 :SPATIO-TEMPORAL-TYPE-Q SPATIAL
                                 :SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
                               :|space#relatum|
                                 (LA / |gum#Object|
                                         :LEX LAKE
                                         :DETERMINER THE))
              :RELATIONS
                ((CON / |concessive|
                          :FORMALITY-Q FORMAL
                          :LEGALISTIC-Q LEGALISTIC
                          :|domain| GO
                          :|range|
                            (WE / |gum#Object|
                                    :LEX WEATHER
                                    :DETERMINER THE
                                    :|ModalPropertyAscription|
                                      (B / |gum#ModalQuality|
                                             :LEX BAD)))))  
)
