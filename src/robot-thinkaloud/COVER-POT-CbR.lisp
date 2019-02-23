(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?COVER-POT-CbR
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am covering the pot with the plate ,because I don't have a lid ."
    :TARGETFORM   "I am covering the pot with the plate, because I don't have a lid."
    :LOGICALFORM   
        (RST / |uio#RSTMotivation|
            :exist-speech-act-q speechact
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :manner-condition-q nonmannercondition
            :cause-condition-q causecondition 
            :|domain|
                ?COVER-POT-DOING-COVER
            :|range|
                ?COVER-POT-HAVE))
