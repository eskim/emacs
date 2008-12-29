;;-----------------------------------------------------------------------
;; ido - This mode seriously rocks!
;;-----------------------------------------------------------------------
(if (< emacs-major-version 22) ;newer version included in Emacs 22, that doesn't work with 21
  (load-library "ido-old")
  (require 'ido))
(ido-mode t)
(setq ido-enable-flex-matching t)
;; (add-hook 'ido-define-mode-map-hook 'ido-my-keys)
;; (defun ido-my-keys ()
;;   (define-key ido-mode-map "\t" 'ido-complete)
;;   (define-key ido-mode-map (kbd "tab") 'ido-complete)  ;tab is better for completion lists
;;   (define-key ido-mode-map "\C-t" 'ido-toggle-regexp) ; same as in isearch
;;   (define-key ido-mode-map "\C-d" 'ido-enter-dired))



;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file sjhould contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(column-number-mode t)
;;  '(ecb-gzip-setup (quote cons) t)
;;  '(ecb-options-version "2.32")
;;  '(ido-enable-flex-matching t)
;;  '(ido-everywhere t)
;;  '(ido-max-window-height 2)
;;  '(ido-max-work-file-list 50)
;;  '(org-agenda-files (quote ("/data/doc/todo.org" "/data/doc/080729pm.org")))
;;  '(show-paren-mode t)
;;  '(transient-mark-mode t)
;;  '(woman-manpath (quote ("/usr/share/man" "/usr/local/man" ("/bin" . "/usr/share/man") ("/usr/bin" . "/usr/share/man") ("/sbin" . "/usr/share/man") ("/usr/sbin" . "/usr/share/man") ("/usr/local/bin" . "/usr/local/man") ("/usr/local/bin" . "/usr/local/share/man") ("/usr/local/sbin" . "/usr/local/man") ("/usr/local/sbin" . "/usr/local/share/man") ("/usr/X11R6/bin" . "/usr/X11R6/man") ("/usr/bin/X11" . "/usr/X11R6/man") ("/usr/games" . "/usr/share/man") ("/opt/bin" . "/opt/man") ("/opt/sbin" . "/opt/man")))))

