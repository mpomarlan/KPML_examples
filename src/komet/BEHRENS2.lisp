(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   BEHRENS2
;    :SET-NAME   |behrens|
;    :GENERATEDFORM   "Behrens like Le Corbusier began his professional activity as a painter."
;    :TARGETFORM   "Behrens like Le Corbusier began his professional activity as a painter."
;    :LOGICALFORM   
;(P2 / CREATIVE-MATERIAL-ACTION :LEX BEGIN :TENSE PAST :ACTOR
;    (B1 / PERSON :NAME BEHRENS)
;    :ACTEE
;    (A1 / OBJECT :LEX ACTIVITY :SINGULARITY-Q SINGULAR :MULTIPLICITY-Q
;        UNITARY :OWNED-BY
;        (S2 / PERSON :MEMBER-SET-Q
;            (SPEAKER HE)
;            NOTINCLUDED :MULTIPLICITY-Q UNITARY :EMPTY-NUMBER-Q EMPTY
;            :IDENTIFIABILITY-Q IDENTIFIABLE :GENDER-Q MALE)
;        :PROPERTY-ASCRIPTION
;        (PR1 / MATERIAL-CLASS-QUALITY :LEX PROFESSIONAL))
;    :ROLE-PLAYING
;    (PA1 / PERSON :LEX PAINTER)
;    :SIMILARITY
;    (C1 / PERSON :NAME LECORBUSIER))
;)

(EXAMPLE
    :NAME   BEHRENS2
    :SET-NAME   KOMET
    :GENERATEDFORM   "Behrens  like Le Corbusier  began his professional activity as a painter."
    :TARGETFORM   "Behrens like Le Corbusier began his professional activity as a painter."
    :LOGICALFORM   
(P2 / |CreativeMaterialAction|
        :LEX BEGIN
        :TENSE PAST
        :|actor|
          (B1 / |Person| :NAME BEHRENS)
        :|actee|
          (A1 / |gum#Object|
                  :LEX ACTIVITY
                  :SINGULARITY-Q SINGULAR
                  :MULTIPLICITY-Q UNITARY
                  :|OwnedBy| (S2 / |Person|
                                     :MEMBER-SET-Q (SPEAKER HE) NOTINCLUDED
                                     :MULTIPLICITY-Q UNITARY
                                     :EMPTY-NUMBER-Q EMPTY
                                     :IDENTIFIABILITY-Q IDENTIFIABLE
                                     :GENDER-Q MALE)
                  :|gum#PropertyAscription|
                    (PR1 / |gum#MaterialClassQuality|
                           :LEX PROFESSIONAL))
        :|gum#RolePlaying|
          (PA1 / |Person| :LEX PAINTER)
        :|gum#similarity|
          (C1 / |Person| :NAME |Le Corbusier|))
)
