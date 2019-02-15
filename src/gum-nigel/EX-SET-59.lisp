(in-package :kpml-ex)

(EXAMPLE
    :NAME   EX-SET-59
    :SET-NAME   nigel-exerciseset
    :GENERATEDFORM   "Who did she tell?"
    :TARGETFORM   "Whom did she tell?"
    :LOGICALFORM   
        (T / |Cognition|
            :LEX TELL
            :tense past
            :question-item-id id
            :speech-act-id
                (Q / |uio#Question| :polarity positive)
            :|senser|
                (SHE / |Person| :pronoun SHE)
            :|phenomenon|
                (ID / |Person| :empty-number-q empty)))
