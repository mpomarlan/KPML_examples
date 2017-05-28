(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS5
;    :SET-NAME   |behrens|
;    :GENERATEDFORM   "At the end of the century Behrens gave up painting, and he took up architecture in Darmstadt."
;    :TARGETFORM   "At the end of the century Behrens gave up painting and took up architecture in Darmstadt."
;    :LOGICALFORM   
;((P5 P6) 
; (P5 / DISPOSITIVE-MATERIAL-ACTION :LEX GIVE-UP :TENSE PAST
;     :TIMELOCATIVE-THEME-Q CONTEXT :THEME E1 :TEMPORAL-NONORDERING
;     (E1 / TIME-POINT :LEX END :IDENTIFIABILITY-Q IDENTIFIABLE :PART-OF
;         (C1 / OBJECT :LEX CENTURY :IDENTIFIABILITY-Q IDENTIFIABLE))
;     :ACTOR
;     (B1 / PERSON :NAME BEHRENS)
;     :ACTEE
;     (PA1 / NONDECOMPOSABLE-OBJECT :LEX PAINTING :MULTIPLICITY-Q
;          UNITARY :SINGULARITY-Q NONSINGULAR))
; (P6 / CREATIVE-MATERIAL-ACTION :LEX TAKE-UP :TENSE PAST :ACTOR
;     (B1 / PERSON :MEMBER-SET-Q
;         (SPEAKER HE)
;         NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;         :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;     :ACTEE
;     (A1 / OBJECT :LEX ARCHITECTURE :MULTIPLICITY-Q UNITARY
;         :SINGULARITY-Q NONSINGULAR)
;     :STATIC-SPATIAL
;     (D1 / THREE-D-LOCATION :NAME DARMSTADT)))
;)

(EXAMPLE
    :NAME   BEHRENS5
    :SET-NAME   komet
    :GENERATEDFORM   "Behrens  gave up painting at the end of the century ,and he took up architecture in Darmstadt ."
    :TARGETFORM   "At the end of the century Behrens gave up painting and took up architecture in Darmstadt."
    :LOGICALFORM   
      ((P5 P6)
       (P5 / |DispositiveMaterialAction|
               :LEX GIVE-UP
               :TENSE PAST
               :TIMELOCATIVE-THEME-Q CONTEXT
               :|space#TemporalLocating|
                 (E1 / |TimePoint|
                         :LEX END
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :|PartOf|
                           (C1 / |Object|
                                   :LEX CENTURY
                                   :IDENTIFIABILITY-Q IDENTIFIABLE))
               :|actor|
                 (B1 / |Person|
                         :NAME BEHRENS)
               :THEME E1
               :|actee|
                 (PA1 / |Object|
                          :LEX PAINTING
                          :MULTIPLICITY-Q UNITARY
                          :SINGULARITY-Q NONSINGULAR))
       (P6 / |CreativeMaterialAction|
               :LEX TAKE-UP
               :TENSE PAST
               :|actor|
                 (B1 / |Person|
                         :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                         :MULTIPLICITY-Q UNITARY
                         :EMPTY-NUMBER-Q EMPTY
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :GENDER-Q MALE)
               :|actee|
                 (A1 / |Object|
                         :LEX ARCHITECTURE
                         :MULTIPLICITY-Q UNITARY
                         :SINGULARITY-Q NONSINGULAR
                         :|SpatialLocating|
                           (K / |ThreeDLocation|
                                  :NAME Darmstadt)))
       )
)