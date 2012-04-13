(vendor 'rinari)
(setq rinari-tags-file-name "TAGS")

;; borrowed from 
;; https://github.com/technomancy/emacs-starter-kit/blob/v2/modules/starter-kit-ruby.el
;; 12/5/2011

(progn
  (eval-after-load 'ruby-mode
    '(progn
       ;; work around possible elpa bug
       (ignore-errors (require 'ruby-compilation))
       (setq ruby-use-encoding-map nil)
       (add-hook 'ruby-mode-hook 'inf-ruby-keys)
       (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
       (define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)))

  (global-set-key (kbd "C-h S-r") 'ri)

  ;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
  (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

  ;; We never want to edit Rubinius bytecode or MacRuby binaries
  (add-to-list 'completion-ignored-extensions ".rbc")
  (add-to-list 'completion-ignored-extensions ".rbo")

;;; Rake

  (defun pcomplete/rake ()
    "Completion rules for the `ssh' command."
    (pcomplete-here (pcmpl-rake-tasks)))

  (defun pcmpl-rake-tasks ()
    "Return a list of all the rake tasks defined in the current
projects.  I know this is a hack to put all the logic in the
exec-to-string command, but it works and seems fast"
    (delq nil (mapcar '(lambda(line)
                         (if (string-match "rake \\([^ ]+\\)" line) (match-string 1 line)))
                      (split-string (shell-command-to-string "rake -T") "[\n]"))))

  (defun rake (task)
    (interactive (list (completing-read "Rake (default: default): "
                                        (pcmpl-rake-tasks))))
    (shell-command-to-string (concat "rake " (if (= 0 (length task)) "default" task))))


  ;; Clear the compilation buffer between test runs.
  (eval-after-load 'ruby-compilation
    '(progn
       (defadvice ruby-do-run-w/compilation (before kill-buffer (name cmdlist))
         (let ((comp-buffer-name (format "*%s*" name)))
           (when (get-buffer comp-buffer-name)
             (with-current-buffer comp-buffer-name
               (delete-region (point-min) (point-max))))))
       (ad-activate 'ruby-do-run-w/compilation)))

  ;; Rinari (Minor Mode for Ruby On Rails)
  (setq rinari-major-modes
        (list 'mumamo-after-change-major-mode-hook 'dired-mode-hook 'ruby-mode-hook
              'css-mode-hook 'yaml-mode-hook 'javascript-mode-hook)))



;;
;; old 12/5/2011
;;
;; ;; ;;----------------------------------------------------------------------
;; ;; ;; emacs-rails / ruby
;; ;; ;;----------------------------------------------------------------------
;; ;; ;; (require 'rails)
;; ;; (require 'rcodetools)
;; (vendor 'rinari)
;; (setq rinari-tags-file-name "TAGS")

;; ; rhtml
;; (setq auto-mode-alist (cons '("\\.html\\.erb" . nxhtml-mode) auto-mode-alist))


;; ;; ----------------------------------------------------------------------
;; ;; Ruby
;; ;; ----------------------------------------------------------------------
;; (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))


;; ;; seems not work
;; ;; (add-hook 'ruby-mode-hook
;; ;;   (lambda()
;; ;;     (local-set-key (kbd "C-c <right>") 'hs-show-block)
;; ;;     (local-set-key (kbd "C-c <left>")  'hs-hide-block)
;; ;;     (local-set-key (kbd "C-c <up>")    'hs-hide-all)
;; ;;     (local-set-key (kbd "C-c <down>")  'hs-show-all)
;; ;;     (hs-minor-mode t)))

;; ;; ;;----------------------------------------------------------------------
;; ;; ;; ruby mode
;; ;; ;;----------------------------------------------------------------------
;; ;; ;; (require 'rubydb)
;; ;; (autoload 'ruby-mode "ruby-mode"
;; ;;   "Mode for editing ruby source files" t)
;; ;; (setq auto-mode-alist
;; ;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;; ;; (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
;; ;;    				     interpreter-mode-alist))
   
;; ;; (autoload 'run-ruby "inf-ruby"
;; ;;   "Run an inferior Ruby process")
;; ;; (setq ruby-program-name "irb -f --inf-ruby-mode")

;; ;; (autoload 'inf-ruby-keys "inf-ruby"
;; ;;   "Set local key defs for inf-ruby in ruby-mode")
;; ;; (autoload 'ruby-electric-mode "ruby-electric")
;; ;; (autoload 'rubydb "rubydb" "Ruby Debugger" t)
;; ;; (add-hook 'ruby-mode-hook
;; ;; 	  '(lambda ()
;; ;; 	     (ruby-electric-mode)
;; ;; 	     (inf-ruby-keys)
;; ;; 	     ))


;; ;; ;; (add-hook 'ruby-mode-hook
;; ;; ;;           (lambda()
;; ;; ;;             (local-set-key (kbd "RET") 'ruby-newline-and-indent)))
;; ;; ;; (define-key rails-minor-mode-map "\C-c\C-p" 'rails-lib:run-primary-switch)
;; ;; ;; (define-key rails-minor-mode-map "\C-c\C-n" 'rails-lib:run-secondary-switch)
;; ;; ;; (defvar rails-use-another-define-key t)

;; ;; ;; (autoload 'ruby-mode "ruby-mode"
;; ;; ;;   "Mode for editing ruby source files" t)
;; ;; ;; (setq auto-mode-alist
;; ;; ;;       (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;; ;; ;; (setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
;; ;; ;;                                 interpreter-mode-alist))
;; ;; ;; (autoload 'run-ruby "inf-ruby"
;; ;; ;;   "Run an inferior Ruby process")
;; ;; ;; (autoload 'inf-ruby-keys "inf-ruby"
;; ;; ;;   "Set local key defs for inf-ruby in ruby-mode")
;; ;; ;; (add-hook 'ruby-mode-hook
;; ;; ;;       '(lambda ()
;; ;; ;;          (inf-ruby-keys)
;; ;; ;; ))
