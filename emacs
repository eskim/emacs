;;----------------------------------------------------------------------
;; References
;;----------------------------------------------------------------------
;; http://bc.tech.coop/emacs.html

;;----------------------------------------------------------------------
;; Environment
;;----------------------------------------------------------------------
;; See if we're on MS Windows or Mac OS X
(defvar linux-p (string-match "linux" (symbol-name system-type)))
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))

;; 터미널 커넥션
; (defvar terminal-connection (not (window-system)))


(setq load-path (cons "~/.site-lisp" load-path))
(setq load-path (cons "~/.site-lisp/color-theme" load-path))
(setq load-path (cons "~/.site-lisp/slime-2.0" load-path))
(setq load-path (cons "~/.site-lisp/ruby" load-path))
(setq load-path (cons "~/.site-lisp/org" load-path))
(setq load-path (cons "~/.site-lisp/eieio-0.17" load-path))
(setq load-path (cons "~/.site-lisp/semantic-1.4.4" load-path))
(setq load-path (cons "~/.site-lisp/speedbar-0.14beta4" load-path))
(setq load-path (cons "~/.site-lisp/yasnippet-0.5.7" load-path))
(setq load-path (cons "~/.site-lisp/ecb-2.32" load-path))
(add-to-list 'load-path "~/.site-lisp/rinari")




(if mswindows-p (add-to-list 'load-path "C:/Program Files/Emacs/EmacsW32/lisp"))

(require 'wrap-region)
(require 'recentf)
(require 'anything)
(require 'speedbar)
(require 'ecb-autoloads)
(require 'yasnippet)

(yas/initialize)
(yas/load-directory "~/.site-lisp/yasnippet-0.5.7/snippets")
;; (add-to-list 'yas/extra-mode-hooks
;; 	     'js2-mode-hook)
;; (setq yas/window-system-popup-function #'yas/x-popup-menu-for-template)
;; (make-variable-buffer-local 'yas/trigger-key)
;; (add-hook 'ruby-mode-hook ; or rails-minor-mode-hook ?
;;           '(lambda ()
;;              (setq yas/trigger-key
;;                    (kbd "<tab>")))) 
(setq custom-file "~/.site-lisp/eskim/custom.el")
(load custom-file)

(load "eskim/global.el")
(load "eskim/defun.el")
(load "eskim/theme.el")
(load "eskim/mail.el")
(load "eskim/dired.el")
(load "eskim/shell.el")
(load "eskim/ido.el")
(load "eskim/goodies.el")
(load "eskim/proglang.el")
(load "eskim/binding.el")
(load "eskim/ruby.el")
(load "eskim/xml.el")














