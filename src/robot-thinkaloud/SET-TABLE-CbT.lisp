(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CbT
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am picking up the spoon ,because I am setting the table ."
    :TARGETFORM   "I am picking up the spoon, because I am setting the table."
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
                ?SET-TABLE-DOING-SET))
