(in-package :kpml-ex)

(EXAMPLE
    :NAME    ?EX-SET-55-WE
    :GENERATEDFORM   ""
    :TARGETFORM   ""
    :LOGICALFORM
        (WE / |Person| :pronoun WE))

(EXAMPLE
    :NAME    ?EX-SET-55-I-AND-YOU
    :GENERATEDFORM   ""
    :TARGETFORM   ""
    :LOGICALFORM
        (SPEAKER HEARER))

(EXAMPLE
    :NAME   ?EX-SET-55
    :SET-NAME   nigel-exerciseset
    :GENERATEDFORM   "What news has he been told since Wednesday  about my and your meeting?"
    :TARGETFORM   "What news has he been told since Wednesday about our meeting?"
    :LOGICALFORM   
        (TELL / |AddresseeOriented|
            :LEX TELL
            :theme ID
            :pp-theme HE
            :tense present-perfect
            :question-item-id ID
            :temporal-location-specification-q temporallocation
            :speech-act-id
                (Q / |uio#Question| :polarity positive)
            :|saying|
                (ID / |Abstraction|
                    :LEX NEWS
                    :number mass)
            :|addressee|
                (HE / |Person| :pronoun HE)
            :|SubjectMatter|
                (MEET / |GUMThing|
                    :LEX MEETING
                    :identifiability-q identifiable
                    :process-modification-q noprocess
                    :proximity-modification-q noproximity
                    :possessor-modification-q possessor
                    :|OwnedBy|
                        ?EX-SET-55-I-AND-YOU
                    :possessor-mod-id
                        ?EX-SET-55-I-AND-YOU
                    :possessor-relation-id
                        ?EX-SET-55-I-AND-YOU
                    :identifiability-q identifiable)
            :temporal-location-id
                (DAY / |TimeInterval|
                    :name WEDNESDAY
                    :time-ordering-q ordered
                    :posterior-q posterior
                    :period-extremal-q periodextremal
                    :period-time-or-state-q time-period)))

