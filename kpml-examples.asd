; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(in-package :cl-user)

(asdf:defsystem kpml-examples
  :name "kpml-examples"
  :author "Mihai Pomarlan <mpomarlan@yahoo.co.uk>"
  :maintainer "Mihai Pomarlan <mpomarlan@yahoo.co.uk>"
  :licence "BSD"
  :description "Newer versions of KPML examples."
  :depends-on (usocket)
  :components
    ((:module "src"
      :components
        ((:file "package")
         (:file "utils" :depends-on ("package"))
         (:module "robot-thinkaloud" :depends-on ("package" "utils")
          :components
             ((:file "SET-TABLE-DOING-PICK-UP")
              (:file "SET-TABLE-CAN-SET")
              (:file "SET-TABLE-DOING-SET")
              (:file "SET-TABLE-CAN-EAT")
              (:file "SET-TABLE-WILL-EAT")
              (:file "SET-TABLE-CbT" :depends-on ("SET-TABLE-DOING-PICK-UP" "SET-TABLE-DOING-SET"))
              (:file "SET-TABLE-TtC" :depends-on ("SET-TABLE-DOING-PICK-UP" "SET-TABLE-DOING-SET"))
              (:file "SET-TABLE-CstT" :depends-on ("SET-TABLE-DOING-PICK-UP" "SET-TABLE-CAN-SET"))
              (:file "SET-TABLE-TstE" :depends-on ("SET-TABLE-DOING-SET" "SET-TABLE-CAN-EAT"))
              (:file "SET-TABLE-CbTstE" :depends-on ("SET-TABLE-DOING-PICK-UP" "SET-TABLE-TstE"))
              (:file "COVER-POT-HAVE")
              (:file "COVER-POT-DOING-COVER")
              (:file "COVER-POT-CbR" :depends-on ("COVER-POT-DOING-COVER" "COVER-POT-HAVE"))
              ;;(:file "SET-TABLE-4")
              ))
         (:module "reuters" :depends-on ("package" "utils")
          :components
             ((:file "REUTERS2")
              (:file "REUTERS19")
              ))
         (:module "gum-nigel" :depends-on ("package" "utils")
          :components
            ((:file "EX-SET-31")
             (:file "EX-SET-35")
             (:file "EX-SET-55")
             (:file "EX-SET-58")
             (:file "EX-SET-59")
             ))
         (:module "geometry" :depends-on ("package" "utils")
          :components
            ((:file "SPL37")
             ))
         (:module "concessions" :depends-on ("package" "utils")
          :components
            ((:file "CONC-ALSO")
             (:file "CONC-CONJUNCTIVE")
             (:file "CONC-COORD1")
             (:file "CONC-COORD2")
             (:file "CONC-FINAL")
             (:file "CONC-PP1")
             (:file "CONC-PP2")
             (:file "CONC-PP3")
             (:file "CONC-SUB-EXT")
             (:file "CONC-SUB-RST1")
             (:file "CONC-TEST1")
             (:file "CONC-TEST2")
             (:file "CONC-THEMATIC")
             (:file "CONC-THEN")))
         (:module "comparatives" :depends-on ("package" "utils")
          :components
             ((:file "COMP-DOUBLE-PROP1")
              (:file "COMP-DOUBLE-PROP2")
              (:file "COMP-FARMORE")
              (:file "COMP-MORE")
              (:file "COMP-MUCHMORE")
              (:file "COMP-VERYMUCHMORE")
              (:file "COMP-SINGLE-PROP")
              (:file "COMP-TRIPLE-AS")
              (:file "COMP-TRIPLE-LESS")
              (:file "COMP-TRIPLE-PROP")
              ))
         (:module "komet" :depends-on ("package" "utils")
          :components
             ((:file "BEHRENS1")
              (:file "BEHRENS1A")
              (:file "BEHRENS2")
              (:file "BEHRENS3")
              (:file "BEHRENS4")
              (:file "BEHRENS5")
              (:file "BEHRENS6")))
         ))))
