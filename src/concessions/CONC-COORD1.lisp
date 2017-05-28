(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-COORD1
;    :GENERATEDFORM   "The weather is bad, but we will go to the lake."
;    :TARGETFORM   "The weather is bad, BUT we will go to the lake."
;    :LOGICALFORM   
;(CON / RST-CONTRASTIVE :CONTRASTIVE-CONCESSION-Q NONCONCESSIVE :DOMAIN
;     (PA / PROPERTY-ASCRIPTION :TENSE PRESENT :DOMAIN
;         (WE / OBJECT :LEX WEATHER :DETERMINER THE)
;         :RANGE
;         (B / QUALITY :LEX BAD))
;     :RANGE
;     (GO / NONDIRECTED-ACTION :LEX GO-VERB :ACTOR
;         (SPEAKER / PERSON :NUMBER PLURAL)
;         :DESTINATION
;         (LA / OBJECT :LEX LAKE :DETERMINER THE)
;         :TENSE FUTURE))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-COORD1
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "The weather is bad ,but we will go to the lake ."
    :TARGETFORM   "The weather is bad, BUT we will go to the lake."
    :LOGICALFORM   
      (CON / |Conjunction|
               :exist-speech-act-q speechact
               :statement-q statement
               :contrastive-extension-q contrastive 
             :|domain|
               (PA / |gum#PropertyAscription| 
                       :LEX BE 
                       :TENSE PRESENT 
                       :|gum#domain| 
                         (WE / |gum#Object| 
                                 :LEX WEATHER 
                                 :DETERMINER THE)
                       :|gum#range|
                         (B / |gum#ModalQuality| :LEX BAD))
             :|range|
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
