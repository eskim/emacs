(require 'json)
(require 'url)
(require 'url-http)

;;
;; Customizable Variables
;;

(defconst pweet-mode-version "0.1.0"
  "The version of this `pweet-mode'.")

(defgroup pweet nil
  "A pweet mode."
  :group 'tools)

(defcustom pweet-debug-mode nil
  "Whether to run in debug mode or not. Logs to `*Messages*'."
  :type 'boolean
  :group 'pweet)

(defcustom pweet-server-host "app.esfoo.com"
  "Pweet server host"
  :type 'string
  :group 'pweet)

(defcustom pweet-server-port 80
  "Pweet server port"
  :type 'integer
  :group 'pweet)


(defcustom pweet-auth-username "eskim"
  "Pweet basic auth username"
  :type 'string
  :group 'pweet)

(defcustom pweet-auth-password ""
  "Pweet basic auth password"
  :type 'string
  :group 'pweet)


(defconst pweet-base-path "/pweets.json")

(defconst pweet-base-url
  (format "http://%s:%d%s" pweet-server-host pweet-server-port pweet-base-path))


(defconst pweet-request-headers
  '(("Accept" . "application.json")))

(defvar pweet-post-buffer-name "*pweet-post*"
  "Buffer name for composing pweet message.")


(defvar pweet-pre-post-window-configuration nil)


; from https://github.com/defunkt/gist.el/blob/master/gist.el
(defvar pweet-supported-modes-alist '((action-script-mode . "as")
                                     (c-mode . "c")
                                     (c++-mode . "cpp")
                                     (clojure-mode . "clj")
                                     (common-lisp-mode . "lisp")
                                     (css-mode . "css")
                                     (diff-mode . "diff")
                                     (emacs-lisp-mode . "lisp")
                                     (erlang-mode . "erl")
                                     (haskell-mode . "hs")
                                     (html-mode . "html")
                                     (io-mode . "io")
                                     (java-mode . "java")
                                     (javascript-mode . "js")
                                     (jde-mode . "java")
                                     (js2-mode . "js")
                                     (lua-mode . "lua")
                                     (ocaml-mode . "ml")
                                     (objective-c-mode . "m")
                                     (perl-mode . "pl")
                                     (php-mode . "php")
                                     (python-mode . "py")
                                     (ruby-mode . "ruby")
                                     (text-mode . "text")
                                     (scala-mode . "scala")
                                     (sql-mode . "sql")
                                     (scheme-mode . "scm")
                                     (smalltalk-mode . "st")
                                     (sh-mode . "sh")
                                     (tcl-mode . "tcl")
                                     (tex-mode . "tex")
                                     (xml-mode . "xml")))


;;
;; Requests
;;

(defun pweet-request-set-auth ()
  "request pweet set auth"
  (let* ((pweet-server (format "%s:%d" pweet-server-host pweet-server-port))
         (pweet-auth-token (base64-encode-string (concat pweet-auth-username ":" pweet-auth-password)))
         (pweet-auth (list (list pweet-server (cons "Auth Realm" pweet-auth-token)))))
    (set url-basic-auth-storage pweet-auth)))

(defun pweet-request-list ()
  "request pweet list"
  (pweet-request-set-auth)
  (url-retrieve (format "http://%s:%d/%s" pweet-server-host pweet-server-port "pweets.json")
                (lambda (status)
                  (switch-to-buffer (current-buffer)))))


(defun pweet-request-handle-post (err success-msg error-msg)
  "pweet post handle"
  (cond
    ((null err) (message success-msg))
    (t (message "Post HTTP error was: %s\n(_x____}<\n%s" err error-msg)
       (if pweet-debug-mode (message "%s" (buffer-string)))))
  (message err)
  (pp url-http-response-status))
;;   (switch-to-buffer (current-buffer))




(defun pweet-request-start (url)
  "pweet request start"
  (save-window-excursion
    (pweet-request-set-auth)
    (set-buffer (url-retrieve-synchronously url))
      
    (let ((status url-http-response-status)
          (json nil))

      (if pweet-debug-mode
          (message (buffer-string)))

      (if (and (>= status 200) (< status 300))
          (progn
            (goto-char url-http-end-of-headers)
            (setq json (json-read))))

      (kill-buffer (current-buffer))
      (list status json))))
      
      
      
                  

(defun pweet-request-handle-json (err)
  "pweet response json handler"
  (message err)
  (goto-char url-http-end-of-headers)
  (pp (json-read)))
    
;;   (switch-to-buffer (current-buffer))


(defun pweet-request-post (body &optional quote-list)
  "reqeust pweet post"
  (let* ((url-request-method "POST")
         (utf8body (encode-coding-string body 'utf-8))
         (url-request-data (concat "pweet[body]=" utf8body))
         (url-request-headers pweet-request-headers))
    (if quote
        (let* ((quote (second quote-list))
               (lang (car quote-list))
               (utf8quote (encode-coding-string quote 'utf-8)))
          (setq url-request-data
                (concat url-request-data
                        (format "&pweet[quote]=%s&pweet[quote_lang]=%s" quote lang)))))

    (pweet-request-start pweet-base-url)))

;; (defun pweet-request-post-test (body)
;;   "reqeust pweet post"
;;   (let* ((url-request-method "POST")
;;          (utf8body (encode-coding-string body 'utf-8))
;;          (url-request-data (concat "pweet[body]=" utf8body))
;;          (url-request-headers pweet-request-headers))
;;     (pweet-request-set-auth)
;;     (url-retrieve pweet-base-url 'pweet-request-handle-json)))
  




;;
;; UI
;;
(defun pweet-post-with-region (begin end)
  (interactive "r")
  (let ((lang (or (cdr (assoc major-mode pweet-supported-modes-alist))
                  "text")))
    (pweet-pop-to-post (buffer-substring begin end) lang)))

(defun pweet-post ()
  "start post pweet"
  (interactive)
  (condition-case nil
      (pweet-post-with-region (mark) (point))
    (mark-inactive (pweet-pop-to-post))))
  

(defun pweet-pop-to-post (&optional quote lang)
  (let ((buf (get-buffer-create pweet-post-buffer-name)))
    (setq pweet-pre-post-window-configuration
          (current-window-configuration))
    (pop-to-buffer buf)
    (erase-buffer)
    (if quote
        (insert (format "\n--- quote (%s) ---\n%s" lang quote)))
    (goto-char (point-min))
    (pweet-post-mode)
    (message "Type C-c C-c to post (C-c C-k to cancel).")))


(defun pweet-get-remove-quote ()
  (save-excursion
    (goto-char (point-min))
    (let ((result nil)
          (quote-boundary "--- quote *(\\(.+\\)) ---"))
      (if (search-forward-regexp (format "^%s$" quote-boundary) nil t)
          (progn
            (goto-char (match-beginning 0))
            (forward-line)
            (setq result (list
                          (buffer-substring (match-beginning 1) (match-end 1))
                          (buffer-substring (point) (point-max))))
            (delete-region (match-beginning 0) (point-max))))
      result)))


(defun pweet-post-commit ()
  "post pweet"
  (interactive)
  (let* ((quote (pweet-get-remove-quote))
         (body (replace-regexp-in-string "\n+$" "" (buffer-string)))
         (result (pweet-request-post body quote))
         (json (second result)))
    
    (if (equal (car result) 201)
        (progn
          (erase-buffer)
          (bury-buffer)
          (when pweet-pre-post-window-configuration
            (set-window-configuration pweet-pre-post-window-configuration)
            (setq pweet-pre-post-window-configuration nil))
          (message "Posted : %s" (cdr (assoc '_id json))))
      (message "Failed : %d" (car result)))))
    




;;
;; Mode
;;
(defvar pweet-post-mode-hook nil
  "Hook run by `pweet-mode-mode'.")

(defvar pweet-post-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c C-c") 'pweet-post-commit)
    map))


(define-derived-mode pweet-post-mode text-mode "pweet-post-mode"
  "Major mode for posting pweet...")
