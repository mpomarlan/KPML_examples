(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?COVER-POT-CbR
    :SET-NAME   |robot-thinkaloud|
    :GENERATEDFORM   "I am covering the pot with the plate ,because I do not have a lid ."
    :TARGETFORM   "I am covering the pot with the plate, because I do not have a lid."
    :LOGICALFORM   
        (RST / |uio#RSTMotivation|
            :exist-speech-act-q speechact
            :causal-relation-q causalrelation
            :conditioning-q conditioning
            :cause-condition-q causecondition 
            :|domain|
                ?COVER-POT-DOING-COVER
            :|range|
                ?COVER-POT-HAVE))
