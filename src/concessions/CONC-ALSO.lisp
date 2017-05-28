(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-ALSO
;    :GENERATEDFORM   "Also, we will go to the lake."
;    :TARGETFORM   "Also, we will go to the lake."
;    :LOGICALFORM   
;(GO / NONDIRECTED-ACTION :LEX GO-VERB :CONJUNCTIVE ALSO :ACTOR
;    (SPEAKER / PERSON :NUMBER PLURAL)
;    :DESTINATION
;    (LA / OBJECT :LEX LAKE :DETERMINER THE)
;    :TENSE FUTURE)
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-ALSO
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Also,we will go to the lake ."
    :TARGETFORM   "Also, we will go to the lake."
    :LOGICALFORM
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
              :CONJUNCTIVE ALSO
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (L1 / |space#GeneralizedRoute|
                        :SPATIO-TEMPORAL-TYPE-Q SPATIAL
                        :SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
                        ;:SOURCE-PROCESS-Q NONSOURCE
                        ;:PROXIMAL-Q PROXIMAL
                        ;:SOURCE-DESTINATION-Q SOURCEDESTINATION
                        ;:SOURCE-PROCESS-Q NONSOURCE
                      ;:|space#hasSpatialModality|
                      ;  (SMSEQ / |space#Sequential| )
                      :|space#relatum|
                        (LA / |gum#Object|
                              :LEX LAKE
                              :DETERMINER THE)))  
)
