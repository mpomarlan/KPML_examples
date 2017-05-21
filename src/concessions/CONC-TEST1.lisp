(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-TEST1
;    :GENERATEDFORM   "We go to the blue lake."
;    :TARGETFORM   "We go to the blue lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :TENSE PRESENT :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (WE / OBJECT :LEX LAKE :DETERMINER THE :PROPERTY-ASCRIPTION
;        (B / QUALITY :LEX BLUE)))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-TEST1
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "We go  [NIL] the blue lake ."
    :TARGETFORM   "We go to the blue lake."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE PRESENT
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (LA / |gum#Object|
                  :LEX LAKE
                  :DETERMINER THE
                  :|ColorPropertyAscription|
                    (B / |Color| :LEX BLUE)))  
)
