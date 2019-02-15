(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?EX-SET-31-MONITOR
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "The reaction has been going to be monitored ."
    :TARGETFORM   "The reaction was going to have been monitored."
    :LOGICALFORM   
        (MONITOR / |DispositiveMaterialAction|
            :LEX MONITOR 
	    :speech-act-id
                (SA / SPEECH-ACT
                    :speaking-time-id
                        (ST / |Time|
                            :time-in-relation-to-speaking-time-id
                                (RT / |Time|
                                    :precede-q (RT ST) precedes)
                    :time-in-relation-id
                        (ST ET RT)
                        (R2T / |Time|
                            :PRECEDE-Q (RT R2T) NOTPRECEDES
                            :PRECEDE-Q (R2T ET) PRECEDES
                            :PRECEDE-Q (R2T RT) PRECEDES)
                    :PRECEDE-Q (ST RT) NOTPRECEDES))
            :event-time
                (ET / |Time|
                    :precede-q (ET ST) precedes)
            :|actee|
                (REACT / |NonAffectingDoing| 
                    :LEX REACTION
                    :DETERMINER THE)))

(EXAMPLE
    :NAME   ?EX-SET-31-IMPORTANT
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "A REACT-97327 was important."
    :TARGETFORM   "The reaction was so important."
    :LOGICALFORM
        (PROPERTY / |PropertyAscription|
            :LEX BE
            :circumstance-q circumstance 
            :location-q nonlocation
            :conditional-relation-q notcondition
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :purpose-relation-q notpurpose
            :tense past
            :|domain| REACT
            :|range|
                (IMPORT / (|EvaluativeQuality| |ScalableQuality|)
                    :LEX IMPORTANT
                    :scaling-q scaled
                    :process-q process
                    :maximum-q nonmaximum
                    :marked-property-q marked)))

(EXAMPLE
    :NAME   ?EX-SET-31
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "The reaction is being monitored ,because it was important."
    :TARGETFORM   "The reaction was going to have been monitored because it was so important."
    :LOGICALFORM   
        (RST / |uio#RSTNonVolitionalCause|
            :exist-speech-act-q speechact
            :statement-q statement
            :elaboration-q distinct
            :conditioning-q conditioning
            :manner-condition-q nonmannercondition
            :cause-condition-q causecondition
            :circumstance-q circumstance
            :|domain|
                ?EX-SET-31-MONITOR
            :|range|
                ?EX-SET-31-IMPORTANT))
