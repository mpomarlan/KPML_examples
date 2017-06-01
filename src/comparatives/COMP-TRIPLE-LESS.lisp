(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   COMP-TRIPLE-LESS
;    :GENERATEDFORM   "The month was less cool and less temperate and less dry than average."
;    :TARGETFORM   "The month was less cool and less temperate and less dry than average."
;    :LOGICALFORM   
;(L / LESS-THAN-COMPARISON :TENSE PAST :COMMAND-OFFER-Q NOTCOMMANDOFFER
;   :PROPOSAL-Q NOTPROPOSAL :DOMAIN
;   (M / ONE-OR-TWO-D-TIME :LEX MONTH :DETERMINER THE)
;   :STANDARD
;   (A / QUALITY :LEX AVERAGE :DETERMINER ZERO)
;   :RANGE
;   ((C / SENSE-AND-MEASURE-QUALITY :LEX COOL) 
;    (D / SENSE-AND-MEASURE-QUALITY :LEX TEMPERATE)
;    (D2 / SENSE-AND-MEASURE-QUALITY :LEX DRY)))
;    :SET-NAME   COMPARATIVES
;)

(EXAMPLE
    :NAME   COMP-TRIPLE-LESS
    :SET-NAME   COMPARATIVES
    :GENERATEDFORM   "The month was cool, dry and temperate ."
    :TARGETFORM   "The month was less cool and less dry and less temperate than average."
    :LOGICALFORM   
      (L / |LessThanComparison|
             :LEX BE
             :TENSE PAST
             :EXCEED-Q (L A) NONEXCEED
             :EXCEED-Q EXCEED (L A)

             :|domain|
               (M / |OneOrTwoDTime|
                      :LEX MONTH
                      :DETERMINER THE)
             :|standard|
               (A / |GUMThing|
                      :LEX AVERAGE
                      :DETERMINER ZERO)
             :|range|
               ;(
               ; (C / |SenseANDMeasureQuality|
               ;        :LEX COOL)
               ; (D / |SenseANDMeasureQuality|
               ;        :LEX DRY) 
                (T / |SenseANDMeasureQuality|
                       :LEX TEMPERATE)
               ; )
           )
)
