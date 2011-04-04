(provide 'info-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; additional hooks for info mode configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun update-info-directory-list ()
	"This function adds the missing values of the INFOPATH environment variable 
to the  Info-directory-list variable."
	(dolist (dir (prune-directory-list Info-default-directory-list))
		(if (not (member dir Info-directory-list))
				(setq Info-directory-list (append Info-directory-list (list dir))))))
	

(add-hook 'Info-mode-hook 'update-info-directory-list)

