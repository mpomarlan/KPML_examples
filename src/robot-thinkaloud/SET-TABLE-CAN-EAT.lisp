(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CAN-EAT
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "We can eat lunch ."
    :TARGETFORM   "We can eat lunch."
    :LOGICALFORM   
        (EAT / |DispositiveMaterialAction|
            :LEX EAT
            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :purpose-relation-q purpose
            :circumstance-q circumstance
            :ability-q ability
            :|ModalPropertyAscription|
                (MOD / (CONDITIONAL ABILITY))
            :|actor|
                (SPEAKER / |Person|
                    :PRONOUN WE
                    :number plural)
            :|actee|
                (LUNCH / |GUMThing| 
                    :LEX LUNCH
                    :identifiability-q notidentifiable
                    :determiner zero)))
