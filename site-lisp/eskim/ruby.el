;; ;;----------------------------------------------------------------------
;; ;; emacs-rails / ruby
;; ;;----------------------------------------------------------------------
;; ;; (require 'rails)
;; (require 'rcodetools)
(vendor 'rinari)

(setq rinari-tags-file-name "TAGS")

; rhtml
(setq auto-mode-alist (cons '("\\.html\\.erb" . nxhtml-mode) auto-mode-alist))


;; seems not work
;; (add-hook 'ruby-mode-hook
;;   (lambda()
;;     (local-set-key (kbd "C-c <right>") 'hs-show-block)
;;     (local-set-key (kbd "C-c <left>")  'hs-hide-block)
;;     (local-set-key (kbd "C-c <up>")    'hs-hide-all)
;;     (local-set-key (kbd "C-c <down>")  'hs-show-all)
;;     (hs-minor-mode t)))

;; ;;----------------------------------------------------------------------
;; ;; ruby mode
;; ;;----------------------------------------------------------------------
;; ;; (require 'rubydb)
;; (autoload 'ruby-mode "ruby-mode"
;;   "Mode for editing ruby source files" t)
;; (setq auto-mode-alist
;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;; (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
;;    				     interpreter-mode-alist))
   
;; (autoload 'run-ruby "inf-ruby"
;;   "Run an inferior Ruby process")
;; (setq ruby-program-name "irb -f --inf-ruby-mode")

;; (autoload 'inf-ruby-keys "inf-ruby"
;;   "Set local key defs for inf-ruby in ruby-mode")
;; (autoload 'ruby-electric-mode "ruby-electric")
;; (autoload 'rubydb "rubydb" "Ruby Debugger" t)
;; (add-hook 'ruby-mode-hook
;; 	  '(lambda ()
;; 	     (ruby-electric-mode)
;; 	     (inf-ruby-keys)
;; 	     ))


;; ;; (add-hook 'ruby-mode-hook
;; ;;           (lambda()
;; ;;             (local-set-key (kbd "RET") 'ruby-newline-and-indent)))
;; ;; (define-key rails-minor-mode-map "\C-c\C-p" 'rails-lib:run-primary-switch)
;; ;; (define-key rails-minor-mode-map "\C-c\C-n" 'rails-lib:run-secondary-switch)
;; ;; (defvar rails-use-another-define-key t)

;; ;; (autoload 'ruby-mode "ruby-mode"
;; ;;   "Mode for editing ruby source files" t)
;; ;; (setq auto-mode-alist
;; ;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;; ;; (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
;; ;;                                 interpreter-mode-alist))
;; ;; (autoload 'run-ruby "inf-ruby"
;; ;;   "Run an inferior Ruby process")
;; ;; (autoload 'inf-ruby-keys "inf-ruby"
;; ;;   "Set local key defs for inf-ruby in ruby-mode")
;; ;; (add-hook 'ruby-mode-hook
;; ;;       '(lambda ()
;; ;;          (inf-ruby-keys)
;; ;; ))
