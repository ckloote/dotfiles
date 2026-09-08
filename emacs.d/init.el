(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Automatically install missing packages listed in package-selected-packages
(unless package-archive-contents
  (package-refresh-contents))

(dolist (pkg '(catppuccin-theme go-mode))
  (unless (package-installed-p pkg)
    (package-install pkg)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(catppuccin-theme go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Configure flavor (optional: mocha, macchiato, frappe, latte)
(setq catppuccin-flavor 'mocha)

;; Load the theme safely
(load-theme 'catppuccin t)
