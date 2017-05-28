(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-SUB-EXT
;    :GENERATEDFORM   "We will go to the lake, although the weather is bad."
;    :TARGETFORM   "We will go to the lake, although the weather is bad."
;    :LOGICALFORM   
;(RST / EXT-CONCESSIVE :CONDITION-Q NONCONDITION :INTENSIFICATION-Q
;     NONINTENSIFIED :FORMAL-REGISTER-Q FORMAL :DOMAIN
;     (GO / NONDIRECTED-ACTION :LEX GO-VERB :ACTOR
;         (SPEAKER / PERSON :NUMBER PLURAL)
;         :DESTINATION
;         (LA / OBJECT :LEX LAKE :DETERMINER THE)
;         :TENSE FUTURE)
;     :RANGE
;     (PA / PROPERTY-ASCRIPTION :TENSE PRESENT :DOMAIN
;         (WE / OBJECT :LEX WEATHER :DETERMINER THE)
;         :RANGE
;         (B / QUALITY :LEX BAD)))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-SUB-EXT
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "We will go to the lake ,and the weather is bad ."
    :TARGETFORM   "We will go to the lake, although the weather is bad."
    :LOGICALFORM   
      (CON / |Conjunction|
               :exist-speech-act-q speechact
               :statement-q statement
               :CONCESSIVE-CONDITION-Q CONCESSIVE
               :LOGICAL-CONDITION-Q NONLOGICALCONDITION
;               :CONDITION-Q NONCONDITION
;               :INTENSIFICATION-Q NONINTENSIFIED
               :FORMAL-REGISTER-Q FORMAL 
             :|range|
               (PA / |gum#PropertyAscription| 
                       :LEX BE 
                       :TENSE PRESENT 
                       :|gum#domain| 
                         (WE / |gum#Object| 
                                 :LEX WEATHER 
                                 :DETERMINER THE)
                       :|gum#range|
                         (B / |gum#ModalQuality| :LEX BAD))
             :|domain|
               (GO / |space#NonAffectingDirectedMotion|
                       :LEX GO-VERB
                       :TENSE FUTURE
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
                                         :DETERMINER THE))))
)
