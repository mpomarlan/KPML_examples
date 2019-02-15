(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-DOING-PICK-UP
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am picking up the spoon ."
    :TARGETFORM   "I am picking up the spoon."
    :LOGICALFORM   
        (PICK / |DispositiveMaterialAction|
            :LEX PICK-UP
            :tense present-continuous
            :causal-relation-q causalrelation
            :|actor| speaker
            :|actee|
                (TABLE / |Object| 
                    :LEX SPOON
                    :DETERMINER THE)))
