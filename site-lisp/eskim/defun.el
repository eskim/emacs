(defun eskim-ido-find-project ()
  (interactive)
  (find-file
   (concat "~/workspace/" (ido-completing-read "Project: "
                           (directory-files "~/workspace/" nil "^[^.]")))))


;; borrowed from 
;; http://github.com/defunkt/emacs/tree/master/defunkt/defuns.el
(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el"))
         (eskim (concat "~/.emacs.d/eskim/" file)))
    (cond
     ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
     ((file-exists-p suffix) (require library)))
    (when (file-exists-p (concat eskim ".el"))
      (load eskim))))


;;----------------------------------------------------------------------
;; SQL mode
;;----------------------------------------------------------------------
(defun es:sql-product-interactive (server database user password &optional product)
  (setq product (or product sql-product))
  (when (sql-product-feature :sqli-connect product)
    (if (comint-check-proc "*SQL*")
	(pop-to-buffer "*SQL*")
      ;; Get credentials.
      ;; (apply 'sql-get-login (sql-product-feature :sqli-login product))
      ;; Connect to database.
      (setq sql-server server)
      (setq sql-database database)
      (setq sql-user user)
      (setq sql-password password)
      
      (message "Login...")
      (funcall (sql-product-feature :sqli-connect product))
      ;; Set SQLi mode.
      (setq sql-interactive-product product)
      (setq sql-buffer (current-buffer))
      (sql-interactive-mode)
      ;; All done.
      (message "Login...done")
      (pop-to-buffer sql-buffer))))


(defun es:db-m2 ()
  (interactive)
  (custom-set-variables
   '(column-number-mode t)
   '(show-paren-mode t)
   '(sql-electric-stuff (quote semicolon))
   '(sql-mysql-options nil)
   '(sql-product (quote mysql))
   '(transient-mark-mode t))
  (es:sql-product-interactive "" "" "" "" 'mysql)
  (sql-send-string "set names utf8;"))



;;----------------------------------------------------------------------
;; custom functions
;;----------------------------------------------------------------------
(defun open-shell-pane ()
  (interactive)
  (split-window-vertically -10)
  (other-window 1)
  (shell))

(defun mark-line (arg)
  (interactive "p")
  (beginning-of-line nil)
  (set-mark-command nil)
  (end-of-line nil))

(defun move-region-up (arg)
  (interactive "p")
  (kill-region (region-beginning) (region-end))
  (unwind-protect
      (previous-line arg)
    (yank)))

(defun move-region-down (arg)
  (interactive "p")
  (kill-region (region-beginning) (region-end))
  (unwind-protect
      (next-line arg)
    (yank)))

(defun toggle-mark ()
  (interactive)
  (if mark-active
      (deactivate-mark)
    (progn
      (exchange-point-and-mark)
      (exchange-point-and-mark))))

(defun comment-line ()
  (interactive)
  (if (= (line-beginning-position) (line-end-position))
      (next-line 1)
    (progn
      (back-to-indentation)
      (set-mark-command nil)
      (end-of-line nil)
      (comment-dwim nil)
      (back-to-indentation)
      (next-line 1))))

(defun align-html-attributes ()
  ;; courtesy of John Wiegley!
  (interactive)
  (save-excursion
    (goto-char (line-beginning-position))
    (search-forward "<")
    (re-search-forward "\\s-+")
    (let ((col (current-column))
	  (end (save-excursion
		 ;;(re-search-forward "\\s-*>")
		 (search-forward ">")
		 (point-marker))))
      (while (re-search-forward "\\s-+" end t)
	(delete-region (match-beginning 0) (match-end 0))
	(insert ?\n)
	(insert (make-string col ? ))))))

(defun indent-current-region-by (num-spaces)
  (indent-rigidly (region-beginning) (region-end) num-spaces))

(defun indent-current-region ()
  (interactive)
  (indent-current-region-by tab-width))

(defun dedent-current-region ()
  (interactive)
  (indent-current-region-by (- tab-width)))

(defun insert-indentation ()
  (interactive)
  (search-forward " ")
  (delete-horizontal-space)
  (newline-and-indent))

(defun indent-after-char (arg char)
  (interactive "p\ncIndent after char: ")
  (if (char-table-p translation-table-for-input)
      (setq char (or (aref translation-table-for-input char) char)))
  (search-forward (char-to-string char) nil nil arg)
  (insert-indentation))

(defun follow-mode-quit ()
  (interactive)
  (delete-other-windows)
  (turn-off-follow-mode))

(defun rotate-windows ()
  (interactive)
  (let ((this-buffer (buffer-name)))
    (other-window -1)
    (let ((that-buffer (buffer-name)))
      (switch-to-buffer this-buffer)
      (other-window 1)
      (switch-to-buffer that-buffer)
      (other-window -1))))

(defun other-window-reverse ()
  (interactive)
  (other-window -1))

(defun switch-to-other-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun last-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer)))

(defun delete-whitespace-forward ()
  (interactive)
  (delete-region
   (point)
   (progn
     (skip-chars-forward " \t")
     (point))))

(defun duplicate-line ()
  (interactive)
  (let ((col (current-column)))
    (beginning-of-line 1)
    (kill-line 1)
    (yank)
    (yank)
    (previous-line 1)
    (move-to-column col)))

(defun start-or-end-kbd-macro ()
  "Start defining a keyboard macro, or stop if we're already defining."
  (interactive)
  (if defining-kbd-macro
      (end-kbd-macro)
    (start-kbd-macro nil)))

(defun toggle-show-trailing-whitespace ()
  "Toggles the highlighting of trailing whitespace."
  (interactive)
  (set-variable 'show-trailing-whitespace (not show-trailing-whitespace)))

(defun toggle-text-mode-fontified ()
  "Toggles text-mode while preserving fontification."
  (interactive)
  (if (eq major-mode 'text-mode)
      (if (boundp 'last-major-mode)
	  (funcall last-major-mode))
    (flet ((font-lock-change-mode () ()))
      (setq last-major-mode major-mode)
      (text-mode))))

(defun zap-up-to-char (arg char)
  "Kill up to, but not including ARGth occurrence of CHAR.
 Case is ignored if `case-fold-search' is non-nil in the current buffer.
 Goes backward if ARG is negative; error if CHAR not found.
 Ignores CHAR at point."
  (interactive "p\ncZap up to char: ")
  (let ((direction (if (>= arg 0) 1 -1)))
    (kill-region (point)
		 (progn
		   (forward-char direction)
		   (unwind-protect
		       (search-forward (char-to-string char) nil nil arg)
		     (backward-char direction))
		   (point)))))
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(defun slick-copy ()
  (interactive)
  "Copy the current line if region is inactive. Otherwise it behaves just like kill-ring-save"
  (condition-case VAR (progn (mark) (kill-ring-save (region-beginning) (region-end)))
    ('mark-inactive
     (kill-ring-save (line-beginning-position) (line-beginning-position 2))
     (message "copy line"))))

(defcustom slick-save-to-kill-ring t
  "Specify whether slick-cut should use the kill-ring.
 If nil, it will delete the line instead of kill it")

(defun slick-cut (toggle-save-to-kill-ring)
  (interactive "P")
  "Cut the current line if region is inactive. Otherwise it behaves just like kill-region.
 If prefix argument is specified, will use delete-region instead (in case you are deleting
 a bunch of junk and you don't want to pollute your kill-ring.)
 Prefix argument will toggle back to kill-region again."
  (condition-case VAR (progn (mark) (kill-region (region-beginning) (region-end)))
    ('mark-inactive
     (if toggle-save-to-kill-ring
	 (setq slick-save-to-kill-ring
	       (if slick-save-to-kill-ring '() t)))
     (if slick-save-to-kill-ring
	 (progn (kill-region (line-beginning-position) (line-beginning-position 2))
		(message "cut line"))
       (progn (delete-region (line-beginning-position) (line-beginning-position 2))
	      (message "delete line"))))))


(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      ;; Tell the command loop not to deactivate the mark
      ;; for transient mark mode
      (setq deactivate-mark nil))))

(defun shift-right ()
  (interactive)
  (shift-region 1))

(defun shift-left ()
  (interactive)
  (shift-region -1))











