(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-CstT
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am picking up the spoon, in order to be set the table ."
    :TARGETFORM   "I am picking up the spoon so that I can set the table."
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
                ?SET-TABLE-CAN-SET))
