(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-PP2
;    :GENERATEDFORM   "In spite of the bad weather, we will go to the lake."
;    :TARGETFORM   "DESPITE the bad weather, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :THEME WE :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :CONCESSIVE
;    (WE / OBJECT :LEX WEATHER :DETERMINER THE :PROPERTY-ASCRIPTION
;        (B / QUALITY :LEX BAD))
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-PP2
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Despite the bad weather ,we will go to the lake ."
    :TARGETFORM   "Despite the bad weather, we will go to the lake."
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
                          :LEGALISTIC-Q NONLEGALISTIC
                          :|domain| GO
                          :|range|
                            (WE / |gum#Object|
                                    :LEX WEATHER
                                    :DETERMINER THE
                                    :|ModalPropertyAscription|
                                      (B / |gum#ModalQuality|
                                             :LEX BAD)))))  
)

;(EXAMPLE
;    :NAME   CONC-PP2
;    :SET-NAME   CONCESSIONS
;    :GENERATEDFORM   "We will go  [NIL] the lake despite the bad weather ."
;    :TARGETFORM   "Despite the bad weather, we will go to the lake."
;    :LOGICALFORM
;      (GO / |space#NonAffectingDirectedMotion|
;              :LEX GO-VERB
;              :TENSE FUTURE
;              :|gum#actor|
;                (sp / |gum#Person|
;                        :LEX WE
;                        :NUMBER PLURAL)
;              :|space#direction|
;                (LA / |gum#Object|
;                  :LEX LAKE
;                  :DETERMINER THE)
;              :RELATIONS
;                ((CON / |concessive|
;                          :FORMALITY-Q FORMAL
;                          :LEGALISTIC-Q NONLEGALISTIC
;                          :|domain| GO
;                          :|range|
;                            (WE / |gum#Object|
;                                    :LEX WEATHER
;                                    :DETERMINER THE
;                                    :|ModalPropertyAscription|
;                                      (B / |gum#ModalQuality|
;                                             :LEX BAD)))))  
;)
