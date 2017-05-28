(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS6
;    :SET-NAME   |behrens|
;    :GENERATEDFORM   "An invite in a date-of-invitation"
;    :TARGETFORM   "The Grand Duke of Hessen invited Behrens to stay in Darmstadt in 1899 and to join a group of young artists who had as their aim the establishment of effective relationships between all the plastic arts."
;    :LOGICALFORM   
;(I1 / VERBAL-PROCESS :LEX INVITE :TENSE PAST :TEMPORAL-LOCATING
;    (YEAR-1899 /
;               (YEAR NUMBER)
;               :VALUE 1899)
;    :SAYER
;    (GD / PERSON :LEX GRAND-DUKE :MULTIPLICITY-Q UNITARY :SINGULARITY-Q
;        SINGULAR :IDENTIFIABILITY-Q IDENTIFIABLE :PART-OF
;        (H / HESSEN :NAME HESSEN))
;    :ADDRESSEE
;    (H / PERSON :NAME BEHRENS)
;    :SAYING
;    ((ST / NONDIRECTED-ACTION :PROPOSAL-Q PROPOSAL :LEX STAY :ACTOR H
;         :TEMPORAL-LOCATING
;         (D / ZERO-D-LOCATION :NAME DARMSTADT)) 
;     (J / DIRECTED-ACTION :PROPOSAL-Q PROPOSAL :ACTOR H :ACTEE
;        (GR / GROUP :PART-OF
;            (A1 / ARTIST :MULTIPLICITY-Q MULTIPLE :SINGULARITY-Q
;                NONSINGULAR :AGE-PROPERTY-ASCRIPTION
;                (Y / YOUNG)
;                :PROCESS
;                (C1 / POSSESSIVE-PROCESS :LEX HAVE :TENSE PAST :DOMAIN
;                    A1 :RANGE
;                    (E / ESTABLISHMENT :IDENTIFIABILITY-Q IDENTIFIABLE
;                       :PART-OF
;                       (R1 / RELATIONSHIP :MULTIPLICITY-Q MULTIPLE
;                           :SINGULARITY-Q NONSINGULAR
;                           :PROPERTY-ASCRIPTION
;                           (EF / EFFECTIVE)
;                           :BETWEEN
;                           (AR / ARTS :MULTIPLICITY-Q MULTIPLE
;                               :SINGULARITY-Q NONSINGULAR
;                               :IDENTIFIABILITY-Q IDENTIFIABLE
;                               :SET-TOTALITY-Q TOTAL
;                               :MATERIAL-PROPERTY-ASCRIPTION
;                               (PL / PLASTIC))))
;                    :ROLE-PLAYING
;                    (A2 / AIM :SINGULARITY-Q SINGULAR :MULTIPLICITY-Q
;                        UNITARY :OWNED-BY
;                        (S2 / PERSON :MEMBER-SET-Q
;                            (SPEAKER THEY)
;                            NOTINCLUDED :MULTIPLICITY-Q MULTIPLE
;                            :EMPTY-NUMBER-Q EMPTY :IDENTIFIABILITY-Q
;                            IDENTIFIABLE))))))))
;)

(EXAMPLE
    :NAME   BEHRENS6
    :SET-NAME   komet
    :GENERATEDFORM   "The Grand Duke of Hessen  invited a stay in Darmstadt  and a join to Behrens ."
    :TARGETFORM   "The Grand Duke of Hessen invited Behrens to stay in Darmstadt in 1899 and to join a group of young artists who had as their aim the establishment of effective relationships between all the plastic arts."
    :LOGICALFORM   
      (IV / |AddressingVerbal|
              :LEX INVITE
              :TENSE PAST
              :|sayer|
                (DK / |Person|
                        :LEX Grand-Duke
                        :|PartOf|
                          (HS / |Object|
                                  :NAME |Hessen|))
              :|addressee|
                (BH / |Person|
                        :NAME |Behrens|)
              :|saying|
                ((ST / |NonAffectingAction|
                         :LEX STAY
                         :PROPOSAL-Q PROPOSAL
                         :|SpatialLocating|
                           (K / |ThreeDLocation|
                                  :NAME Darmstadt))
                 (JN / |AffectingAction|
                         :LEX JOIN
                         :PROPOSAL-Q PROPOSAL
                         :|range|
                           (GR / |Object|
                                   :LEX GROUP
                                   :|PartOf|
            (A1 / |Object|
                    :LEX ARTIST
                    :MULTIPLICITY-Q MULTIPLE
                    :SINGULARITY-Q NONSINGULAR
                    :|AgePropertyAscription|
                      (Y / |AgeQuality|
                             :LEX YOUNG))                                   
                                   )
                         )
                 )
            
              )
)