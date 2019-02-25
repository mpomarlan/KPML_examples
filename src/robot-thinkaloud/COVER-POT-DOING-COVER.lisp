(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?COVER-POT-DOING-COVER
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am covering the pot with the plate ."
    :TARGETFORM   "I am covering the pot with the plate."
    :LOGICALFORM   
        (COVER / |DispositiveMaterialAction|
            :LEX COVER
            :tense present-continuous
            :causal-relation-q causalrelation
            :|actor| speaker
            :|actee|
                (POT / |Object| 
                    :LEX POT
                    :DETERMINER THE)
            :|instrumental|
                (PLATE / |Object|
                    :LEX PLATE
                    :DETERMINER THE)))
