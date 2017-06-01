(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   REUTERS19
;    :GENERATEDFORM   "It expects to lose money during this year again."
;    :TARGETFORM   "It expects to lose money again this year."
;    :LOGICALFORM   
;(EXPECT / COGNITION :LEX EXPECT :SENSER
;        (COMPANY / COMPANY :PRONOUN IT)
;        :PHENOMENON
;        (LOSE / DISPOSITIVE-MATERIAL-ACTION :LEX LOSE :COMMAND-OFFER-Q
;              COMMANDOFFER :ACTOR COMPANY :ACTEE
;              (MONEY / SUBSTANCE :LEX MONEY)
;              :EXHAUSTIVE-DURATION
;              (YEAR / TEMPORAL :LEX YEAR :DETERMINER THIS)
;              :TEMPORAL-LOCATING
;              (Q / RELATIVE-SPATIAL-TEMPORAL :IDENTIFIABILITY-Q
;                 IDENTIFIABLE :LEX AGAIN)))
;    :SET-NAME   |reuters|
;)

(EXAMPLE
    :NAME   REUTERS19
    :SET-NAME   REUTERS
    :GENERATEDFORM   "It expects to lose for this year ."
    :TARGETFORM   "It expects to lose money again this year."
    :LOGICALFORM   
      (EXPC / |Cognition|
                :LEX EXPECT
                :TENSE PRESENT
                :|senser|
                  (C / |Person|
                         :PRONOUN IT
                       )
                :|phenomenon|
;           (AB / |Abstraction|
;                   ;:LEX DOCTOR
;                   :|Process|

;(CREATE / |CreativeMaterialAction|
;					:elaboration-q same
;					:circumstance-q notcircumstance
;					:property-q property
;				   :LEX CREATE :|actor|
;                          HIM :|actee|
;                          (SYSTEM / |GUMThing| :LEX SYSTEM :NUMBER PLURAL
;                                   :|Quantity| 13
;                                   :|SizePropertyAscription|
;                                   (LARGE / |Size| :LEX LARGE)))
;

                  (B / |Process|
                         :LEX LOSE
                         :COMMAND-OFFER-Q COMMANDOFFER
                         :|result|
                           (M / |Substance|
                                  :LEX MONEY)
                         :|exhaustiveDuration|
                           (Y / |TemporalObject|
                                  :LEX YEAR
                                  :DETERMINER THIS)
                         :|temporalLocating|
                           (Q / |DeicticSpatialTemporal|
                                  ;:IDENTIFIABILITY-Q INDENTIFIABLE
                                  :LEX AGAIN)
                         )
;          )
              )
)



(EXAMPLE
    :NAME   REUTERS19a
    :SET-NAME   REUTERS
    :GENERATEDFORM   "It expects to lose for this year ."
    :TARGETFORM   "It expects to lose money again this year."
    :LOGICALFORM   
                  (B / |AffectingAction|
                         :LEX LOSE
                         :|actor|
                           (P / |Person| :LEX DOCTOR)
                         :|result|
                           (M / |Substance|
                                  :LEX MONEY)
                         :|nonExhaustiveDuration|
                           (Y / |TemporalObject|
                                  :LEX YEAR
                                  :DETERMINER THIS
:|temporalLocating|
                           (Q / |DeicticSpatialTemporal|
                                  ;:IDENTIFIABILITY-Q INDENTIFIABLE
                                  :LEX AGAIN)
                                )
                         )
)
