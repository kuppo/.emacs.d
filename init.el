;; Define a constant to trick emacs start up time
(defconst emacs-start-time (current-time))

;; Add the emacs lisp snippets for load variant functionalities.
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Initialize package
(require 'init-packages)

;; Basic configurations along with some personal preferences, change it if you
;; don't like it.
;; DO NOT COMMENT IT
(require 'init-general)

;; Initialize smartparens
(require 'init-smartparens)

;; Initialize doom theme, for better looking
(require 'init-doomtheme)

;; Initialize doom modeline, for beautiful mode bar.
(require 'init-doommodeline)

;; Initialize ivy
(require 'init-ivy)

;; Initialize lsp-mod
(require 'init-lsp)

;; Initialize webmode
(require 'init-webmode)

;; Initialize elfeed
(require 'init-elfeed)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (counsel swiper auto-package-update elpy py-autopep8 emmet-mode web-mode company-web yasnippet flycheck use-package)))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; show package load time
(let ((elapsed (float-time (time-subtract (current-time)
                                          emacs-start-time))))
  (message "Loaded packages in %.3fs" elapsed))
