(provide 'slime-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; slime - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq inferior-lisp-program "/usr/bin/sbcl")
;; condition load
(when (require 'slime-autoloads "" t)
  (slime-setup)

  ;; add file extension '*.cl'
  (add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))

  ;; setup slime-repl-mode keymap
  (defun my-slime-repl-mode-keys ()
    (define-key slime-repl-mode-map (kbd "C-c )")
      'slime-close-all-parens-in-sexp))

  (add-hook 'slime-repl-mode-hook 'my-slime-repl-mode-keys)

  ;; setup slime-mode keymap
  (defun my-slime-mode-keys ()
    (define-key slime-mode-map (kbd "C-c C-]") nil) ;remove old entry
    (define-key slime-mode-map (kbd "C-c )")	;setup new entry
      'slime-close-all-parens-in-sexp))

  (add-hook 'slime-mode-hook 'my-slime-mode-keys))
