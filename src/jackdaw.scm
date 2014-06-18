;;;; ***********************************************************************
;;;; FILE IDENTIFICATION
;;;;
;;;; Name:          jackdaw.scm
;;;; Project:       jackdaw: a template for kawa projects
;;;; Purpose:       system loader
;;;; Author:        mikel evins
;;;; Copyright:     2014 by mikel evins
;;;;
;;;; ***********************************************************************

(require 'javafx-defs)
(javafx-application)

(javafx-scene
 title: "Hello Button"
 width: 300 height: 200
 (Button
  text: "Click Me"
  layout-x: 120
  layout-y: 80
  on-action: (lambda (e) (format #t "Event: ~s~%~!" e))))

