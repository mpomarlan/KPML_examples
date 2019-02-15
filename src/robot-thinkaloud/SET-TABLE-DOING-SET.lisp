(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-DOING-SET
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am setting the table ."
    :TARGETFORM   "I am setting the table."
    :LOGICALFORM   
        (SET / |DispositiveMaterialAction|
            :LEX SET-VERB
            :tense present-continuous
            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            ;:purpose-relation-q purpose
            :|actor| speaker
            :|actee|
                (TABLE / |Object| 
                    :LEX TABLE
                    :DETERMINER THE)))
