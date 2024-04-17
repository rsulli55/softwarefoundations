(setq inhibit-startup-message t) ; Don't show the splash screen
(setq visible-bell t)  ; Flash when the bell rings

;; Turn off some unneeded UI elements
;; (menu-bar-mode -1)  ; Leave this one on if you're a beginner!
;; (tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;; set the font
(add-to-list 'default-frame-alist
	     '(font . "JetBrainsMonoNerdFont:size=14"))

(package-install 'modus-themes)
(use-package modus-themes
  :init
  (setq modus-themes-to-toggle '(modus-operandi-tinted modus-vivendi-tinted))
  ;; ... setting all variable that need to
  ;; be present before loading the theme ...
  :config
  (load-theme (car modus-themes-to-toggle) t t)
  :bind ("<f5>" . modus-themes-toggle))

;; Load the Modus Vivendi dark theme
;; (load-theme 'modus-vivendi-tinted t)

;; add MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; keep getting errors saying this is not required
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(company-coq proof-general modus-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)
