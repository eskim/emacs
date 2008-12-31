;;----------------------------------------------------------------------
;; color-theme
;;----------------------------------------------------------------------
(require 'color-theme)
(when (fboundp 'color-theme-initialize)
  (color-theme-initialize))
(setq color-theme-is-global t)

(load-file "~/.site-lisp/vendor/color-theme-obsolescence.el")
(color-theme-colorful-obsolescence)

(setq default-frame-alist '((font . "-apple-dejavu sans mono-medium-r-normal--12-120-72-72-m-120-iso10646-1")))


;;----------------------------------------------------------------------
;; font settings
;;----------------------------------------------------------------------

;; Set fonts up on MS Windows
;; (if mswindows-p
;;     (progn
;;       ;; Show as much as we can using fonts bundled with IE5
;;       (setq w32-standard-fontset-spec
;;             "-*-Courier New-normal-r-*-*-*-100-*-*-c-*-fontset-courier,
;;    ascii:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-1,
;;    latin-iso8859-1:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-1,
;;    latin-iso8859-2:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-2,
;;    latin-iso8859-3:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-3,
;;    latin-iso8859-4:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-4,
;;    latin-iso8859-7:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-7,
;;    latin-iso8859-9:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-9,
;;    cyrillic-iso8859-5:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-5,
;;    greek-iso8859-7:-*-Courier New-normal-r-*-*-*-100-*-*-c-*-iso8859-7,
;;    hebrew-iso8859-8:-*-Rod-normal-r-*-*-*-100-*-*-c-*-iso8859-8,
;;    ipa:-*-Lucida Sans Unicode-normal-r-*-*-*-100-*-*-c-*-muleipa*-*,
;;    thai-tis620:-*-Tahoma-normal-r-*-*-*-100-*-*-c-*-tis620-*,
;;    latin-jisx0201:-*-MS Gothic-normal-r-*-*-*-100-*-*-c-*-jisx0208-sjis,
;;    katakana-jisx0201:-*-MS Gothic-normal-r-*-*-*-100-*-*-c-*-jisx0208-sjis,
;;    japanese-jisx0208:-*-MS Gothic-normal-r-*-*-*-100-*-*-c-*-jisx0208-sjis,
;;    japanese-jisx0208-1978:-*-MS Gothic-normal-r-*-*-*-100-*-*-c-*-jisx0208-sjis,
;;    japanese-jisx0212:-*-MS Gothic-normal-r-*-*-*-100-*-*-c-*-jisx0212-sjis,
;;    korean-ksc5601:-*-Gulim-normal-r-*-*-*-100-*-*-c-*-ksc5601-*,
;;    chinese-gb2312:-*-MS Song-normal-r-*-*-*-100-*-*-c-*-gb2312-*,
;;    chinese-big5-1:-*-MingLiU-normal-r-*-*-*-100-*-*-c-*-big5-*,
;;    chinese-big5-2:-*-MingLiU-normal-r-*-*-*-100-*-*-c-*-big5-*")

;;       (setq w32-enable-italics t)
;;       (create-fontset-from-fontset-spec w32-standard-fontset-spec t)

;;       (setq default-frame-alist '((font . "fontset-courier")))

;;       (setq initial-frame-alist default-frame-alist)))

;; (if mswindows-p
;;     (progn
;;       (create-fontset-from-fontset-spec "-*-Bitstream Vera Sans Mono-*-*-*-*-12-*-*-*-*-*-fontset-term16,
;; ascii:-*-Bitstream Vera Sans Mono-normal-r-normal-normal-12-*-96-96-c-*-iso8859-1,
;; korean-ksc5601:-*-Bitstream Vera Sans Mono-normal-r-normal-normal-12-*-96-96-c-*-ksc5601.1987*-*")
;;       (set-face-font 'default "fontset-term16")))
;; 
;; (if linux-p
;;     (progn
;;       (set-default-font "Bitstream Vera Sans Mono-9")
;;       (set-fontset-font "fontset-default" '(#x1100 . #xffdc)  '("Malgun Gothic" . "unicode-bmp"))
;;       (set-fontset-font "fontset-default" 'kana '("Meiryo" . "unicode-bmp"))
;;       (set-fontset-font "fontset-default" 'han '("Microsoft YaHei" . "unicode-bmp"))))

;; (if mswindows-p
;;     ((create-fontset-from-fontset-spec "-*-µ¸À½Ã¼-*-*-*-*-13-*-*-*-*-*-fontset-term16,
;; ascii:-*-µ¸¿òÃ¼-normal-r-normal-normal-13-*-96-96-c-*-iso8859-1,
;; korean-ksc5601:-*-µ¸¿òÃ¼-normal-r-normal-normal-13-*-96-96-c-*-ksc5601.1987*-*")
;;      (set-face-font 'default "fontset-term16")))
