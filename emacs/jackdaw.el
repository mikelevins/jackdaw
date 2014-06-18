;;;; ***********************************************************************
;;;; FILE IDENTIFICATION
;;;;
;;;; Name:          jackdaw.el
;;;; Project:       jackdaw: a kawa template project
;;;; Purpose:       emacs tools setup
;;;; Author:        mikel evins
;;;; Copyright:     2014 by mikel evins
;;;;
;;;; ***********************************************************************

;;; ---------------------------------------------------------------------
;;; ABOUT
;;; ---------------------------------------------------------------------

;;; ---------------------------------------------------------------------
;;; setup site-specific variables
;;; ---------------------------------------------------------------------

;;; find this file
(defvar $this-file-path nil)
(setq $this-file-path (or (symbol-file '$this-file-path)
			  load-file-name))

;;; init the emacs path
(defvar $jackdaw-emacs-path (file-name-directory $this-file-path))

;;; deduce other project paths
(defvar $jackdaw-root (expand-file-name (concat $jackdaw-emacs-path "../")))
(defvar $jackdaw-bin (expand-file-name (concat $jackdaw-root "bin/")))
(defvar $jackdaw-kawa-script (expand-file-name (concat $jackdaw-bin "kawa")))

;;; adjust emacs
(add-to-list 'load-path (expand-file-name $jackdaw-emacs-path))

;;; ---------------------------------------------------------------------
;;; Customizing Quack 
;;; ---------------------------------------------------------------------
;;; uncomment them, and change the values to what you want

;;; Option menu settings and programs persist using the `custom' facility.
;;; (set 'quack-options-persist-p t)

;;; Whether to have a \"Quack\" menu always on the menu bar.
;;; (set 'quack-global-menu-p t)

;;; Whether Quack should avoid use of Tab characters in indentation.
;;; (set 'quack-tabs-are-evil-p t)

;;; Whether to have a \"Quack\" menu always on the menu bar
;;; (set 'quack-global-menu-p t)

;;; Which font-lock fontification style to use. Options are plt,
;;; emacs, and nil
;;; (set 'quack-fontify-style 'plt)

;;; If non-nil, fontify names in definition forms for PLT-style
;;; fontification.  This only has effect when quack-fontify-style is plt
;;;(set 'quack-pltish-fontify-definition-names-p t)

;;; Whether three-semicolon comments should be fontified differently.
;;; (set 'quack-fontify-threesemi-p t)

;;; ---------------------------------------------------------------------
;;; run jackdaw's Scheme 
;;; ---------------------------------------------------------------------

;;; run the jackdaw kawa environment in quack mode
(defun kawa ()
  (interactive)
  (require 'quack)
  (let ((scheme-program-name $jackdaw-kawa-script))
    (setenv "JACKDAW_ROOT" $jackdaw-root)
    (run-scheme scheme-program-name)))





