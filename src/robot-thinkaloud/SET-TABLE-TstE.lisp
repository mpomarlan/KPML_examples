(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-TstE
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am setting the table, in order to be eating lunch ."
    :TARGETFORM   "I am setting the table, so that we can eat lunch."
    :LOGICALFORM   
        (RST / |uio#RSTPurpose|
            :exist-speech-act-q speechact
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :manner-condition-q nonmannercondition
            :cause-condition-q causecondition

            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            ;:purpose-relation-q purpose

            :|domain|
                ?SET-TABLE-DOING-SET
            :|range|
                ?SET-TABLE-CAN-EAT))
