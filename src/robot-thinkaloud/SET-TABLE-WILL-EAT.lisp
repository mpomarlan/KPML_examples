(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-WILL-EAT
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "Persons will eat lunch ."
    :TARGETFORM   "We will eat lunch."
    :LOGICALFORM   
        (EAT / |DispositiveMaterialAction|
            :LEX EAT
            :tense future
            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :purpose-relation-q purpose
            :circumstance-q circumstance
            :|actor|
                (WE / |Person|
                    :PRONOUN WE
                    :number plural)
            :|actee|
                (LUNCH / |GUMThing| 
                    :LEX LUNCH
                    :identifiability-q notidentifiable
                    :determiner zero)))
