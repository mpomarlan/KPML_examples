;;;
;;; Copyright (c) 2016, Mihai Pomarlan <blandc@cs.uni-bremen.com>
;;; All rights reserved.
;;; 
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;; 
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;     * Redistributions in binary form must reproduce the above copyright
;;;       notice, this list of conditions and the following disclaimer in the
;;;       documentation and/or other materials provided with the distribution.
;;;     * Neither the name of Willow Garage, Inc. nor the names of its
;;;       contributors may be used to endorse or promote products derived from
;;;       this software without specific prior written permission.
;;; 
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.
;;;

(in-package :cl-user)

(defpackage :kpml-examples
  (:use :cl)
  (:nicknames :kpml-ex)
  (:export #:example
           #:kpml-example
           #:run-example
           #:init-connection
           #:name
           #:set-name
           #:generatedform
           #:logicalform
           #:targetform
           #:reuters2
           #:reuters19
           #:conc-also
           #:conc-conjunctive
           #:conc-coord1
           #:conc-coord2
           #:conc-final
           #:conc-pp1
           #:conc-pp2
           #:conc-pp3
           #:conc-sub-ext
           #:conc-sub-rst1
           #:conc-test1
           #:conc-test2
           #:conc-thematic
           #:conc-then
           #:comp-double-prop1
           #:comp-double-prop2
           #:comp-farmore
           #:comp-more
           #:comp-muchmore
           #:comp-verymuchmore
           #:comp-single-prop
           #:comp-triple-as
           #:comp-triple-less
           #:comp-triple-prop
           #:behrens1
           #:behrens1a
           #:behrens2
           #:behrens3
           #:behrens4
           #:behrens5
           #:behrens6))
