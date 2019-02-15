(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CbTstE
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am picking up the spoon ,because I am setting the table ,in order to be eating lunch ."
    :TARGETFORM   "I am picking up the spoon, because I am setting the table, so that we can eat lunch."
    :LOGICALFORM   
        (RST / |uio#RSTPurpose|
            :exist-speech-act-q speechact
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :manner-condition-q nonmannercondition
            :cause-condition-q causecondition 
            :|domain|
                ?SET-TABLE-DOING-PICK-UP
            :|range|
                ?SET-TABLE-TstE))
