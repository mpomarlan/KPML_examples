(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-THEMATIC
;    :GENERATEDFORM   "Still, we will go to the lake."
;    :TARGETFORM   "STILL, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :CONJUNCTIVE STILL
;    :TEXTUAL-THEME-Q CONTEXT :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-THEMATIC
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Still,we will go to the lake ."
    :TARGETFORM   "Still, we will go to the lake."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
              :CONJUNCTIVE STILL
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (L1 / |space#GeneralizedRoute|
                                 :SPATIO-TEMPORAL-TYPE-Q SPATIAL
                                 :SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
                               :|space#relatum|
                                 (LA / |gum#Object|
                                         :LEX LAKE
                                         :DETERMINER THE)))  
)
