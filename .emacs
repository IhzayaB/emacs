
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete thes(toggle-full-screen)e explanatory comments.
(package-initialize)

(add-to-list 'package-archives
         '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" default)))
 '(package-selected-packages (quote (zenburn-theme easy-kill ## elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(elpy-enable)
;; (package-initialize) should already exist at the top of the init
;; file on Debian-derived systems, thus (elpy-enable) should be all
;; that is required.

;; Neotree
(add-to-list 'load-path "/home/zaya/emacs_packages/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Undo
(global-set-key (kbd "C-z") 'undo)

;;Zoom
(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)

;;Theme
(load-theme 'zenburn t)

;; Recent mode
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'dashboard)
(dashboard-setup-startup-hook)

(setq dashboard-items '((recents  . 5)))

(setq dashboard-startup-banner [])
;;Fullscreen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
