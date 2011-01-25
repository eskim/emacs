;;----------------------------------------------------------------------
;; mode-compile
;;----------------------------------------------------------------------
(autoload 'mode-compile "mode-compile"
	  "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
	  "Command to kill a compilation launched by ode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill) 


;;----------------------------------------------------------------------
;; psvn
;;----------------------------------------------------------------------
(require 'psvn)
(setq svn-status-hide-unmodified t)


;; ;;----------------------------------------------------------------------
;; ;; Org-mode
;; ;;----------------------------------------------------------------------
;; (require 'org-install)
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (define-key global-map "\C-cl" 'org-store-link)
;; (define-key global-map "\C-ca" 'org-agenda)
;; (setq org-log-done t)
;; ; settings
;; (setq org-hide-leading-stars t)         ;only show one *
;; (setq org-log-done t)                   ;add CLOSED when complete item

;; ;;----------------------------------------------------------------------
;; ;; Highline - M-x highline-mode
;; ;;----------------------------------------------------------------------
;; ;; (require 'highline)
;; ;; (highline-mode)
;; ;; (add-hook 'dired-after-readin-hook 'highline-local-mode)
;; ;; (add-hook 'buffer-menu-mode-hook 'highline-local-mode)
;; ;;----------------------------------------------------------------------
;; ;; hl-line-mode (현재 줄 하이라이트)
;; ;;----------------------------------------------------------------------
;; ;; (global-hl-line-mode 1)
;; ;; (set-face-background 'hl-line "#330")  ;; Emacs 22 Only



;;----------------------------------------------------------------------
;; tramp
;;----------------------------------------------------------------------
(require 'tramp)
;; ;; (setq tramp-default-method "plink")
;; ;; (setq tramp-password-end-of-line "\r\n")
;; ;; (setq shell-prompt-pattern "^.&%")
;; ;; (setq tramp-verbose 10)
;; ;; (setq tramp-debug-buffer t)
;; (setq tramp-sh-program "/bin/bash")
(setq tramp-remote-sh "/bin/bash")
;; (setq tramp-chunksize 500)
;; ;; (modify-coding-system-alist 'process "plink" 'utf-8)
;; (setq tramp-default-method "ssh")
;; ;; (tramp-set-completion-function "ssh"
;; ;;   '((tramp-parse-hosts "/etc/hosts")))			      


;;======================================================================
;; GOODIES
;;======================================================================
;;----------------------------------------------------------------------
;; ECB
;;----------------------------------------------------------------------
;; (setq ecb-gzip-setup (quote cons))
;; (setq ecb-layout-name "left14")
;; (setq ecb-layout-window-sizes (quote (("left14" (0.2564102564102564 . 0.6949152542372882) (0.2564102564102564 . 0.23728813559322035)))))
;; (setq ecb-source-path (quote ("/data/work")))


