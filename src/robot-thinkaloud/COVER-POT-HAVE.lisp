(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?COVER-POT-HAVE
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I do not have a lid ."
    :TARGETFORM   "I do not have a lid."
    :LOGICALFORM
        (HAVE / |Ownership|
            :LEX HAVE
            :purpose-relation-q notpurpose
            :polarity-value-q negative
            :tense present
            :circumstance-q circumstance
            :|domain| speaker
            :|range|
                (LID / |Object|
                    :LEX LID)))

