(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-TRIPLE-AS
;    :GENERATEDFORM   "The month was as cool and as dry and as temperate as average."
;    :TARGETFORM   "The month was as cool and as dry and as temperate as average."
;    :LOGICALFORM   
;(L / GREATER-THAN-COMPARISON :TENSE PAST :COMMAND-OFFER-Q
;   NOTCOMMANDOFFER :EXCEED-Q
;   (L A)
;   NONEXCEED :PROPOSAL-Q NOTPROPOSAL :DOMAIN
;   (M / ONE-OR-TWO-D-TIME :LEX MONTH :DETERMINER THE)
;   :STANDARD
;   (A / QUALITY :LEX AVERAGE :DETERMINER ZERO)
;   :RANGE
;   ((C / SENSE-AND-MEASURE-QUALITY :LEX COOL) 
;    (D2 / SENSE-AND-MEASURE-QUALITY :LEX DRY)
;    (D / SENSE-AND-MEASURE-QUALITY :LEX TEMPERATE)))
;    :SET-NAME   COMPARATIVES
;)

(EXAMPLE
    :NAME   COMP-TRIPLE-AS
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was as cool, as dry and as temperate as average ."
    :TARGETFORM   "The month was as cool and as dry and as temperate as average."
    :LOGICALFORM   
      (L / |GreaterThanComparison|
             :LEX BE
             :TENSE PAST
             :EXCEED-Q (L A) NONEXCEED

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
                       :LEX DRY)
                (T / |SenseANDMeasureQuality|
                       :LEX TEMPERATE)
                )
           )
)
