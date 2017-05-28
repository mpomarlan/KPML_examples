(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS1
;    :GENERATEDFORM   "Behrens"
;    :TARGETFORM   "Behrens, Peter, born in Hamburg in 1968, died in Berlin in 1940."
;    :LOGICALFORM   
;((P1 / PERSON :NAME BEHRENS :EXIST-SPEECH-ACT-Q NOSPEECHACT
;     :MODIFYING-RELATION-Q NONMODIFYING :CIRCUMSTANCE-Q NOTCIRCUMSTANCE
;     :PROPERTY-Q NOTPROPERTY :QUANTITY-Q NOTQUANTITY :PROCESSUAL-Q
;     NONPROCESSUAL :PROCESS
;     (BR DD)) 
; (BR / CREATIVE-MATERIAL-ACTION :LEX BEAR :TENSE PAST :PP-THEME P1
;     :ACTEE P1 :TEMPORAL-LOCATING
;     (T1 / YEAR-OF-BIRTH)
;     :STATIC-SPATIAL
;     (S1 / HAMBURG))
; (DD / NONDIRECTED-ACTION :LEX DIE :ACTOR P1 :TENSE PAST
;     :TEMPORAL-LOCATING
;     (T2 / YEAR-OF-DEATH)
;     :STATIC-SPATIAL
;     (S2 / BERLIN)))
;    :SET-NAME   |behrens|
;)

(EXAMPLE
    :NAME   BEHRENS1
    :SET-NAME   komet
    :GENERATEDFORM   "Behrens, Peter"
    :TARGETFORM   "Behrens, Peter, born in Hamburg in 1868, died in Berlin in 1940."
    :LOGICALFORM   
      ((P1 / |Person| :NAME |Behrens, Peter|
               :PROCESS (DD))
       (BR / |CreativeMaterialAction|
               :LEX CREATE 
               :TENSE PAST
               :THEME P1
               :PP-THEME P1
               :|actor| P1
               :|actee| P1
               :exist-speech-act-q speechact
               :temporal-extent-specification-q temporalextent
               :temporal-extent-id
               (A / |TimePoint| :NAME 1868)
               )
       (DD / |NonAffectingAction|
               :LEX DIE
               :TENSE PAST
               :|actor| P1
               :STATIC-SPATIAL (BL / |gum#Object| :NAME Berlin)
               :TEMPORAL-LOCATING (T2 / |TimePoint| :NAME 1948)
               )
       )
    )

(EXAMPLE
    :NAME   BEHRENS1
    :SET-NAME   komet
    :GENERATEDFORM   "Behrens, Peter"
    :TARGETFORM   "Behrens, Peter, born in Hamburg in 1868, died in Berlin in 1940."
    :LOGICALFORM   
      (DD / |NonAffectingAction|
              :LEX DIE
              :TENSE PAST
              :|actor| (P1 / |Person|
                               :NAME |Behrens, Peter|)
              :|spatialCircumstance|
                (BL / |space#SpatialLocating|
                        :NAME Berlin
		             )
              )
    )
