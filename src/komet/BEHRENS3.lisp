(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS3
;    :GENERATEDFORM   "He attended the art schools in Karlsruhe and Duesseldorf in 1886-1889."
;    :TARGETFORM   "He attended the art schools in Karlsruhe and Duesseldorf in 1886-1889."
;    :LOGICALFORM   
;(P3 / DIRECTED-ACTION :LEX ATTEND :TENSE PAST :TEMPORAL-LOCATING
;    (AT1 / THREE-D-TIME :NAME |1886-1889|)
;    :TIMELOCATIVE-THEME-Q CONTEXT :ACTOR
;    (B2 / PERSON :MEMBER-SET-Q
;        (SPEAKER HE)
;        NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;        :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;    :ACTEE
;    (A1 / NON-CONSCIOUS-THING :LEX ART-SCHOOL :IDENTIFIABILITY-Q
;        IDENTIFIABLE :SINGULARITY-Q NONSINGULAR :MULTIPLICITY-Q
;        MULTIPLE :SPATIAL-LOCATING
;        ((K / THREE-D-LOCATION :NAME KARLSRUHE) 
;         (D / THREE-D-LOCATION :NAME DUESSELDORF))))
;    :SET-NAME   |behrens|
;)

(EXAMPLE
    :NAME   BEHRENS3
    :SET-NAME   komet
    :GENERATEDFORM   "He attended the art schools in Karlsruhe  and Duesseldorf  [NIL] 1886-1889."
    :TARGETFORM   "He attended the art schools in Karlsruhe and Duesseldorf in 1886-1889."
    :LOGICALFORM   
      (P3 / |AffectingAction|
              :LEX ATTEND
              :TENSE PAST
              :TIMELOCATIVE-THEME-Q CONTEXT
              :|space#TemporalLocating|
                (AT1 / |TimeInterval|
                         :NAME |1886-1889|)
              :|actor|
                (B2 / |Person|
                       :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                       :MULTIPLICITY-Q UNITARY
                       :EMPTY-NUMBER-Q EMPTY
                       :IDENTIFIABILITY-Q IDENTIFIABLE
                       :GENDER-Q MALE)
              :|actee|
                (A1 / |gum#NonConsciousThing|
                        :LEX ART-SCHOOL
                        :IDENTIFIABILITY-Q IDENTIFIABLE
                        :SINGULARITY-Q NONSINGULAR
                        :MULTIPLICITY-Q MULTIPLE
                        :|SpatialLocating|
                          ((K / |ThreeDLocation|
                                  :NAME KARLSRUHE) 
                           (D / |ThreeDLocation|
                                  :NAME DUESSELDORF))
                        ))
)