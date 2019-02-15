(in-package :kpml-ex)

(EXAMPLE
     :NAME                   ?SPL37-TAKE
     :SET-NAME               geometry
     :GENERATEDFORM          "Take the lift to the second floor."
     :TARGETFORM	"Take the lift to the second floor."
     :LOGICALFORM
     (SL1 / |space#AffectingDirectedMotion|
          :LEX TAKE
          :speechact imperative
          :spatial-location-specification-q nospatiallocation
          :|actor|
              (HEARER / |person|)
          :same-as-q same
          :|actee|
              (G1 / |GUMThing|
                  :lex lift
                  :identifiability-q identifiable)
          :|space#destination|
              (L1 / |space#GeneralizedLocation|
                  :spatio-temporal-type-q spatial
                  :nearing-directional-q nearing
                  :|space#hasSpatialModality|
                      (C1 / |space#GeneralDirectional| )
                  :|space#relatum|
                      (R1 / |GUMThing|
                          :LEX second-floor
                          :identifiability-q identifiable))))


(EXAMPLE
     :NAME                   ?SPL37-GO
     :SET-NAME               geometry
     :GENERATEDFORM          "Go past the lift."
     :TARGETFORM	"Go past the lift."
     :LOGICALFORM
     (SL2 / |space#NonAffectingDirectedMotion|
          :LEX GO
          :speechact imperative
          :spatial-location-specification-q nospatiallocation
          :|actor|
              (HEARER / |person|)
          :|space#pathIndication|
              (L5 / |space#GeneralizedPathLocation| 
                  :spatio-temporal-type-q spatial
                  :path-past-q past
                  :|space#hasSpatialModality|
                      (C5 / |space#PathRepresentingExternal| )
                          :|space#relatum|
                              (R5 / |GUMThing|
                                  :LEX lift
                                  :identifiability-q identifiable))))

(EXAMPLE
     :NAME                   ?SPL37
     :SET-NAME               geometry
     :GENERATEDFORM          "Take the lift to the second floor,then go past the lift."
     :TARGETFORM	"take the lift to the second floor then go past the lift"
     :LOGICALFORM
         (RST / |uio#RSTSequence|
             :exist-speech-act-q speechact
             :statement-q statement
             :elaboration-q distinct
             :taxis-prominence-q notless
             :projection-q notprojected
             :conditioning-q conditioning
             :temporal-enhancement-q temporalsuccession
             :|domain|			
                 ?SPL37-TAKE
             :|range|
                 ?SPL37-GO))

