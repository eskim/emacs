;; (defun color-theme-arjen ()
;;   "Color theme by awiersma, created 2001-08-27."
;;   (interactive)
;;   (color-theme-install
;;    '(color-theme-arjen
;;      ((background-color . "black")
;;       (background-mode . dark)
;;       (border-color . "black")
;;       (cursor-color . "yellow")
;;       (foreground-color . "White")
;;       (mouse-color . "sienna1"))
;;      ((buffers-tab-face . buffers-tab)
;;       (cperl-here-face . font-lock-string-face)
;;       (cperl-invalid-face quote underline)
;;       (cperl-pod-face . font-lock-comment-face)
;;       (cperl-pod-head-face . font-lock-variable-name-face)
;;       (vc-mode-face . highlight))
;;      (default ((t (:background "black" :foreground "white"))))
;;      (blue ((t (:foreground "blue"))))
;;      (bold ((t (:bold t))))
;;      (bold-italic ((t (:bold t))))
;;      (border-glyph ((t (nil))))
;;      (buffers-tab ((t (:background "black" :foreground "white"))))
;;      (calendar-today-face ((t (:underline t))))
;;      (cperl-array-face ((t (:foreground "darkseagreen"))))
;;      (cperl-hash-face ((t (:foreground "darkseagreen"))))
;;      (cperl-nonoverridable-face ((t (:foreground "SkyBlue"))))
;;      (custom-button-face ((t (nil))))
;;      (custom-changed-face ((t (:background "blue" :foreground "white"))))
;;      (custom-documentation-face ((t (nil))))
;;      (custom-face-tag-face ((t (:underline t))))
;;      (custom-group-tag-face ((t (:underline t :foreground "light blue"))))
;;      (custom-group-tag-face-1 ((t (:underline t :foreground "pink"))))
;;      (custom-invalid-face ((t (:background "red" :foreground "yellow"))))
;;      (custom-modified-face ((t (:background "blue" :foreground "white"))))
;;      (custom-rogue-face ((t (:background "black" :foreground "pink"))))
;;      (custom-saved-face ((t (:underline t))))
;;      (custom-set-face ((t (:background "white" :foreground "blue"))))
;;      (custom-state-face ((t (:foreground "lime green"))))
;;      (custom-variable-button-face ((t (:underline t :bold t))))
;;      (custom-variable-tag-face ((t (:underline t :foreground "light blue"))))
;;      (diary-face ((t (:foreground "IndianRed"))))
;;      (erc-action-face ((t (:bold t))))
;;      (erc-bold-face ((t (:bold t))))
;;      (erc-default-face ((t (nil))))
;;      (erc-direct-msg-face ((t (:foreground "sandybrown"))))
;;      (erc-error-face ((t (:bold t :foreground "IndianRed"))))
;;      (erc-input-face ((t (:foreground "Beige"))))
;;      (erc-inverse-face ((t (:background "wheat" :foreground "darkslategrey"))))
;;      (erc-notice-face ((t (:foreground "MediumAquamarine"))))
;;      (erc-pal-face ((t (:foreground "pale green"))))
;;      (erc-prompt-face ((t (:foreground "MediumAquamarine"))))
;;      (erc-underline-face ((t (:underline t))))
;;      (eshell-ls-archive-face ((t (:bold t :foreground "IndianRed"))))
;;      (eshell-ls-backup-face ((t (:foreground "Grey"))))
;;      (eshell-ls-clutter-face ((t (:foreground "DimGray"))))
;;      (eshell-ls-directory-face ((t (:bold t :foreground "MediumSlateBlue"))))
;;      (eshell-ls-executable-face ((t (:foreground "Coral"))))
;;      (eshell-ls-missing-face ((t (:foreground "black"))))
;;      (eshell-ls-picture-face ((t (:foreground "Violet"))))
;;      (eshell-ls-product-face ((t (:foreground "sandybrown"))))
;;      (eshell-ls-readonly-face ((t (:foreground "Aquamarine"))))
;;      (eshell-ls-special-face ((t (:foreground "Gold"))))
;;      (eshell-ls-symlink-face ((t (:foreground "White"))))
;;      (eshell-ls-unreadable-face ((t (:foreground "DimGray"))))
;;      (eshell-prompt-face ((t (:foreground "MediumAquamarine"))))
;;      (fl-comment-face ((t (:foreground "pink"))))
;;      (fl-doc-string-face ((t (:foreground "purple"))))
;;      (fl-function-name-face ((t (:foreground "red"))))
;;      (fl-keyword-face ((t (:foreground "cadetblue"))))
;;      (fl-string-face ((t (:foreground "green"))))
;;      (fl-type-face ((t (:foreground "yellow"))))
;;      (font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
;;      (font-lock-comment-face ((t (:foreground "IndianRed"))))
;;      (font-lock-constant-face ((t (:foreground "Aquamarine"))))
;;      (font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
;;      (font-lock-function-name-face ((t (:foreground "YellowGreen"))))
;;      (font-lock-keyword-face ((t (:foreground "PaleYellow"))))
;;      (font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
;;      (font-lock-reference-face ((t (:foreground "SlateBlue"))))
;;      (font-lock-string-face ((t (:foreground "Orange"))))
;;      (font-lock-type-face ((t (:foreground "Green"))))
;;      (font-lock-variable-name-face ((t (:foreground "darkseagreen"))))
;;      (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
;;      (qt-classes-face ((t (:foreground "Red"))))
;;      (gnus-cite-attribution-face ((t (nil))))
;;      (gnus-cite-face-1 ((t (:bold nil :foreground "deep sky blue"))))
;;      (gnus-cite-face-10 ((t (:foreground "medium purple"))))
;;      (gnus-cite-face-11 ((t (:foreground "turquoise"))))
;;      (gnus-cite-face-2 ((t (:bold nil :foreground "cadetblue"))))
;;      (gnus-cite-face-3 ((t (:bold nil :foreground "gold"))))
;;      (gnus-cite-face-4 ((t (:foreground "light pink"))))
;;      (gnus-cite-face-5 ((t (:foreground "pale green"))))
;;      (gnus-cite-face-6 ((t (:bold nil :foreground "chocolate"))))
;;      (gnus-cite-face-7 ((t (:foreground "orange"))))
;;      (gnus-cite-face-8 ((t (:foreground "magenta"))))
;;      (gnus-cite-face-9 ((t (:foreground "violet"))))
;;      (gnus-emphasis-bold ((t (:bold nil))))
;;      (gnus-emphasis-bold-italic ((t (:bold nil))))
;;      (gnus-emphasis-highlight-words ((t (:background "black" :foreground "yellow"))))
;;      (gnus-emphasis-italic ((t (nil))))
;;      (gnus-emphasis-underline ((t (:underline t))))
;;      (gnus-emphasis-underline-bold ((t (:underline t :bold nil))))
;;      (gnus-emphasis-underline-bold-italic ((t (:underline t :bold nil))))
;;      (gnus-emphasis-underline-italic ((t (:underline t))))
;;      (gnus-group-mail-1-empty-face ((t (:foreground "aquamarine1"))))
;;      (gnus-group-mail-1-face ((t (:bold nil :foreground "aquamarine1"))))
;;      (gnus-group-mail-2-empty-face ((t (:foreground "aquamarine2"))))
;;      (gnus-group-mail-2-face ((t (:bold nil :foreground "aquamarine2"))))
;;      (gnus-group-mail-3-empty-face ((t (:foreground "aquamarine3"))))
;;      (gnus-group-mail-3-face ((t (:bold nil :foreground "aquamarine3"))))
;;      (gnus-group-mail-low-empty-face ((t (:foreground "aquamarine4"))))
;;      (gnus-group-mail-low-face ((t (:bold nil :foreground "aquamarine4"))))
;;      (gnus-group-news-1-empty-face ((t (:foreground "PaleTurquoise"))))
;;      (gnus-group-news-1-face ((t (:bold nil :foreground "PaleTurquoise"))))
;;      (gnus-group-news-2-empty-face ((t (:foreground "turquoise"))))
;;      (gnus-group-news-2-face ((t (:bold nil :foreground "turquoise"))))
;;      (gnus-group-news-3-empty-face ((t (nil))))
;;      (gnus-group-news-3-face ((t (:bold nil))))
;;      (gnus-group-news-4-empty-face ((t (nil))))
;;      (gnus-group-news-4-face ((t (:bold nil))))
;;      (gnus-group-news-5-empty-face ((t (nil))))
;;      (gnus-group-news-5-face ((t (:bold nil))))
;;      (gnus-group-news-6-empty-face ((t (nil))))
;;      (gnus-group-news-6-face ((t (:bold nil))))
;;      (gnus-group-news-low-empty-face ((t (:foreground "DarkTurquoise"))))
;;      (gnus-group-news-low-face ((t (:bold nil :foreground "DarkTurquoise"))))
;;      (gnus-header-content-face ((t (:foreground "forest green"))))
;;      (gnus-header-from-face ((t (:bold nil :foreground "spring green"))))
;;      (gnus-header-name-face ((t (:foreground "deep sky blue"))))
;;      (gnus-header-newsgroups-face ((t (:bold nil :foreground "purple"))))
;;      (gnus-header-subject-face ((t (:bold nil :foreground "orange"))))
;;      (gnus-signature-face ((t (:bold nil :foreground "khaki"))))
;;      (gnus-splash-face ((t (:foreground "Brown"))))
;;      (gnus-summary-cancelled-face ((t (:background "black" :foreground "yellow"))))
;;      (gnus-summary-high-ancient-face ((t (:bold nil :foreground "SkyBlue"))))
;;      (gnus-summary-high-read-face ((t (:bold nil :foreground "PaleGreen"))))
;;      (gnus-summary-high-ticked-face ((t (:bold nil :foreground "pink"))))
;;      (gnus-summary-high-unread-face ((t (:bold nil))))
;;      (gnus-summary-low-ancient-face ((t (:foreground "SkyBlue"))))
;;      (gnus-summary-low-read-face ((t (:foreground "PaleGreen"))))
;;      (gnus-summary-low-ticked-face ((t (:foreground "pink"))))
;;      (gnus-summary-low-unread-face ((t (nil))))
;;      (gnus-summary-normal-ancient-face ((t (:foreground "SkyBlue"))))
;;      (gnus-summary-normal-read-face ((t (:foreground "PaleGreen"))))
;;      (gnus-summary-normal-ticked-face ((t (:foreground "pink"))))
;;      (gnus-summary-normal-unread-face ((t (nil))))
;;      (gnus-summary-selected-face ((t (:underline t))))
;;      (green ((t (:foreground "green"))))
;;      (gui-button-face ((t (:background "grey75" :foreground "black"))))
;;      (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
;;      (highlight ((t (:background "darkolivegreen"))))
;;      (highline-face ((t (:background "SeaGreen"))))
;;      (holiday-face ((t (:background "DimGray"))))
;;      (info-menu-5 ((t (:underline t))))
;;      (info-node ((t (:underline t :bold t :foreground "DodgerBlue1"))))
;;      (info-xref ((t (:underline t :foreground "DodgerBlue1"))))
;;      (isearch ((t (:background "blue"))))
;;      (isearch-secondary ((t (:foreground "red3"))))
;;      (italic ((t (nil))))
;;      (left-margin ((t (nil))))
;;      (list-mode-item-selected ((t (:background "gray68" :foreground "white"))))
;;      (message-cited-text-face ((t (:bold t :foreground "green"))))
;;      (message-header-cc-face ((t (:bold t :foreground "green4"))))
;;      (message-header-name-face ((t (:bold t :foreground "orange"))))
;;      (message-header-newsgroups-face ((t (:bold t :foreground "violet"))))
;;      (message-header-other-face ((t (:bold t :foreground "chocolate"))))
;;      (message-header-subject-face ((t (:bold t :foreground "yellow"))))
;;      (message-header-to-face ((t (:bold t :foreground "cadetblue"))))
;;      (message-header-xheader-face ((t (:bold t :foreground "light blue"))))
;;      (message-mml-face ((t (:bold t :foreground "Green3"))))
;;      (message-separator-face ((t (:foreground "blue3"))))
;;      (modeline ((t (:background "DarkRed" :foreground "white" :box (:line-width 1 :style released-button)))))
;;      (modeline-buffer-id ((t (:background "DarkRed" :foreground "white"))))
;;      (modeline-mousable ((t (:background "DarkRed" :foreground "white"))))
;;      (modeline-mousable-minor-mode ((t (:background "DarkRed" :foreground "white"))))
;;      (p4-depot-added-face ((t (:foreground "blue"))))
;;      (p4-depot-deleted-face ((t (:foreground "red"))))
;;      (p4-depot-unmapped-face ((t (:foreground "grey30"))))
;;      (p4-diff-change-face ((t (:foreground "dark green"))))
;;      (p4-diff-del-face ((t (:foreground "red"))))
;;      (p4-diff-file-face ((t (:background "gray90"))))
;;      (p4-diff-head-face ((t (:background "gray95"))))
;;      (p4-diff-ins-face ((t (:foreground "blue"))))
;;      (pointer ((t (nil))))
;;      (primary-selection ((t (:background "blue"))))
;;      (red ((t (:foreground "red"))))
;;      (region ((t (:background "blue"))))
;;      (right-margin ((t (nil))))
;;      (secondary-selection ((t (:background "darkslateblue"))))
;;      (show-paren-match-face ((t (:background "Aquamarine" :foreground "SlateBlue"))))
;;      (show-paren-mismatch-face ((t (:background "Red" :foreground "White"))))
;;      (text-cursor ((t (:background "yellow" :foreground "black"))))
;;      (toolbar ((t (nil))))
;;      (underline ((nil (:underline nil))))
;;      (vertical-divider ((t (nil))))
;;      (widget ((t (nil))))
;;      (widget-button-face ((t (:bold t))))
;;      (widget-button-pressed-face ((t (:foreground "red"))))
;;      (widget-documentation-face ((t (:foreground "lime green"))))
;;      (widget-field-face ((t (:background "dim gray"))))
;;      (widget-inactive-face ((t (:foreground "light gray"))))
;;      (widget-single-line-field-face ((t (:background "dim gray"))))
;;      (woman-bold-face ((t (:bold t))))
;;      (woman-italic-face ((t (:foreground "beige"))))
;;      (woman-unknown-face ((t (:foreground "LightSalmon"))))
;;      (yellow ((t (:foreground "yellow"))))
;;      (zmacs-region ((t (:background "snow" :foreground "blue")))))))






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

(defun color-theme-eskim ()
  "Color theme Colorful Obsolescence by Scott Jaderholm, created 2007-01-05."
  (interactive)

  (color-theme-install
   '(color-theme-eskim

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

     ;; eskim 2008-1-26
     (modeline ((t (:background "DarkRed" :foreground "white" :box (:line-width 1 :style released-button)))))
     (modeline-buffer-id ((t (:background "DarkRed" :foreground "white"))))
     (modeline-mousable ((t (:background "DarkRed" :foreground "white"))))
     (modeline-mousable-minor-mode ((t (:background "DarkRed" :foreground "white"))))


;;;        (modeline ((t (:background "#000" :foreground "#bbb" :box (:line-width 1 :style released-button)))))
;;;        (modeline ((t (:background "#000" :foreground "#bbb" :box (:line-width 1 :style released-button)))))
;;;        (mode-line ((t (:background "black"))))
;;;        (mode-line-inactive ((t (:background "#000" :foreground "#444"))))
;;;        (modeline-buffer-id ((t (:foreground "#FFF"))))
;;;        (modeline-mousable ((t (:background "#000" :foreground "#555"))))
;;;        (modeline-mousable-minor-mode ((t (:background "#000" :foreground "#555"))))
;;;        (mode-line-highlight ((t (:foreground "#b9FC6D"))))


       
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
			 
     )
   ;; )


   ;;-----------------------------------------------------------------------------
   ;; Console
   ;;-----------------------------------------------------------------------------
   ;; This will only look good with the colors mentioned in Overview
;;;      (color-theme-install
;;;       '(color-theme-eskim
	
;;;        ((background-color . "#000")
;;; 	(background-mode . dark)
;;; 	(foreground-color . "white"))
;;;        (default ((t (nil))))
;;;       (custom-group-tag ((t (:foreground "white" :weight bold))))
;;;       (font-lock-comment-face ((t (:foreground "blue" :weight bold))))
;;;       (font-lock-keyword-face ((t (:foreground "red" :weight bold))))
;;;       (font-lock-string-face ((t (:foreground "yellow" :weight bold))))
;;;       (font-lock-variable-name-face ((t (:foreground "magenta" :weight bold))))
;;;       (font-lock-constant-face ((t (:foreground "magenta" :weight bold))))
;;;       (font-lock-doc-face ((t (:foreground "cyan"))))
;;;       (isearch ((t (:background "cyan" :foreground "white" :weight bold))))
;;;       (isearch-lazy-highlight ((t (:background "magenta" :foreground "white" ))))
;;;       (highlight ((t (:background "cyan" :foreground "white" :weight bold))))
;;;       (region ((t (:background "magenta"))))
;;;       (lazy-highlight-face ((t (:background "magenta" :foreground "white"))))
;;;       (ido-subdir-face ((t (:foreground "blue" :weight bold))))
;;;       (isearch ((t (:background "cyan" :foreground "white" :weight bold))))
;;;       (isearch-lazy-highlight ((t (:background "magenta" :foreground "white"))))
;;;       (menu ((t (:background "black" :weight bold))))
;;;       (mode-line ((t (:background "black"))))
;;;       (org-date ((t (:foreground "cyan" :underline t :weight bold))))
;;;       (org-level-1 ((t (:foreground "blue"))))
;;;       (org-level-3 ((t (:foreground "blue" :weight bold))))
;;;       (org-level-4 ((t (:foreground "magenta" :weight bold))))
;;;       (org-link ((t (:foreground "white" :weight bold))))
;;;       (org-scheduled-previously ((t (:foreground "green"))))
;;;       (org-scheduled-today ((t (:foreground "green" :weight bold))))
;;;       (org-special-keyword ((t (:foreground "green" :weight bold))))
;;;       (org-table ((t (:foreground "black" :weight bold))))
;;;       (org-tag ((t (:foreground "green" :underline t :weight bold))))
;;;       (org-time-grid ((t (:foreground "black" :weight bold))))
;;;       (org-todo ((t (:foreground "red" :weight bold))))
;;;       (org-upcoming-deadline ((t (:foreground "red"))))
;;;       (show-paren-match-face ((t (:foreground "white" :weight bold))))
;;;       (eshell-prompt-face ((t (:foreground "white" :weight bold))))
;;;       (eshell-ls-archive-face ((t (:foreground "red"))))
;;;       (eshell-ls-directory-face ((t (:foreground "blue" :weight bold))))
;;;       ))

   ))
