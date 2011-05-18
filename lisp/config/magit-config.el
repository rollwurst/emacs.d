(provide 'magit-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; magit - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; configure magit only if it's available
(when (require 'magit nil t)
 
  ;; redefine the global VC-Dir shortcut to use magit-status instead
  (global-set-key (kbd "C-x v d") 'magit-status))

