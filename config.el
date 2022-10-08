(setq doom-font (font-spec :family "Cascadia Code" :size 15)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 15))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq doom-theme 'poet-dark-monochrome)

(setq display-line-numbers-type 'relative)

(set-frame-parameter (selected-frame) 'alpha '(95 . 90))
(add-to-list 'default-frame-alist '(alpha . (95 . 90)))

(setq org-directory "~/Documents/org")

(setq org-hide-emphasis-markers t)

(evil-define-key 'normal dired-mode-map
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file
  (kbd "c") 'dired-do-copy
  (kbd "r") 'dired-do-rename)

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

(add-hook 'text-mode-hook
           (lambda ()
            (variable-pitch-mode 1)))

(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

(global-set-key (kbd "C-c c") 'company-mode)

(global-set-key (kbd "C-c d") 'treemacs)

(add-hook 'after-save-hook 'org-babel-tangle)
