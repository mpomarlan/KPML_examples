(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-ALSO
;    :GENERATEDFORM   "Also, we will go to the lake."
;    :TARGETFORM   "Also, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :CONJUNCTIVE ALSO :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-ALSO
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "We will go  [NIL] the lake ."
    :TARGETFORM   "Also, we will go to the lake."
    :LOGICALFORM
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
                  :DETERMINER THE))  
)
