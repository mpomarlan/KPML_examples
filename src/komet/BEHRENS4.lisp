(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS4
;    :GENERATEDFORM   "In 1890 he studied in Munich with Hugo Kotschenreiter, and in 1893 he acted as a co-founder of the Muenchner Sezession."
;    :TARGETFORM   "In 1890 he studied in Munich with Hugo Kotschenreiter, and in 1893 he acted as a co-founder of the Muenchner Sezession."
;    :LOGICALFORM   
;((P4 P41) 
; (P4 / NONDIRECTED-ACTION :LEX STUDY :TIMELOCATIVE-THEME-Q CONTEXT
;     :THEME TL1 :TENSE PAST :TEMPORAL-LOCATING
;     (TL1 / THREE-D-TIME :NAME EIGHTEEN-NINETY)
;     :ACTOR
;     (B3 / PERSON :MEMBER-SET-Q
;         (SPEAKER HE)
;         NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;         :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;     :INSTRUMENTAL
;     (HG1 / PERSON :NAME KOTSCHENREITER)
;     :STATIC-SPATIAL
;     (SS1 / THREE-D-LOCATION :NAME MUNICH))
; (P41 / NONDIRECTED-ACTION :LEX ACT :TENSE PAST :TEMPORAL-LOCATING
;      (TL2 / THREE-D-TIME :NAME EIGHTEEN-NINETYTHREE)
;      :TIMELOCATIVE-THEME-Q CONTEXT :THEME TL2 :ACTOR
;      (B3 / PERSON :MEMBER-SET-Q
;          (SPEAKER HE)
;          NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;          :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;      :ROLE-PLAYING
;      (CF / PERSON :LEX CO-FOUNDER :MULTIPLICITY-Q UNITARY
;          :SINGULARITY-Q SINGULAR :IDENTIFIABILITY-Q NOTIDENTIFIABLE
;          :PART-OF
;          (S1 / OBJECT :LEX SEZESSION :IDENTIFIABILITY-Q IDENTIFIABLE
;              :PROVENANCE-PROPERTY-ASCRIPTION
;              (M1 / PROVENANCE-CLASS-QUALITY :LEX MUENCHNER)))))
;    :SET-NAME   |behrens|
;)

(EXAMPLE
    :NAME   BEHRENS4
    :SET-NAME   komet
    :GENERATEDFORM   "He studied in Munich  in 1890 with Hugo Kotschenreiter ,and he acted  in 1893  as a co-founder of the Muenchner Sezession."
    :TARGETFORM   "In 1890 he studied in Munich with Hugo Kotschenreiter, and in 1893 he acted as a co-founder of the Muenchner Sezession."
    :LOGICALFORM   
      ((P4 P5)
       (P4 / |NonAffectingAction|
               :LEX STUDY
               :TENSE PAST
               :THEME AT1
               :|actor|
                 (B3 / |Person|
                         :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                         :MULTIPLICITY-Q UNITARY
                         :EMPTY-NUMBER-Q EMPTY
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :GENDER-Q MALE)
               :|instrumental|
                 (HG1 / |Person| :NAME KOTSCHENREITER)
               :TIMELOCATIVE-THEME-Q CONTEXT
               :SPATIAL-LOCATION-SPECIFICATION-Q NOSPATIALLOCATION
               :|space#TemporalLocating|
                 (AT1 / |ThreeDTime|
                          :NAME |1890|)
               :|space#destination|
                 (L1 / |space#GeneralizedLocation|
			         :spatio-temporal-type-q spatial
                         :DIMENSION-RELATION-Q THREEDIMENSION
                         :|space#hasSpatialModality|
                           (C1 / |space#FunctionalControlledInternal| )
                         :|space#relatum|
                           (R1 / |GUMThing|
                                   :NAME MUNICH)))
       (P5 / |gum#NonAffectingAction|
               :LEX ACT
               :TENSE PAST
               :THEME AT2
               :|actor|
                 (B4 / |Person|
                         :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                         :MULTIPLICITY-Q UNITARY
                         :EMPTY-NUMBER-Q EMPTY
                         :IDENTIFIABILITY-Q IDENTIFIABLE
                         :GENDER-Q MALE)
               :|RolePlaying|
                 (CF / |Person|
                         :LEX CO-FOUNDER
                         :MULTIPLICITY-Q UNITARY
                         :SINGULARITY-Q SINGULAR
                         :IDENTIFIABILITY-Q NOTIDENTIFIABLE
                         :|PartOf|
                           (MS / |Object|
                                   :LEX MUENCHNER-SEZESSION
                                   :DETERMINER THE))
               :|space#TemporalLocating|
                 (AT2 / |Year|
                          :NAME |1893|)
               ))
    )
