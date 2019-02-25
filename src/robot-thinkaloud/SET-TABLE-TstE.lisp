(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-TstE
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am setting the table, in order to be eating lunch ."
    :TARGETFORM   "I am setting the table, so that we can eat lunch."
    :LOGICALFORM   
        (RST2 / |uio#RSTPurpose|
            :exist-speech-act-q speechact
            :purpose-relation-q (rst) notpurpose
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :cause-condition-q causecondition

            :circumstance-q circumstance
            :causal-relation-q causalrelation

            :|domain|
                ?SET-TABLE-DOING-SET
            :|range|
                ?SET-TABLE-CAN-EAT))
