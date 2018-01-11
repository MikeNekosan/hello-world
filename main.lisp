;;; main.lisp
;;; -*- mode:lisp -*-
(in-package :cl-user)
(defpackage :hello-world
  (:use cl)
	(:export :hello-world)
	(:export :get-world)
	(:export :get-world2)
	(:export :set-world2)
	)
(in-package :hello-world)

(defvar *iv* :description "Instance Variable")

(defclass hello-world ()
	((body :accessor body
				 :initform "Hello, World!!!"
				 :initarg :body)
	 )
	)

(defmethod get-world (h)
	(if h
			(format t "~a~%" h)
			(format t "Hello, World!~%")
			))

(defmethod set-world2 ((*iv* hello-world) param)
	(setf (slot-value *iv* 'body) param)
	)

(defmethod get-world2 ((*iv* hello-world))
	(format t "~a~%" (slot-value *iv* 'body))
	)
;;; vim: set ft=lisp lisp:
