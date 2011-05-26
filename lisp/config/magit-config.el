(provide 'magit-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; magit - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; configure magit only if it's available
(when (require 'magit nil t)
  
  ;; do a 'git commit --all' when nothing is staged.
  (setq magit-commit-all-when-nothing-staged t)
  ;; redefine the global VC-Dir shortcut to use magit-status instead
  (global-set-key (kbd "C-x v d") 'magit-status))

