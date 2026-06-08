;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; (package-refresh-contents)

;; Disable startup shenanigans
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)

;; Disable bloat GUI
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; =================
;; Look and feel
;; =================
(add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font-14"))
(load-theme 'catppuccin :no-confirm)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers 'relative)
(setq dired-listing-switches "-al --group-directories-first")

;; =================
;; Editing
;; =================
(electric-pair-mode 1)
(global-whitespace-mode 1)
(setq-default whitespace-style
    '(face spaces empty tabs trailing space-mark tab-mark))

;; =============================================================================
;; External
;; =============================================================================
;; Evil mode
(require 'evil)
(evil-mode 1)
;; Jai mode
(load "~/.config/emacs/jai-mode/jai-mode.el")
(require 'magit)



;; Memory
;; C-h f - describe function
