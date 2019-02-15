(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CAN-SET
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I can set the table ."
    :TARGETFORM   "I can set the table."
    :LOGICALFORM   
        (SET / |DispositiveMaterialAction|
            :LEX SET
            ;:circumstance-q circumstance
            :PROPOSITIONALITY-Q PROPOSITIONAL
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :purpose-relation-q purpose
            :purpose-condition-q purpose
            :circumstance-q circumstance
            :ability-q ability
            :|ModalPropertyAscription|
                (MOD / (CONDITIONAL ABILITY))
            :|actor| speaker
            :|actee|
                (TABLE / |Object| 
                    :LEX TABLE
                    :DETERMINER THE)))
