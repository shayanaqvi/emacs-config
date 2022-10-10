;;; terminalii-theme.el --- terminalii
;;; Version: 1.0
;;; Commentary:
;;; A theme called terminalii
;;; Code:

(deftheme terminalii "DOCSTRING for terminalii")
  (custom-theme-set-faces 'terminalii
   '(default ((t (:foreground "#ffffff" :background "#000000" ))))
   '(cursor ((t (:background "#9f9f9f" ))))
   '(fringe ((t (:background "#4c4c4c" ))))
   '(mode-line ((t (:foreground "#000000" :background "#00cd00" ))))
   '(region ((t (:background "#4e4e4e" ))))
   '(secondary-selection ((t (:background "#4d4d4d" ))))
   '(font-lock-builtin-face ((t (:foreground "#00d0d0" ))))
   '(font-lock-comment-face ((t (:foreground "#00cc00" ))))
   '(font-lock-function-name-face ((t (:foreground "#ca0000" ))))
   '(font-lock-keyword-face ((t (:foreground "#0081ff" ))))
   '(font-lock-string-face ((t (:foreground "#00cdcd" ))))
   '(font-lock-type-face ((t (:foreground "#d000d0" ))))
   '(font-lock-constant-face ((t (:foreground "#c70000" ))))
   '(font-lock-variable-name-face ((t (:foreground "#cf0000" ))))
   '(minibuffer-prompt ((t (:foreground "#00c900" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'terminalii)

;;; terminalii-theme.el ends here
