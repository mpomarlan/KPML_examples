(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   REUTERS2
;    :GENERATEDFORM   "The difference has led to some schizophrenic behaviour."
;    :TARGETFORM   "The difference has led to some schizophrenic behaviour."
;    :LOGICALFORM   
;(LEAD / LEAD-RELATIONAL :LEX LEAD-TO :CIRCUMSTANTIAL-ASCRIPTION-Q
;      INCLUDED :TENSE PRESENT-PERFECT :DOMAIN
;      (DIFFER / DIFFER :LEX DIFFERENCE :DETERMINER THE)
;      :RANGE
;      (BEHAVE / BEHAVE :LEX BEHAVIOUR :DETERMINER SOME
;              :PROPERTY-ASCRIPTION
;              (SCHIZOID / SCHIZOPHRENIC :LEX SCHIZOPHRENIC-ADJ)))
;    :SET-NAME   |reuters|
;)

(EXAMPLE
    :NAME   REUTERS2
    :SET-NAME   REUTERS
    :GENERATEDFORM   "The difference has led to in spite of some schizophrenic behaviour ."
    :TARGETFORM   "The difference has led to some schizophrenic behaviour."
    :LOGICALFORM   
      (LEAD / |NonAffectingAction|
                :LEX LEAD-TO
 :concessive-relation-q notconcession
 :causal-relation-q causalrelation
                :TENSE PRESENT-PERFECT
                :|actor|
                  (D / |GUMThing|
                         :LEX DIFFERENCE
                         :DETERMINER THE)
                :|causeEffect|
                  (B / |GUMThing|
                         :LEX BEHAVIOUR
                         :DETERMINER SOME
                         :|PropertyAscription|
                           (S / |BehavioralQuality|
                                  :LEX SCHIZOPHRENIC-ADJ))
              )
)