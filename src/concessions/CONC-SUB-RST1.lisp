(in-package :kpml-ex)

;(EXAMPLE
;    :NAME   CONC-SUB-RST1
;    :GENERATEDFORM   "Even if the weather is bad, we will go to the lake."
;    :TARGETFORM   "EVEN IF the weather is bad, we will go to the lake."
;    :LOGICALFORM   
;(RST / RST-CONCESSIVE :CONDITION-Q CONDITION :THEME PA :DOMAIN
;     (GO / NONDIRECTED-ACTION :LEX GO-VERB :ACTOR
;         (SPEAKER / PERSON :NUMBER PLURAL)
;         :DESTINATION
;         (LA / OBJECT :LEX LAKE :DETERMINER THE)
;         :TENSE FUTURE)
;     :RANGE
;     (PA / PROPERTY-ASCRIPTION :TENSE PRESENT :DOMAIN
;         (WE / OBJECT :LEX WEATHER :DETERMINER THE)
;         :RANGE
;         (B / QUALITY :LEX BAD)))
;    :SET-NAME   CONCESSIONS
;)

(EXAMPLE
    :NAME   CONC-SUB-RST1
    :SET-NAME   CONCESSIONS
    :GENERATEDFORM   "Also,we will go to the lake ."
    :TARGETFORM   "EVEN IF the weather is bad, we will go to the lake."
    :LOGICALFORM
      (CON / |Concessive|
               :exist-speech-act-q speechact
               :statement-q statement
               :contrastive-extension-q noncontrastive 
               :CONDITION-Q CONDITION
               :CONCESSIVE-CONDITION-Q CONCESSIVE
               :THEME PA
             :|domain|
      (GO / |space#NonAffectingDirectedMotion|
              :LEX GO-VERB
              :TENSE FUTURE
:SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
          :SOURCE-PROCESS-Q NONSOURCE
          :SOURCE-DESTINATION-Q SOURCEDESTINATION
              :|gum#actor|
                (sp / |gum#Person|
                        :LEX WE
                        :NUMBER PLURAL)
              :|space#direction|
                (L1 / |space#GeneralizedRoute|
                        :SPATIO-TEMPORAL-TYPE-Q SPATIAL
                        :SOURCE-PROCESS-Q NONSOURCE
                        :PROXIMAL-Q PROXIMAL
                        :SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
                        :SOURCE-DESTINATION-Q SOURCEDESTINATION
                        :SOURCE-PROCESS-Q NONSOURCE
                      :|space#hasSpatialModality|
                        (SMSEQ / |space#Sequential| )
                      :|space#relatum|
                        (L1 / |space#GeneralizedRoute|
                                 :SPATIO-TEMPORAL-TYPE-Q SPATIAL
                                 :SOURCE-DESTINATION-PROCESS-Q SOURCEDESTINATION
                               :|space#relatum|
                                 (LA / |gum#Object|
                                         :LEX LAKE
                                         :DETERMINER THE))))

             :|range|
(PA / |gum#PropertyAscription| 
              :LEX BE 
              :TENSE PRESENT 
              :|gum#domain| 
                (WE / |gum#Object| 
                        :LEX WEATHER 
                        :DETERMINER THE)
              :|gum#range|
                (B / |gum#ModalQuality| :LEX BAD))

      )  
)
