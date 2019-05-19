;; Show line number
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (linum-mode 1))

;; Show column number
'(column-number-mode 1)

;; Save cursor position accross sessions
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode t))

;; lambda
(global-prettify-symbols-mode t)

;; No tool bar if in window system
(if window-system
    (tool-bar-mode -1))

;; No scroll bar if in window system
(if window-system
    (scroll-bar-mode -1))

;; No menu bar
(menu-bar-mode -1)

;; Show day time in status bar
(display-time-mode 1)

;; Show file size and approximate position
(size-indication-mode 1)

;; Maximize window after start up(only usefuel in window system)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Show extra trailing whitespaces
(setq show-trailing-whitespace t)

;; Show parenthesis pairs
(progn
  (show-paren-mode 1)
  (setq show-paren-style 'mixed) )

;; Insert parenthesis as pairs
(electric-pair-mode 1)
(setq electric-pair-pairs ; Pairs you want to affected all the time.
      '(
        (?\" . ?\")
        (?\{ . ?\})
        (?\( . ?\))
        (?\' . ?\')
        (?\‘ . ?\’)
        (?\“ . ?\”)
        (?\《 . ?\》)
        (?\[ . ?\])
        (?\< . ?\>)
        (?\` . ?\`)
        (?\「 . ?\」)))

;; Delete extra trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Some opetimization for emacs startup
(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

(provide 'init-general)