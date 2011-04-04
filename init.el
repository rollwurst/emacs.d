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
(setq load-path (append '("~/.emacs.d/lisp" 
			  "~/.emacs.d/lisp/config"
			  "~/.emacs.d/lisp/packages")
			load-path))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load package specific configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Info
(require 'info-config)
