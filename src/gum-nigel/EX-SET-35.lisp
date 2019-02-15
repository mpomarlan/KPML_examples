(in-package :kpml-ex)

(EXAMPLE
    :NAME   ?EX-SET-35-SEND
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "The data had been going to be sent by computer ."
    :TARGETFORM   "The data had been going to be sent by computer from the zoos."
    :LOGICALFORM   
      (D / |DispositiveMaterialAction|
          :LEX SEND
          :THEME DATA
          :PP-THEME DATA 
          :|actor|
              (COMPUTER / |GUMThing|
                  :LEX COMPUTER
                  :IDENTIFIABILITY-Q NOTIDENTIFIABLE
                  :SINGULARITY-Q NONSINGULAR)
          :|actee|
              (DATA / |Abstraction|
                  :LEX DATUM
                  :NUMBER PLURAL
                  :DETERMINER THE)
          :SPEECH-ACT-ID
            (SA / |SpeechAct| 
                :SPEAKING-TIME-ID
                    (ST / |Time|
                        :TIME-IN-RELATION-TO-SPEAKING-TIME-ID
                            (RT1 / |Time|
                                :PRECEDE-Q (RT1 ST) PRECEDES
                                :PRECEDE-Q (RT1 RT2) NOTPRECEDES)
                :TIME-IN-RELATION-ID (ST ET RT1)
                    (RT2 / |Time|
                        :PRECEDE-Q (RT2 RT1) PRECEDES
                        :PRECEDE-Q (RT2 ET) PRECEDES)
                :TIME-IN-RELATION-ID (ST ET RT2) ET
                :PRECEDE-Q (ST RT1) NOTPRECEDES))
          :EVENT-TIME
              (ET / |Time|
                  :PRECEDE-Q (ET RT2) NOTPRECEDES) 
          :|source|
             (ZOO / |GUMThing|
                 :LEX ZOO
                 :NUMBER PLURAL
                 :DETERMINER THE)))

(EXAMPLE
    :NAME   ?EX-SET-35-OCCUPY
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "They occupied one database ."
    :TARGETFORM   "They occupied one database."
    :LOGICALFORM   
        (OCCUPY / |DispositiveMaterialAction|
            :LEX OCCUPY
            :tense past
            :circumstance-q circumstance
            :location-q nonlocation
            :conditional-relation-q notcondition 
            :concessive-relation-q notconcession
            :causal-relation-q causalrelation
            :purpose-relation-q purpose
            :circumstance-q circumstance
            :|actor|
                (DATA /  |Abstraction| :PRONOUN THEY)
            :|actee|
                (DB1 / |Abstraction| :LEX DATABASE :DETERMINER ONE)))

(EXAMPLE
    :NAME   ?EX-SET-35
    :SET-NAME   |nigel-exerciseset|
    :GENERATEDFORM   "Previously, the data are being sent by computer, so that they occupied one database."
    :TARGETFORM   "Previously, the data had been going to be sent by computer from the zoos so that they occupied one database."
    :LOGICALFORM   
        (SEND / |uio#RSTPurpose|
	:exist-speech-act-q speechact :statement-q statement
			:elaboration-q distinct :conditioning-q conditioning
		:manner-condition-q nonmannercondition
		:cause-condition-q causecondition 
	:CONJUNCTIVE-RELATION-Q CONJUNCTIVE
      :CONJUNCTIVE-RELATION-ID
      (RR / RHETORICAL-RELATION)
      :PROCESS-REGULATED-Q PROCESSREGULATED :NECESSITY-Q NONECESSITY
      :SEQUENCE-Q NOTSEQUENCE :PRESENTATION-Q NOTPRESENTATIONAL
      :TIME-RELATION-Q TIMERELATION :TIME-PRECEDENCE-Q PRECEDENCE
      :TIME-PRECEDE-Q NOTSUBSEQUENT :TIME-SEPARATION-Q SEPARATE
      :SMALL-SEPARATION-Q SMALL 
            :THEME DATA
            :PP-THEME DATA
            :|domain|
                ?EX-SET-35-SEND
            :|range|
                ?EX-SET-35-OCCUPY)
)
