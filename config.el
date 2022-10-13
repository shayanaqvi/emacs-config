;; FONTS
(setq doom-font (font-spec :family "IBM Plex Mono" :size 17)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 16))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

; DEFAULT THEME
(setq doom-theme 'doom-1337)

;; LINE NUMBERS
(setq display-line-numbers-type 'relative)

;; TRANSPARENCY
(set-frame-parameter (selected-frame) 'alpha '(99 . 99))
(add-to-list 'default-frame-alist '(alpha . (99 . 99)))

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

;; FOCUS-MODE
;;(add-hook 'text-mode-hook
;;          (lambda ()
;;            (focus-mode 1)))

;; FOCUS-MODE
(global-set-key (kbd "C-c h") 'focus-mode)

;; TOGGLE LINE TRUNCATION
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;; TOGGLE COMPANY-MODE IN CURRENT BUFFER
(global-set-key (kbd "C-c c") 'company-mode)

;; TOGGLE TREEMACS
(global-set-key (kbd "C-c d") 'treemacs)

;; ENLARGEN CURRENT BUFFER
(global-set-key (kbd "C-c f e") 'doom/window-enlargen)

;; MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f f") 'doom/window-maximize-buffer)

;; VERTICALLY MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f v") 'doom/window-maximize-vertically)

;; HORIZONTALLY MAXIMISE CURRENT BUFFER
(global-set-key (kbd "C-c f h") 'doom/window-maximize-horizontally)

;; FLASH CURSOR AT CURRENT POSITION
(global-set-key (kbd "C-c b") 'beacon-blink)

;; TOGGLE RAINBOW-MODE
(global-set-key (kbd "C-c r") 'rainbow-mode)

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
;;;; MENU-BAR-MODE
(add-hook 'after-init-hook 'menu-bar-mode)
;;;; RAINBOW-MODE
(add-hook 'after-init-hook 'rainbow-mode)
;;;; TABS
(add-hook 'after-init-hook 'centaur-tabs-mode)

(beacon-mode 1)

(global-yascroll-bar-mode 1)

(require 'dimmer)
(dimmer-configure-which-key)
(dimmer-configure-helm)
(dimmer-mode t)

(require 'all-the-icons)

(setq doom-modeline-height 35)
(setq doom-modeline-icon t)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-time-icon t)
(setq doom-modeline-time t)
(setq doom-modeline-persp-icon t)
(setq doom-modeline-major-mode-color-icon nil)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-center-content t)
(setq dashboard-items '((recents  . 50)))
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-init-info t)
