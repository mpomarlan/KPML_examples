(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-DOUBLE-PROP1
;    :GENERATEDFORM   "The month was cooler and drier than average."
;    :TARGETFORM   "The month was cooler and drier than average."
;    :LOGICALFORM   
;(L / GREATER-THAN-COMPARISON :TENSE PAST :COMMAND-OFFER-Q
;   NOTCOMMANDOFFER :PROPOSAL-Q NOTPROPOSAL :DOMAIN
;   (M / ONE-OR-TWO-D-TIME :LEX MONTH :DETERMINER THE)
;   :STANDARD
;   (A / QUALITY :LEX AVERAGE :DETERMINER ZERO)
;   :RANGE
;   ((C / SENSE-AND-MEASURE-QUALITY :LEX COOL) 
;    (D / SENSE-AND-MEASURE-QUALITY :LEX DRY)))
;    :SET-NAME   COMPARATIVES
;)

(EXAMPLE
    :NAME   COMP-DOUBLE-PROP1
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was cooler and drier than average ."
    :TARGETFORM   "The month was cooler and drier than average."
    :LOGICALFORM   
      (L / |GreaterThanComparison|
             :LEX BE
             :TENSE PAST
             :EXCEED-Q EXCEED
             ;:COMMAND-OFFER-Q NOTCOMMANDOFFER
             ;:PROPOSAL-Q NOTPROPOSAL

             ;:attribuend-id (C D)
             ;:standard-mention-q mention
             ;:attribute-id (C D)
             ;:standard-id (C D)
             ;:standard-value-id (C D)

             :|domain|
               (M / |OneOrTwoDTime|
                      :LEX MONTH
                      :DETERMINER THE)
             :|standard|
               (A / |GUMThing|
                      :LEX AVERAGE
                      :DETERMINER ZERO)
             :|range|
               (
                (C / |SenseANDMeasureQuality|
                       :LEX COOL) 
                (D / |SenseANDMeasureQuality|
                       :LEX DRY))
             )
)

;(EXAMPLE
;    :NAME   COMP-DOUBLE-PROP1
;    :SET-NAME   COMPARATIVES
;    :GENERATEDFORM   "The month was cooler than average, and it was drier than the average ."
;    :TARGETFORM   "The month was cooler and drier than average."
;    :LOGICALFORM
;      ((L K)   
;      (L / |GreaterThanComparison|
;             :LEX BE
;             :TENSE PAST
;             :EXCEED-Q EXCEED
;
;             :|domain|
;               (M / |OneOrTwoDTime|
;                      :LEX MONTH
;                      :DETERMINER THE)
;             :|standard|
;               (A / |GUMThing|
;                      :LEX AVERAGE
;                      :DETERMINER ZERO)
;             :|range|
;               (C / |SenseANDMeasureQuality|
;                      :LEX COOL) 
;             )
;      (K / |GreaterThanComparison|
;             :LEX BE
;             :TENSE PAST
;             :EXCEED-Q EXCEED
;
;             :|domain| M
;             :|standard| A
;             :|range|
;               (D / |SenseANDMeasureQuality|
;                      :LEX DRY)
;             )
;       )
;)

