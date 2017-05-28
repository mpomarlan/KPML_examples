(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-THEN
;    :GENERATEDFORM   "Then, we will go to the lake."
;    :TARGETFORM   "Then, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :CONJUNCTIVE THEN :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-THEN
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Then,we will go to the lake."
    :TARGETFORM   "Then, we will go to the lake."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
              :CONJUNCTIVE THEN
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
