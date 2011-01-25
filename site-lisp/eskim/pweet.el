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
  (let ((result nil)
        (status nil)
        (json nil))
    (pweet-request-set-auth)
    (save-window-excursion
      (set-buffer (url-retrieve-synchronously url))
      (setq status url-http-response-status)
      (goto-char url-http-end-of-headers)
      (setq json (json-read))
      (setq result (list status json))
      (kill-buffer (current-buffer)))
    result))
      
      
      
                  

(defun pweet-request-handle-json (err)
  "pweet response json handler"
  (message err)
  (goto-char url-http-end-of-headers)
  (pp (json-read)))
    
;;   (switch-to-buffer (current-buffer))


(defun pweet-request-post (body)
  "reqeust pweet post"
  (let* ((url-request-method "POST")
         (utf8body (encode-coding-string body 'utf-8))
         (url-request-data (concat "pweet[body]=" utf8body))
         (url-request-headers pweet-request-headers))
    
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
(defun pweet-post ()
  "start post pweet"
  (interactive)
  (pweet-pop-to-post))
  

(defun pweet-pop-to-post ()
  (let ((buf (get-buffer-create pweet-post-buffer-name)))
    (setq pweet-pre-post-window-configuration
          (current-window-configuration))
    (pop-to-buffer buf)
    (pweet-post-mode)
    (message "Type C-c C-c to post (C-c C-k to cancel).")))


(defun pweet-post-commit ()
  "post pweet"
  (interactive)
  (let* ((body (buffer-string))
         (result (pweet-request-post body))
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
