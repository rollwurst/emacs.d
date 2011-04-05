(provide 'config)

(defun edit-config (name)
  "Creates a new configuration file in ~/.emacs.d/lisp/config. The file 
will be named '<name>-config.el' and will provide a symbol called '<name>-config."
  (interactive "sPrefix: ")
  ;; create a new buffer
  (setq fname (concat "~/.emacs.d/lisp/config/" name "-config.el"))
  (setq buffer (find-file fname))
  (if (not (file-exists-p fname)) ;if no file -> load template content
      (progn
	(set-buffer buffer)
	(insert-file-contents "~/.emacs.d/lisp/config/template-config")
	(perform-replace "FNAME" (concat name "-config") nil nil t)
	(perform-replace "NAME" name nil nil t)))
  (end-of-buffer))
