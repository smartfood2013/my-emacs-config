(setq user-full-name "M Younus Raza"
      user-mail-address "ymoharaza@gmail.com")

(require 'package)
(package-initialize)

;; Add package sources
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

(load "~/config/emacs/use-package/bind-key" t)
(load "~/config/emacs/use-package/use-package" t)
(require 'use-package)


(add-to-list 'load-path "~/config/emacs/emacs-async")
(add-to-list 'load-path "~/config/emacs/helm")
(require 'helm-config)

(add-to-list 'load-path "~/config/emacs/dash.el")
(add-to-list 'load-path "~/config/emacs/web-beautify")

;; jshint for javascript
;; (add-to-list 'load-path "~/config/emacs/jshint-mode")
;; (require 'flymake-jshint)
;; (add-hook 'js-mode-hook (lambda () (flymake-mode t)))

(add-to-list 'load-path "~/config/emacs/flycheck")
(require 'flycheck)
(add-hook 'js-mode-hook (lambda () (flycheck-mode t)))

(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally
(global-set-key (kbd "M-x") 'helm-M-x)

(require 'web-beautify)
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
    '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))


(add-to-list 'custom-theme-load-path "~/config/emacs/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

;(setq global-linum-mode t)
(setq line-number-mode t)
