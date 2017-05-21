(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-COORD2
;    :GENERATEDFORM   "The weather is bad, yet we will go to the lake."
;    :TARGETFORM   "The weather is bad, YET we will go to the lake."
;    :LOGICALFORM   
;(CON / RST-CONTRASTIVE :CONTRASTIVE-CONCESSION-Q CONCESSIVE :DOMAIN
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
    :NAME   CONC-COORD2
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "The weather is bad ,and we will go  [NIL] the lake ."
    :TARGETFORM   "The weather is bad, YET we will go to the lake."
    :LOGICALFORM   
      (CON / |Conjunction|
               :exist-speech-act-q speechact
               :statement-q statement
               :concessive-condition-q notconcessive
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
                         (LA / |gum#Object|
                                 :LEX LAKE
                                 :DETERMINER THE)))
)
