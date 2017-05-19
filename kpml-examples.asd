; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(in-package :cl-user)

(asdf:defsystem kpml-examples
  :name "kpml-examples"
  :author "Mihai Pomarlan <mpomarlan@yahoo.co.uk>"
  :maintainer "Mihai Pomarlan <mpomarlan@yahoo.co.uk>"
  :licence "BSD"
  :description "Newer versions of KPML examples."
  :depends-on ()
  :components
    ((:module "src"
      :components
        ((:file "package")
         (:file "utils" :depends-on ("package"))
         (:module "concessions" :depends-on ("package" "utils")
          :components
            ((:file "CONC-ALSO")
             (:file "CONC-CONJUNCTIVE")))
         ))))
