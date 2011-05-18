(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-24hr-format t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tramp-syntax (quote url)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; adjust load path
(setq load-path (append '("~/.emacs.d/lisp")
			load-path))

;; recursively add directories to load-path
(require 'my-subdirs)
(add-subdirs-to-load-path "~/.emacs.d/lisp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keymap
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; remap shortcut from just-one-space
(global-set-key (kbd "M-SPC") 'dabbrev-expand)
;; remap 'C-x C-b' to bs-show instead of buffer-list
(global-set-key (kbd "C-x C-b") 'bs-show)
;; use find-file-at-point
(global-set-key (kbd "C-x p") 'find-file-at-point)
;; open eshell buffer
(global-set-key (kbd "M-RET") 'eshell)
;; enable window movement similar to vi
(global-set-key (kbd "M-H") 'windmove-left)
(global-set-key (kbd "M-J") 'windmove-down)
(global-set-key (kbd "M-K") 'windmove-up)
(global-set-key (kbd "M-L") 'windmove-right)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load package specific configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; config file tools
(autoload 'edit-config "config.el" 
  "Creates a new configuration file in
~/.emacs.d/lisp/config. The file will be named '<name>-config.el'
and will provide a symbol called '<name>-config." t)

;; Info
(require 'info-config)

;; CEDET
(require 'cedet-config)

;; Org Mode
(require 'org-config)

;; Eshell Mode
(require 'eshell-config)

;; Superior Lisp Interaction Mode for Emacs
(require 'slime-config)

;; Magit Git frontend
(require 'magit-config)
