(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-SINGLE-PROP
;    :GENERATEDFORM   "The month was cooler than average."
;    :TARGETFORM   "The month was cooler than average."
;    :LOGICALFORM   
;(L / GREATER-THAN-COMPARISON :TENSE PAST :COMMAND-OFFER-Q
;   NOTCOMMANDOFFER :PROPOSAL-Q NOTPROPOSAL :DOMAIN
;   (M / ONE-OR-TWO-D-TIME :LEX MONTH :DETERMINER THE)
;   :STANDARD
;   (A / QUALITY :LEX AVERAGE :DETERMINER ZERO)
;   :RANGE
;   (C / SENSE-AND-MEASURE-QUALITY :LEX COOL))
;    :SET-NAME   COMPARATIVES
;)

(EXAMPLE
    :NAME   COMP-SINGLE-PROP
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was cooler than average ."
    :TARGETFORM   "The month was cooler than average."
    :LOGICALFORM   
      (L / |GreaterThanComparison|
             :LEX BE
             :TENSE PAST
             :EXCEED-Q EXCEED

             :|domain|
               (M / |OneOrTwoDTime|
                      :LEX MONTH
                      :DETERMINER THE)
             :|standard|
               (A / |GUMThing|
                      :LEX AVERAGE
                      :DETERMINER ZERO)
             :|range|
               (C / |SenseANDMeasureQuality|
                      :LEX COOL))
)
