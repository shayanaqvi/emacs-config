;; FONTS
(setq doom-font (font-spec :family "IBM Plex Mono" :size 17)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 16))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

;; DEFAULT THEME
(setq doom-theme 'doom-xcode)

;; LINE NUMBERS
(setq display-line-numbers-type 'relative)

;; TRANSPARENCY
;;(set-frame-parameter (selected-frame) 'alpha '(85 . 80))
;;(add-to-list 'default-frame-alist '(alpha . (85 . 80)))

;; DEFAULT ORG DIRECTORY
(setq org-directory "~/Documents/org")

;; HIDDEN EMPHASIS MARKERS
(setq org-hide-emphasis-markers t)

;; PHSCROLL
(add-to-list 'load-path "/home/shayan/.doom.d/plugins/")
(load "phscroll.el")
(setq org-startup-truncated nil)
(load "org-phscroll.el")

;; KEYBINDINGS
(evil-define-key 'normal dired-mode-map
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-find-file
  (kbd "c") 'dired-do-copy
  (kbd "r") 'dired-do-rename)

;; ICONS
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; TRASH DIRECTORY
(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

;; USE VARIABLE-PITCH-FONT
;;(add-hook 'text-mode-hook
;;          (lambda ()
;;            (variable-pitch-mode 1)))

;; TOGGLE LINE TRUNCATION
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;; TOGGLE COMPANY-MODE IN CURRENT BUFFER
(global-set-key (kbd "C-c c") 'company-mode)

;; TOGGLE NEOTREE
(global-set-key (kbd "C-c d") 'neotree)

;; MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f f") 'doom/window-maximize-buffer)

;; VERTICALLY MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f v") 'doom/window-maximize-vertically)

;; HORIZONTALLY MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f h") 'doom/window-maximize-horizontally)

;; FLASH CURSOR AT CURRENT POSITION
(global-set-key (kbd "C-c b") 'beacon-blink)

;; MAGIT
;;;; LAUNCH MAGIT
(global-set-key (kbd "C-c m o") 'magit)

;;;; CLONE
(global-set-key (kbd "C-c m y") 'magit-clone)

;;;; LOG
(global-set-key (kbd "C-c m l") 'magit-log)

;;;; INITIALISE
(global-set-key (kbd "C-c m i") 'magit-init)

;;;; PUSH CHANGES
(global-set-key (kbd "C-c m p o") 'magit-push)

;;;; PULL CHANGES
(global-set-key (kbd "C-c m p i") 'magit-pull)

;;;; STAGE
;;;;;; CURRENT FILE
(global-set-key (kbd "C-c m s c") 'magit-stage)

;;;;;; ALL MODIFIED FILES (IN CURRENT DIRECTORY)
(global-set-key (kbd "C-c m s a") 'magit-stage-modified)

;;;; COMMIT CHANGES
(global-set-key (kbd "C-c m c") 'magit-commit)

;; AFTER-SAVE-HOOK
;;;; ORG-BABEL-TANGLE
(add-hook 'after-save-hook 'org-babel-tangle)

;; AFTER-INIT-HOOK (runs after initialisation)
;;;; NEOTREE
(add-hook 'after-init-hook 'neotree)
;;;; MENU-BAR-MODE
(add-hook 'after-init-hook 'menu-bar-mode)
;;;; RAINBOW-MODE
(add-hook 'after-init-hook 'rainbow-mode)

(beacon-mode 1)

(global-yascroll-bar-mode 1)
