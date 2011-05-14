(provide 'slime-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; slime - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq inferior-lisp-program "/usr/bin/sbcl")
;; (add-to-list 'load-path "_the path of your `slime' directory_")
(require 'slime-autoloads)
(slime-setup)

;; add file extension '*.cl'
(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))