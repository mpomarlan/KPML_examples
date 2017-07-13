(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-TRIPLE-PROP
;    :GENERATEDFORM   "The month was cooler and drier and more temperate than average."
;    :TARGETFORM   "The month was cooler and drier and more temperate than average."
;    :LOGICALFORM   
;(L / GREATER-THAN-COMPARISON :TENSE PAST :COMMAND-OFFER-Q
;   NOTCOMMANDOFFER :PROPOSAL-Q NOTPROPOSAL :DOMAIN
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
    :NAME   COMP-TRIPLE-PROP
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was cooler, drier and more temperate than average ."
    :TARGETFORM   "The month was cooler and drier and more temperate than average."
    :LOGICALFORM   
      (L / |GreaterThanComparison|
             :LEX BE
             :TENSE PAST
             :EXCEED-Q (L A) EXCEED

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
