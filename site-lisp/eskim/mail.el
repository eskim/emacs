;; ;;----------------------------------------------------------------------
;; ;; GNU SMTP
;; ;;----------------------------------------------------------------------
;; ;; ;; we substitute sendmail with msmtp
;; ;; (setq sendmail-program "~/bin/msmtp.exe")
;; ;; ;;need to tell msmtp which account we're using
;; ;; (setq message-sendmail-extra-arguments '("-a" "eunsub"))
;; ;; ;; you might want to set the following too
;; ;; (setq mail-host-address "gmail.com")
;; ;; (setq user-full-name "±èÀº¼·")
;; ;; (setq user-mail-address "eunsub@gmail.com")

;; ;; Configure outbound mail (SMTP)
;; ;; (setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 "eunsub@gmail.com" "cakej0a0"))
;; ;;       smtpmail-smtp-server "smtp.gmail.com"
;; ;;       smtpmail-debug-info t
;; ;;       smtpmail-default-smtp-server "smtp.gmail.com"
;; ;;       send-mail-function 'smtpmail-send-it
;; ;;       message-send-mail-function 'smtpmail-send-it
;; ;;       smtpmail-smtp-service 587)
;; ;;       smtpmail-starttls-credentials '(("smtp.gmail.com"
;; ;;                                    587
;; ;;                                    "eunsub@gmail.com"
;; ;;                                    "cakej0a0")))

