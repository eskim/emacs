 (setq mac-option-modifier 'super)
 (setq mac-command-modifier 'meta)


(global-set-key (kbd "C-c C-g p") 'pweet-post)
(global-set-key "\C-xp" 'eskim-ido-find-project)
(global-set-key "\C-xg" 'magit-status)


(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-w") 'slick-copy)
(global-set-key (kbd "C-w") 'slick-cut)
;; (global-set-key [(control x) (control b)] 'electric-buffer-list);; Better buffer list.
(global-set-key [(control x) (control b)] 'buffer-menu)

(global-set-key [f11] 'speedbar) ;;eshell
(global-set-key [f12] '(lambda () (interactive) (eshell))) ;;eshell


(global-set-key [(control x) (control c)]
                '(lambda ()
                   (interactive)
                   (if (y-or-n-p-with-timeout "Do you really want to exit Emacs ? " 4 nil)
                       (save-buffers-kill-emacs))))


; vim emulation
(global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-*") 'isearch-forward-at-point)

;;----------------------------------------------------------------------
;; global key bindings
;;----------------------------------------------------------------------

;; ;; (global-set-key "\e\C-@"    'mark-line)
;; ;; (global-set-key [?\C-\M-\ ] 'mark-line)
;; ;;  (global-set-key "\e\C-k"    'kill-whole-line)
;; ;;  (global-set-key [?\C-\M-\k] 'kill-whole-line)

;; (global-set-key "\C-\\"     'delete-whitespace-forward)
;; (global-set-key [?\C-\;]    'indent-after-char)
;; (global-set-key "\M-#"      'comment-line)
;; (global-set-key "\M-&"      'insert-indentation)
;; (global-set-key "\M-]"      'toggle-mark)
;; ;; (global-set-key "\M-{"      'insert-curlies)
;; ;; (global-set-key "\M-}"      'move-past-closing-curly)
;; (global-set-key "\M-/"      'hippie-expand)
;; (global-set-key "\M-\""     'align-html-attributes)
;; (global-set-key "\M-_"      'goto-last-change)
;; ;; (global-set-key "\M-g"      'goto-line)
;; (global-set-key "\M-n"      'bs-cycle-next)
;; (global-set-key "\M-p"      'bs-cycle-previous)
;; (global-set-key "\M-s"      'bs-show)
;; (global-set-key "\M-q"      'fill-individual-paragraphs)
;; (global-set-key "\eOa"      'backward-paragraph)
;; (global-set-key "\eOb"      'forward-paragraph)
;; (global-set-key "\eOc"      'forward-word)
;; (global-set-key "\eOd"      'backward-word)
;; (global-set-key "\e\e[7~"   'beginning-of-buffer-other-window)
;; (global-set-key "\e\e[8~"   'end-of-buffer-other-window)
;; (global-set-key "\eO3a"     'enlarge-window)
;; (global-set-key [?\e up]    'enlarge-window)
;; (global-set-key [M-up]      'enlarge-window)
;; (global-set-key "\eO3b"     'shrink-window)
;; (global-set-key [?\e down]  'shrink-window)
;; (global-set-key [M-down]    'shrink-window)
;; (global-set-key "\eO3c"     'indent-current-region)
;; (global-set-key [?\e right] 'indent-current-region)
;; (global-set-key [M-right]   'indent-current-region)
;; (global-set-key "\eO3d"     'dedent-current-region)
;; (global-set-key [?\e left]  'dedent-current-region)
;; (global-set-key [M-left]    'dedent-current-region)
;; (global-set-key [?\e f1]    'toggle-text-mode-fontified)
;; (global-set-key [M-f1]      'toggle-text-mode-fontified)
;; (global-set-key [A-f1]      'toggle-text-mode-fontified)
;; (global-set-key [?\e f2]    'align-regexp)
;; (global-set-key [M-f2]      'align-regexp)
;; (global-set-key [A-f2]      'align-regexp)
;; (global-set-key [f3]        'query-replace)
;; (global-set-key [?\e f3]    'query-replace-regexp)
;; (global-set-key [M-f3]      'query-replace-regexp)
;; (global-set-key [A-f3]      'query-replace-regexp)
;; (global-set-key [f4]        'svn-status)
;; (global-set-key [f5]        'recompile)
;; (global-set-key [f9]        'open-shell-pane)
;; (global-set-key [f11]       'bookmark-jump)
;; (global-set-key [f12]       'call-last-kbd-macro)
;; (global-set-key [?\e f5]    'compile)
;; (global-set-key [M-f5]      'compile)
;; (global-set-key [A-f5]      'compile)
;; (global-set-key [f6]        'other-window)
;; (global-set-key [f7]        'toggle-truncate-lines)
;; (global-set-key [?\e f7]    'toggle-show-trailing-whitespace)
;; (global-set-key [M-f7]      'toggle-show-trailing-whitespace)
;; (global-set-key [A-f7]      'toggle-show-trailing-whitespace)
;; (global-set-key [f8]        'follow-delete-other-windows-and-split)
;; (global-set-key [?\e f8]    'follow-mode-quit)
;; (global-set-key [M-f8]      'follow-mode-quit)
;; (global-set-key [A-f8]      'follow-mode-quit)
;; (global-set-key [?\e f11]   'bookmark-set)
;; (global-set-key [M-f11]     'bookmark-set)
;; (global-set-key [A-f11]     'bookmark-set)
;; (global-set-key [?\e f12]   'start-or-end-kbd-macro)
;; (global-set-key [M-f12]     'start-or-end-kbd-macro)
;; (global-set-key [A-f12]     'start-or-end-kbd-macro)
;; ;; (global-set-key [?\e f6]    'rotate-windows)
;; ;; (global-set-key [M-f6]      'rotate-windows)
;; ;; (global-set-key [A-f6]      'rotate-windows)
;; ;; (global-set-key [C-tab]     'other-window)
;; ;; (global-set-key [C-S-tab]   'other-window-reverse)
;; ;; (global-set-key [?\e f9]    'linum)
;; ;; (global-set-key [M-f9]      'linum)
;; ;; (global-set-key [A-f9]      'linum)
;; ;; (global-set-key [C-S-iso-lefttab] 'other-window-reverse)
;; ;; (global-set-key [?\e prior] 'scroll-other-window-down)
;; ;; (global-set-key [?\e next]  'scroll-other-window)
;; ;; (global-set-key "\e[7^"     'beginning-of-buffer)
;; ;; (global-set-key "\e[7~"     'beginning-of-line)
;; ;; (global-set-key "\eOH"      'beginning-of-line)
;; ;; (global-set-key "\e[8^"     'end-of-buffer)
;; ;; (global-set-key "\eOF"      'end-of-line)
;; ;; (global-set-key "\e[8~"     'end-of-line)



;; (global-set-key [(meta control k)] 'kill-whole-line)
;; (global-set-key [(meta control p)]  'move-region-up)
;; (global-set-key [(meta control n)]  'move-region-down)
;; (global-set-key [(meta control right)] 'shift-right)
;; (global-set-key [(meta control left)] 'shift-left)
;; (global-set-key [(meta +)]  'duplicate-line)

;; C-x C-t transpose-lines 
;; (global-set-key (kbd "M-<up>") 'move-line-up)
;; (global-set-key (kbd "M-<down>") 'move-line-down)

;; (global-set-key [f4] 'kill-this-buffer) ;; Close down Lisp before killing buffer
;; (global-set-key [f6] 'other-window) ;; Common buffer/window control shortcuts
;; (global-set-key [f7] 'delete-other-windows)
;; (global-set-key [f8] 'delete-window)


