(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?COVER-POT-HAVE
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I do not have a lid ."
    :TARGETFORM   "I do not have a lid."
    :LOGICALFORM
        (HAVE / |Ownership|
            :LEX HAVE
            ;:PROPOSAL-Q NOTPROPOSAL
            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :POLARITY-VALUE-Q NEGATIVE
            :|domain| SPEAKER
            :|range|
                (WARRANTY / |Object|
                    :LEX LID
                    :DETERMINER ZERO)))
