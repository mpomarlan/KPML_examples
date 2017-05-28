(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS1A
;    :GENERATEDFORM   "Behrens was born in Hamburg in 1868, and he died in Berlin in 1940."
;    :TARGETFORM   "Behrens (Peter) was born in Hamburg in 1868 and died in Berlin in 1940."
;    :LOGICALFORM   
;((BR DD) 
; (BR / CREATIVE-MATERIAL-ACTION :LEX BEAR :TENSE PAST :PP-THEME P1
;     :ACTEE
;     (P1 / PERSON :NAME BEHRENS)
;     :TEMPORAL-LOCATING
;     (T1 / YEAR :NAME EIGHTEEN-SIXTY-EIGHT)
;     :STATIC-SPATIAL
;     (S1 / THREE-D-LOCATION :NAME HAMBURG))
; (DD / NONDIRECTED-ACTION :LEX DIE :ACTOR
;     (P1 / PERSON :MEMBER-SET-Q
;         (SPEAKER HE)
;         NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;         :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;     :TENSE PAST :TEMPORAL-LOCATING
;     (T2 / YEAR :NAME NINETEEN-FOURTY)
;     :STATIC-SPATIAL
;     (S2 / THREE-D-LOCATION :NAME BERLIN)))
;    :SET-NAME   |behrens|
;)

(EXAMPLE
    :NAME   BEHRENS1A
    :SET-NAME   komet
    :GENERATEDFORM   "Behrens (Peter)  was created in Hamburg  [NIL] 1868 ,and he died in Berlin  [NIL] 1940 ."
    :TARGETFORM   "Behrens (Peter) was born in Hamburg in 1868 and died in Berlin in 1940."
    :LOGICALFORM   
      ((BR DD)
       (BR / |AffectingAction|
               :LEX CREATE
               :TENSE PAST
               :PP-THEME P1
               :TIMELOCATIVE-THEME-Q CONTEXT
               :SPATIAL-LOCATION-SPECIFICATION-Q NOSPATIALLOCATION
               :|actee|
                 (P1 / |Person|
                         :NAME |Behrens (Peter)|
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :SINGULARITY-Q NONSINGULAR
                         :MULTIPLICITY-Q UNITARY)
               :|space#TemporalLocating|
                 (AT1 / |Year|
                          :NAME |1868|)
               :|space#destination|
                 (L1 / |space#GeneralizedLocation|
			         :spatio-temporal-type-q spatial
                         :DIMENSION-RELATION-Q THREEDIMENSION
                         :|space#hasSpatialModality|
                           (C1 / |space#FunctionalControlledInternal| )
                         :|space#relatum|
                           (R1 / |GUMThing|
                                   :NAME HAMBURG)))
       (DD / |gum#NonAffectingAction|
               :LEX DIE
               :TENSE PAST
               :|actor|
                 (P1 / |Person|
                         :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                         :MULTIPLICITY-Q UNITARY
                         :EMPTY-NUMBER-Q EMPTY
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :GENDER-Q MALE)
               :|space#TemporalLocating|
                 (AT1 / |Year|
                          :NAME |1940|)
               :|space#destination|
                 (L1 / |space#GeneralizedLocation|
			         :spatio-temporal-type-q spatial
                         :DIMENSION-RELATION-Q THREEDIMENSION
                         :|space#hasSpatialModality|
                           (C1 / |space#FunctionalControlledInternal|)
                         :|space#relatum|
                           (R1 / |GUMThing|
                                   :NAME Berlin))))
    )
