(in-package :kpml-ex)

(EXAMPLE
    :NAME    ?EX-SET-58-HE
    :GENERATEDFORM ""
    :TARGETFORM ""
    :LOGICALFORM
        (HE / |Person| :pronoun HE))

(EXAMPLE
    :NAME    ?EX-SET-58-TOLD
    :SET-NAME    nigel-exerciseset
    :GENERATEDFORM "He has been told by they."
    :TARGETFORM "He has been told by them."
    :LOGICALFORM
        (T / |NonAffectingDoing|
            :LEX TELL
            :tense present-perfect
            :pp-theme HE
            :|actor|
                (THEY / |Person| :pronoun THEY)
            :|actee|
                ?EX-SET-58-HE))

(EXAMPLE
    :NAME    ?EX-SET-58-SAW
    :SET-NAME    nigel-exerciseset
    :GENERATEDFORM "You saw he."
    :TARGETFORM "You saw him."
    :LOGICALFORM
        (S / |Perception|
            :LEX SEE
            :tense past
            :|senser|
                (HEARER / |Person|)
            :|phenomenon|
                ?EX-SET-58-HE))

(EXAMPLE
    :NAME   ?EX-SET-58
    :SET-NAME   nigel-exerciseset
    :GENERATEDFORM   "He has been told by they then you saw he."
    :TARGETFORM   "He has been told by them since you saw him."
    :LOGICALFORM   
        (RST / |uio#RSTSequence|
            :exist-speech-act-q speechact
            :statement-q statement
            ;:contrastive-extension-q contrastive	
            :elaboration-q distinct
            :conditioning-q conditioning
            :temporal-enhancement-q temporalsuccession
            :precede-q notprecedes ;|since|
            :projection-q notprojected
            :pp-theme HE
            :theme HE
            :taxis-prominence-q notless;(S T) LESS
            :|domain|
                ?EX-SET-58-TOLD
            :|range|
                ?EX-SET-58-SAW))
