(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CAN-EAT
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "We can eat lunch ."
    :TARGETFORM   "We can eat lunch."
    :LOGICALFORM   
        (EAT / |DispositiveMaterialAction|
            :LEX EAT
            :tense present
            :|ModalPropertyAscription|
                (MOD / ABILITY)
            :circumstance-q circumstance
            :causal-relation-q causalrelation
            :purpose-relation-q (rst2) purpose
            :circumstance-q circumstance
            :ability-q ability
            :|actor|
                (SPEAKER / |Person|
                    :number plural)
            :|actee|
                (LUNCH / |Object| 
                    :LEX LUNCH
                    :identifiability-q notidentifiable
                    :determiner zero)))
