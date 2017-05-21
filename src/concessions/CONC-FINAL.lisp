(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-FINAL
;    :GENERATEDFORM   "We will go to the lake still."
;    :TARGETFORM   "We will go to the lake, still."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :CONJUNCTIVE STILL
;    :TEXTUAL-THEME-Q NOTCONTEXT :FINAL-TEXTUAL-Q FINAL :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-FINAL
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "We will go  [NIL] the lake still."
    :TARGETFORM   "We will go to the lake, still."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
              :CONJUNCTIVE STILL
              :TEXTUAL-THEME-Q NOTCONTEXT :FINAL-TEXTUAL-Q FINAL
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (LA / |gum#Object|
                  :LEX LAKE
                  :DETERMINER THE))  
)
