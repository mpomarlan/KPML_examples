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
            :causal-relation-q causalrelation
            :|actor|
                (SPEAKER / |Person|
                    :number singular)
            :|actee|
                (TABLE / |Object| 
                    :LEX TABLE
                    :DETERMINER THE)))
