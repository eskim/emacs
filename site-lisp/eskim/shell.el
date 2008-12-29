;; ----------------------------------------------------------------------
;; shell / eshell
;; ----------------------------------------------------------------------
(setq eshell-cp-interactive-query t
      eshell-ln-interactive-query t
      eshell-mv-interactive-query t
      eshell-rm-interactive-query t
      eshell-mv-overwrite-files nil)

(add-hook 'eshell-mode-hook
          '(lambda ()
             (define-key eshell-mode-map [up] 'previous-line)
             (define-key eshell-mode-map [down] 'next-line)
             (eldoc-mode)
             (defadvice eldoc-fnsym-in-current-sexp (around eldoc-fnsym-in-current-sexp-or-command activate)
               ad-do-it
               (if (and (not ad-return-value)
                        (eq major-mode 'eshell-mode))
                   (save-excursion
                     (goto-char eshell-last-output-end)
                     (setq ad-return-value (eldoc-current-symbol)))))))

(defun eshell/op (FILE)
  "Invoke (w32-shell-execute \"Open\" FILE) and substitute slashes for backslashes"
  (w32-shell-execute "Open" (substitute ?\\ ?/ (expand-file-name FILE))))

(defun eshell/ff (&rest files)
  "Invoke `find-file' on all files."
  (if (listp (car files))
      (progn
        (let ((files2 (car files)))
          (while files2
            (find-file (pop files2)))))
    (while files
      (find-file (pop files)))))

(eval-after-load "em-ls"
  '(progn
     (defun ted-eshell-ls-find-file-at-point (point)
       "RET on Eshell's `ls' output to open files."
       (interactive "d")
       (find-file (buffer-substring-no-properties
                   (previous-single-property-change point 'help-echo)
                   (next-single-property-change point 'help-echo))))

     (defun pat-eshell-ls-find-file-at-mouse-click (event)
       "Middle click on Eshell's `ls' output to open files."
       (interactive "e")
       (ted-eshell-ls-find-file-at-point (posn-point (event-end event))))

     (let ((map (make-sparse-keymap)))
       (define-key map (kbd "RET")      'ted-eshell-ls-find-file-at-point)
       (define-key map (kbd "<return>") 'ted-eshell-ls-find-file-at-point)
       (define-key map (kbd "<mouse-2>") 'pat-eshell-ls-find-file-at-mouse-click)
       (defvar ted-eshell-ls-keymap map))

     (defadvice eshell-ls-decorated-name (after ted-electrify-ls activate)
       "Eshell's `ls' now lets you click or RET on file names to open them."
       (add-text-properties 0 (length ad-return-value)
                            (list 'help-echo "RET, mouse-2: visit this file"
                                  'mouse-face 'highlight
                                  'keymap ted-eshell-ls-keymap)
                            ad-return-value)
       ad-return-value)))

(defun eshell/ec (&rest args)
  "Use `compile' to do background makes."
  (if (eshell-interactive-output-p)
      (let ((compilation-process-setup-function
             (list 'lambda nil
                   (list 'setq 'process-environment
                         (list 'quote (eshell-copy-environment))))))
        (compile (eshell-flatten-and-stringify args))
        (pop-to-buffer compilation-last-buffer))
    (throw 'eshell-replace-command
           (let ((l (eshell-stringify-list (eshell-flatten-list args))))
             (eshell-parse-command (car l) (cdr l))))))

(put 'eshell/ec 'eshell-no-numeric-conversions t)
