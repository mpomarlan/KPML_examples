(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?SET-TABLE-TtC
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "huh?"
    :TARGETFORM   "I am setting the table, therefore I am picking up the spoon."
    :LOGICALFORM   
        (RST / |uio#RSTVolitionalResult|
            :exist-speech-act-q speechact
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :manner-condition-q nonmannercondition
            :cause-condition-q notcausecondition
            :|domain|
                ?SET-TABLE-DOING-SET
            :|range|
                ?SET-TABLE-DOING-PICK-UP))
