;;------------------------------------------------------------------------------
;; Index for color-theme-colorful-obsolescence by Scott Jaderholm
;;------------------------------------------------------------------------------
;; Overview
;; Window system
;; General
;; Isearch and regions
;; Misc
;; Gui interface
;; Highline
;; Info
;; Font-lock
;; Eshell
;; Org-mode
;; Ido
;; Dired
;; Console

;;-----------------------------------------------------------------------------
;; Overview
;;-----------------------------------------------------------------------------
;; Latest: http://jaderholm.com/configs/color-theme-colorful-obsolescence.el
;; Screenshot: http://jaderholm.com/photos/screens/colorful-obsolescence.png
;; License: GNU Lesser General Public License 2.1

;; Main features
;; 1. Looks the same in console and graphical
;; 2. Looks good if window is transparent
;; 3. Has org-mode faces

;; For console you'll need the following colors:
;;    Black 0,0,0 #000000
;;    Black Bold 85,85,85 #555555 
;;    Red 238,60,60 #ee3c3c 
;;    Red Bold 255,85,85 #ff5555 
;;    Green 0,187,0 #00bb00 
;;    Green Bold 85,255,85 #55ff55 
;;    Yellow* 255,217,85 #ffd955 
;;    Yellow Bold 255,255,85 #ffff55 
;;    Blue 85,85,255 #5555ff 
;;    Blue Bold 0,142,209 #008ed1 
;;    Magenta 150,81,204 #9651cc 
;;    Magenta Bold 255,85,255 #ff55ff 
;;    Cyan* 0,139,139 #008b8b 
;;    Cyan Bold* 0,255,255 #00ffff 
;;    White 187,187,187 #bbbbbb 
;;    White Bold 255,255,255 #ffffff 
;;    Default Foreground 187,187,187 #bbbbbb 
;;    Default Bold Foreground 255,255,255 #ffffff 
;;    Default Background 0,0,0 #000000 
;;    Default Bold Background 85,85,85 #555555 
;;    Cursor Text 0,0,0 #000000 
;;    Cursor Colour 255,255,255 #ffffff

(defun color-theme-colorful-obsolescence ()
  "Color theme Colorful Obsolescence by Scott Jaderholm, created 2007-01-05."
  (interactive)
  (let ((color-theme-is-cumulative nil))

;;-----------------------------------------------------------------------------
;; Window system
;;-----------------------------------------------------------------------------
(if window-system
    (color-theme-install
     '(color-theme-colorful-obsolescence

;;-----------------------------------------------------------------------------
;; General
;;-----------------------------------------------------------------------------
       ((background-color . "#000")
	(background-mode . dark)
	(background-toolbar-color . "#000")
	(border-color . "#000")
	(bottom-toolbar-shadow-color . "#000")
	(cursor-color	. "#FFF")
	(foreground-color . "#bbb")
	(top-toolbar-shadow-color . "#111"))
       (default ((t (nil))))
       (button ((t (:bold t))))
       (fringe ((t (:background "#000" :foreground "#444"))))

;; Weird bug: Something loading my theme is setting tooltip back to
;; default, and so this and default settings get applied at same
;; time. Until I can fix that, no tooltip face.  

;;       (tooltip ((t (:background "#333" :foreground "#777"))))

;; -----------------------------------------------------------------------------
;; Isearch and regions
;; -----------------------------------------------------------------------------
       (isearch ((t (:background "#555" :foreground "white"))))
       (isearch-lazy-highlight-face ((t (:background "#333" :foreground "#bbb"))))
       (highlight ((t (:background "#555" :foreground "white"))))
       (lazy-highlight-face ((t (:background "#333" :foreground "#bbb" ))))
       (region ((t (:background "#333"))))
       (isearch-fail ((t (:foreground "#ee3c3c" :weight bold))))
       (match ((t (:background "#555" :foreground "white"))))
;;-----------------------------------------------------------------------------
;; Misc
;;-----------------------------------------------------------------------------
       (secondary-selection ((t (:background "#333" ))))
       (show-paren-match-face ((t (:foreground "white" :bold t))))
       (show-paren-mismatch-face ((t (:foreground "white" :background "#ee3c3c"))))
       (calendar-today ((t (:foreground "white"))))
       (compilation-info ((t (:foreground "#008ed1" :weight normal))))
;;-----------------------------------------------------------------------------
;; Gui interface
;;-----------------------------------------------------------------------------
       (menu ((t (:background "#111" :foreground "#444"))))
       (minibuffer-prompt ((t (:foreground "#777"))))
       (minibuffer-noticeable-prompt ((t (:foreground "#777"))))
       (modeline ((t (:background "#000" :foreground "#bbb"))))
       (mode-line ((t (:background "black"))))
       (mode-line-inactive ((t (:background "#000" :foreground "#444"))))
       (modeline-buffer-id ((t (:foreground "#FFF"))))
       (modeline-mousable ((t (:background "#000" :foreground "#555"))))
       (modeline-mousable-minor-mode ((t (:background "#000" :foreground "#555"))))
       (mode-line-highlight ((t (:foreground "#b9FC6D"))))


       
       (widget-field-face ((t (:background "#222" :foreground "#555" ))))
       (widget-link ((t (:foreground "white" :underline t))))

;; Custom
       (custom-button ((t (:background "#333" :foreground "#bbb" :weight bold ))))
       (header-line ((t (:background "#333" :foreground "grey60"))))
       (custom-link ((t (:foreground "white" :underline t))))
       (custom-variable-tag ((t (:foreground "#008ed1" :weight bold))))
       (custom-documentation ((t (:foreground "#b9FC6D"))))
       (custom-state ((t (:foreground "#555"))))
       (custom-button-mouse ((t (:background "#333" :foreground "#fff" :weight bold))))
       (custom-button-pressed ((t (:background "#333" :foreground "#999" :weight bold))))

       (custom-group-tag ((t (:foreground "#ffff55" :height 1.2 :weight bold ))))
       (tool-bar ((t (:background "#111" :foreground "#777"))))


;;-----------------------------------------------------------------------------
;; Highline
;;-----------------------------------------------------------------------------
     (highline-face ((t (:background "#222"))))
     (highline-vertical-face ((t (:background "#111"))))

;;-----------------------------------------------------------------------------
;; Info
;;-----------------------------------------------------------------------------
     (info-xref-face ((t (:foreground "#ddd"))))

;;-----------------------------------------------------------------------------
;; Font-lock
;;-----------------------------------------------------------------------------

;; Haven't seen these faces so I haven't bothered themeing them
;     (font-lock-preprocessor-face ((t (:foreground "#777"))))
;     (font-lock-reference-face ((t (:foreground "#777"))))
;     (font-lock-warning-face ((t (:bold t :foreground "#999"))))

     (font-lock-doc-face ((t (:foreground "#777"))))
     (font-lock-type-face ((t (:foreground "#b9FC6D"))))
     (font-lock-builtin-face ((t (:foreground "#5555ff"))))
     (font-lock-doc-string-face ((t (:foreground "yellow" :bold t))))

     (font-lock-function-name-face ((t (:foreground "#ff55ff")))) ;; month
     (font-lock-constant-face ((t (:foreground "#9651cc")))) ;; days
     (font-lock-comment-face ((t (:foreground "#008ed1")))) ;; sat/sun
     (font-lock-comment-delimiter-face ((t (:foreground "#008ed1"))))

     (font-lock-keyword-face ((t (:foreground "#ff5555"))))
     (font-lock-string-face ((t (:foreground "#ffff55"))))
     (font-lock-variable-name-face ((t (:foreground "#ff55ff"))))

;;-----------------------------------------------------------------------------
;; Eshell
;;-----------------------------------------------------------------------------
     (eshell-ls-directory ((t (:foreground "#008ed1"))))
     (eshell-ls-archive ((t (:foreground "#ee3c3c"))))
     (eshell-prompt ((t (:foreground "white"))))

;;-----------------------------------------------------------------------------
;; Org-mode
;;-----------------------------------------------------------------------------
     (org-level-1 ((t (:foreground "#5555ff"))))
     (org-level-2 ((t (:foreground "#ffff55" :weight bold))))
     (org-level-3 ((t (:foreground "#008ed1"))))
     (org-level-4 ((t (:foreground "#ff55ff"))))
     (org-level-5 ((t (:foreground "#00bb00"))))
     (org-level-6 ((t (:foreground "#9651cc"))))
     (org-link ((t (:foreground "#ffffff" :underline t))))
     (org-scheduled ((t (:foreground "#00bb00"))))
     (org-scheduled-today ((t (:foreground "#55ff55"))))
     (org-scheduled-previously ((t (:foreground "#00bb00"))))
     (org-special-keyword ((((class color) (background dark)) (:foreground "#55ff55"))))
     (org-special-keyword ((t (:foreground "#00bb00"))))
     (org-warning ((t (:foreground "#ee3c3c"))))
     (org-table ((t (:foreground "#555555"))))
     (org-tag ((t (:foreground "#55ff55"))))
     (org-time-grid ((t (:foreground "#555"))))
     (org-todo ((t (:foreground "#ff5555"))))
     (org-upcoming-deadline ((t (:foreground "#ff5555"))))
     (org-date ((t (:foreground "#999" )))) ;; "#00ffff"
     (org-done ((t (:foreground "#55ff55"))))
     (org-agenda-structure ((t (:foreground "#008ed1"))))
     (org-done-headline ((t ())))
     (org-hide ((t (:foreground "#000"))))
     (org-column ((t (:background "#777" :foreground "white"))))

;;-----------------------------------------------------------------------------
;; Ido
;;-----------------------------------------------------------------------------
     (ido-first-match ((t (:foreground "white"))))
;;     (ido-only-match ((t (:foreground "#55ff55"))))
     (ido-only-match ((t (:foreground "#b9FC6D"))))
     (ido-subdir ((t (:foreground "#008ed1"))))

;;-----------------------------------------------------------------------------
;; Tabbar
;;-----------------------------------------------------------------------------
     (tabbar-button-face ((t (:inherit tabbar-default-face :foreground "grey72"))))
     (tabbar-default-face ((t (:inherit variable-pitch :background "#222" :foreground "gray60" :height 0.8))))
     (tabbar-unselected-face ((t (:inherit tabbar-default-face :background "#333" :foreground "#bbb" :box nil))))
     (tabbar-selected-face ((t (:inherit tabbar-default-face :background "#777" :foreground "white" :box nil))))
     (tabbar-separator-face ((t (:background "#222" :height 0.7))))

;;-----------------------------------------------------------------------------
;; Speedbar
;;-----------------------------------------------------------------------------
     (speedbar-directory-face ((t (:foreground "#008ed1" :weight bold))))
     (speedbar-highlight-face ((t (:foreground "#fff" :weight bold))))
     (speedbar-selected-face ((t (:background "#555" :foreground "white" :weight bold))))


;;-----------------------------------------------------------------------------
;; Dired
;;-----------------------------------------------------------------------------
     (dired-directory ((t (:foreground "#008ed1"))))
     (dired-header ((t (:foreground "white"))))
     (dired-flagged ((t (:background "#333" :foreground "#bbb" ))))


;;-----------------------------------------------------------------------------
;; Slime
;;-----------------------------------------------------------------------------

     (slime-repl-inputed-output-face ((t (:foreground "#b9FC6D"))))
     (slime-repl-prompt-face ((t (:foreground "#008ed1"))))

;;-----------------------------------------------------------------------------
;; Gnus
;;-----------------------------------------------------------------------------
;;      (message-header-face ((t (:foreground ""))))
;;      (message-header-to ((t (:foreground ""))))
;;      (message-header-other ((t (:foreground "")))) ;; From:
;;      (message-header-separator ((t (:foreground ""))))
;;      (gnus-group-mail-3-empty ((t (:foreground ""))))
;;      (gnus-group-mail-1-empty ((t (:foreground ""))))

;;------------------------------------------------------------------------------
;; Flyspell
;;------------------------------------------------------------------------------
;;      (flyspell-incorrect ((t (:foreground "#F92672" :slant italic))))
;;      (flyspell-duplicate ((t (:foreground "#f92672" :slant italic))))
     (flyspell-incorrect ((t (:background "#333"))))
     (flyspell-duplicate ((t (:background "#333"))))
			 
))


;;-----------------------------------------------------------------------------
;; Console
;;-----------------------------------------------------------------------------
;; This will only look good with the colors mentioned in Overview
     (color-theme-install
      '(color-theme-colorful-obsolescence
	
       ((background-color . "black")
	(background-mode . dark)
	(foreground-color . "white"))
       (default ((t (nil))))
      (custom-group-tag ((t (:foreground "white" :weight bold))))
      (font-lock-comment-face ((t (:foreground "blue" :weight bold))))
      (font-lock-keyword-face ((t (:foreground "red" :weight bold))))
      (font-lock-string-face ((t (:foreground "yellow" :weight bold))))
      (font-lock-variable-name-face ((t (:foreground "magenta" :weight bold))))
      (font-lock-constant-face ((t (:foreground "magenta" :weight bold))))
      (font-lock-doc-face ((t (:foreground "cyan"))))
      (isearch ((t (:background "cyan" :foreground "white" :weight bold))))
      (isearch-lazy-highlight ((t (:background "magenta" :foreground "white" ))))
      (highlight ((t (:background "cyan" :foreground "white" :weight bold))))
      (region ((t (:background "magenta"))))
      (lazy-highlight-face ((t (:background "magenta" :foreground "white"))))
      (ido-subdir-face ((t (:foreground "blue" :weight bold))))
      (isearch ((t (:background "cyan" :foreground "white" :weight bold))))
      (isearch-lazy-highlight ((t (:background "magenta" :foreground "white"))))
      (menu ((t (:background "black" :weight bold))))
      (mode-line ((t (:background "black"))))
      (org-date ((t (:foreground "cyan" :underline t :weight bold))))
      (org-level-1 ((t (:foreground "blue"))))
      (org-level-3 ((t (:foreground "blue" :weight bold))))
      (org-level-4 ((t (:foreground "magenta" :weight bold))))
      (org-link ((t (:foreground "white" :weight bold))))
      (org-scheduled-previously ((t (:foreground "green"))))
      (org-scheduled-today ((t (:foreground "green" :weight bold))))
      (org-special-keyword ((t (:foreground "green" :weight bold))))
      (org-table ((t (:foreground "black" :weight bold))))
      (org-tag ((t (:foreground "green" :underline t :weight bold))))
      (org-time-grid ((t (:foreground "black" :weight bold))))
      (org-todo ((t (:foreground "red" :weight bold))))
      (org-upcoming-deadline ((t (:foreground "red"))))
      (show-paren-match-face ((t (:foreground "white" :weight bold))))
      (eshell-prompt-face ((t (:foreground "white" :weight bold))))
      (eshell-ls-archive-face ((t (:foreground "red"))))
      (eshell-ls-directory-face ((t (:foreground "blue" :weight bold))))
      ))

     )))
