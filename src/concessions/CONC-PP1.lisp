(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-PP1
;    :GENERATEDFORM   "In spite of the bad weather, we will go to the lake."
;    :TARGETFORM   "IN SPITE OF the bad weather, we will go to the lake."
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
    :NAME   CONC-PP1
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "In spite of the bad weather ,we will go to the lake ."
    :TARGETFORM   "In spite of the bad weather, we will go to the lake."
    :LOGICALFORM   
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :THEME WE
 ;             :POLARITY NEGATIVE
              :circumstantial-theme-q context 
              :TENSE FUTURE
              :|concessive| (WE / |gum#Object|
                                  :LEX WEATHER
                                  :DETERMINER THE
                                  :|ModalPropertyAscription|
                                    (B / |gum#ModalQuality| :LEX BAD))
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
                                         :DETERMINER THE)))
)

;(EXAMPLE
;    :NAME   CONC-PP1
;    :SET-NAME   CONCESSIONS
;    :GENERATEDFORM   "We will go  [NIL] the lake in spite of the bad weather ."
;    :TARGETFORM   "In spite of the bad weather, we will go to the lake."
;    :LOGICALFORM   
;      (GO / |space#NonAffectingDirectedMotion|
;              :LEX GO-VERB
;              :THEME WE
;              :TENSE FUTURE
;              :|concessive| (WE / |gum#Object|
;                                  :LEX WEATHER
;                                  :DETERMINER THE
;                                  :|ModalPropertyAscription|
;                                    (B / |gum#ModalQuality| :LEX BAD))
;              :|gum#actor|
;                (sp / |gum#Person|
;                        :LEX WE
;                        :NUMBER PLURAL)
;              :|space#direction|
;                (LA / |gum#Object|
;                  :LEX LAKE
;                  :DETERMINER THE))
;)
