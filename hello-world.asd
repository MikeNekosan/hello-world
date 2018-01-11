;;; hello-world.asd
(in-package :cl-user)
(defpackage :hello-world-asd
  (:use :cl :asdf))
(in-package :hello-world-asd)

(defsystem :hello-world
  :class :package-inferred-system
  :description "Hello World implemented with Common Lisp"
  :version "0.1"
  :author "shigeru333"
  :license "BSD 3-Clause License"
  :depends-on ("hello-world/main"))
;; EoF
