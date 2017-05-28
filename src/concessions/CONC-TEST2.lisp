(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-TEST2
;    :GENERATEDFORM   "We go to the lake that is blue."
;    :TARGETFORM   "We go to the lake that is blue."
;    :LOGICALFORM   
;(G / NONDIRECTED-ACTION :LEX GO-VERB :ACTOR
;   (SPEAKER / PERSON :NUMBER PLURAL)
;   :DESTINATION
;   (LA / OBJECT :LEX LAKE :DETERMINER THE :RELATIONS
;       (PR / PROPERTY-ASCRIPTION :DOMAIN LA :TENSE PRESENT :RANGE
;           (B / QUALITY :LEX BLUE))))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-TEST2
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "We go to the lake whereas it is a blue ."
    :TARGETFORM   "We go to the lake that is blue."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE PRESENT
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
                                         :DETERMINER THE
                                         :RELATIONS
                    (PA / |gum#PropertyAscription| 
                             :LEX BE
                             :TENSE PRESENT
                             :|gum#domain| LA
                             :|gum#range|
                               (B / |ColorQuality| :LEX BLUE)))))  
)

