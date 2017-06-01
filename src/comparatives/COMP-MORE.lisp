(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-MORE
;    :GENERATEDFORM   "The month was warmer than average."
;    :TARGETFORM   "The month was warmer than average."
;    :LOGICALFORM   
;(C / GREATER-THAN-COMPARISON :TENSE PAST :DOMAIN
;   (M / ONE-OR-TWO-D-TIME :LEX MONTH :DETERMINER THE)
;   :RANGE
;   (W / SENSE-AND-MEASURE-QUALITY :LEX WARM)
;   :STANDARD
;   (A / QUALITY :LEX AVERAGE :DETERMINER ZERO))
;    :SET-NAME   COMPARATIVES
;)

(EXAMPLE
    :NAME   COMP-MORE
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was warmer than average ."
    :TARGETFORM   "The month was warmer than average."
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
                      :LEX WARM))
)
