;(EXAMPLE
;    :NAME   CONC-CONJUNCTIVE
;    :GENERATEDFORM   "The weather is bad."
;    :TARGETFORM   "The weather is bad."
;    :LOGICALFORM   
;(PA / PROPERTY-ASCRIPTION :TENSE PRESENT :DOMAIN
;    (WE / OBJECT :LEX WEATHER :DETERMINER THE)
;    :RANGE
;    (B / QUALITY :LEX BAD))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-CONJUNCTIVE
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "The weather is bad ."
    :TARGETFORM   "The weather is bad."
    :LOGICALFORM   
      (PA / |gum#PropertyAscription| 
              :LEX BE 
              :TENSE PRESENT 
              :|gum#domain| 
                (WE / |gum#Object| 
                        :LEX WEATHER 
                        :DETERMINER THE)
              :|gum#range|
                (B / |gum#ModalQuality| :LEX BAD))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(EXAMPLE
;    :NAME   CONC-CONJUNCTIVE
;    :GENERATEDFORM   "The weather is bad ."
;    :TARGETFORM   "The weather is bad."
;    :LOGICALFORM   
;      (PA / |gum#ModalPropertyAscription| 
;              :LEX BE 
;              :TENSE PRESENT 
;              :|gum#domain| 
;                (WE / |gum#Object| 
;                        :LEX WEATHER 
;                        :DETERMINER THE)
;              :|gum#range|
;                (B / |gum#ModalQuality| :LEX BAD))
;    :SET-NAME   CONCESSIONS
;)


;(EXAMPLE
;    :NAME   CONC-CONJUNCTIVE
;    :GENERATEDFORM   "The weather is a be ."
;    :TARGETFORM   "The weather is bad."
;    :LOGICALFORM   
;      (PA / |gum#PropertyAscription| 
;              :LEX BE 
;              :TENSE PRESENT 
;              :|gum#domain| 
;                (WE / |gum#Object| 
;                        :LEX WEATHER 
;                        :DETERMINER THE)
;              :|gum#range|
;                (B / |gum#Quality| :LEX BAD))
;    :SET-NAME   CONCESSIONS
;)

;(EXAMPLE
;    :NAME   CONC-CONJUNCTIVE
;    :GENERATEDFORM   "The weather is a be ."
;    :TARGETFORM   "The weather is bad."
;    :LOGICALFORM   
;      (PA / |gum#ModalPropertyAscription| 
;              :LEX BE 
;              :TENSE PRESENT 
;              :|gum#domain| 
;                (WE / |gum#Object| 
;                        :LEX WEATHER 
;                        :DETERMINER THE)
;              :|gum#attribute|
;                (B / |gum#ModalQuality| :LEX BAD))
;    :SET-NAME   CONCESSIONS
;)


;(EXAMPLE
;    :NAME   CONC-CONJUNCTIVE
;    :GENERATEDFORM   "The weather is a be ."
;    :TARGETFORM   "The weather is bad."
;    :LOGICALFORM   
;      (PA / |gum#PropertyAscription| 
;              :LEX BE 
;              :TENSE PRESENT 
;              :|gum#domain| 
;                (WE / |gum#Object| 
;                        :LEX WEATHER 
;                        :DETERMINER THE)
;              :|gum#attribute|
;                (B / |gum#Quality| :LEX BAD))
;    :SET-NAME   CONCESSIONS
;)

