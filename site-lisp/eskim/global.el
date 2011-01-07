;;----------------------------------------------------------------------
;; General Settings
;;----------------------------------------------------------------------
;; Enable emacs functionality that is disabled by default
(put 'eval-expression 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'eval-expression 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq enable-recursive-minibuffers t)
; (if terminal-connection ( menu-bar-mode nil))

;; Some better defaults
(fset 'yes-or-no-p 'y-or-n-p)           ;replace y-e-s by y
(setq inhibit-startup-message t)        ;no splash screen
(defconst use-backup-dir t)             ;use backup directory
(setq backup-directory-alist (quote ((".*" . "~/.backups"))))
(setq ls-lisp-dirs-first t)             ;display dirs first in dired
(setq x-select-enable-clipboard t)      ;use system clipboard
(show-paren-mode 1)                     ;match parenthesis
;(menu-bar-mode -1)                      ;hide menu-bar
(scroll-bar-mode -1)                    ;hide scroll-bar
(tool-bar-mode -1)                      ;hide tool-bar
(column-number-mode 1)                  ;show column number
(global-font-lock-mode 1)               ;Color syntax highlighting
(setq font-lock-maximum-decoration t)   ;why not?
(add-hook 'text-mode-hook 'auto-fill-mode)  ;auto-fill
(setq transient-mark-mode t)            ;highlights selections
(setq-default truncate-lines t)         ;no wrap
(recentf-mode 1)                        ;recent edited file in menu
(auto-compression-mode t)               ;turn on auto file uncompression
;; Set buffer behaviour
(setq next-line-add-newlines nil)
(setq scroll-step 1)
(setq scroll-conservatively 5)
;; Column & line numbers in mode bar
(column-number-mode t)
(line-number-mode t)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;;----------------------------------------------------------------------
;; Word completion customizations
;;----------------------------------------------------------------------
(defconst dabbrev-always-check-other-buffers t)
(defconst dabbrev-abbrev-char-regexp "\\sw\\|\\s_")
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol
        try-expand-whole-kill))

(setq frame-title-format
  '("" invocation-name ": "(:eval (if (buffer-file-name)
                (abbreviate-file-name (buffer-file-name))
                  "%b")) " [%*]"))


