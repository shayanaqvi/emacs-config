(setq doom-font (font-spec :family "Cascadia Code" :size 17)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 16))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq doom-theme 'dark-mint)

(setq display-line-numbers-type 'relative)

(set-frame-parameter (selected-frame) 'alpha '(85 . 80))
(add-to-list 'default-frame-alist '(alpha . (85 . 80)))

(setq org-directory "~/Documents/org")

(setq org-hide-emphasis-markers t)

(add-to-list 'load-path "/home/shayan/.doom.d/")
(load "phscroll.el")
(setq org-startup-truncated nil)
(load "org-phscroll.el")

(evil-define-key 'normal dired-mode-map
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file
  (kbd "c") 'dired-do-copy
  (kbd "r") 'dired-do-rename)

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

;;(add-hook 'text-mode-hook
;;           (lambda ()
;;            (variable-pitch-mode 1)))

(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

(global-set-key (kbd "C-c c") 'company-mode)

(global-set-key (kbd "C-c d") '+neotree/open)

(global-set-key (kbd "C-c f f") 'doom/window-maximize-buffer)

(global-set-key (kbd "C-c f v") 'doom/window-maximize-vertically)

(global-set-key (kbd "C-c f h") 'doom/window-maximize-horizontally)

(global-set-key (kbd "C-c m o") 'magit)

(global-set-key (kbd "C-c m y") 'magit-clone)

(global-set-key (kbd "C-c m l") 'magit-log)

(global-set-key (kbd "C-c m i") 'magit-init)

(global-set-key (kbd "C-c m p o") 'magit-push)

(global-set-key (kbd "C-c m p i") 'magit-pull)

(global-set-key (kbd "C-c m s 1") 'magit-stage)

(global-set-key (kbd "C-c m s 2") 'magit-stage-modified)

(global-set-key (kbd "C-c m c") 'magit-commit)

(add-hook 'after-save-hook 'org-babel-tangle)

(add-hook 'after-init-hook 'neotree)

(add-hook 'after-init-hook 'menu-bar-mode)

(add-hook 'after-init-hook 'doom/reload-font)
