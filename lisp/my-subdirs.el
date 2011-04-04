(defun add-subdirs-to-load-path (dir)
	"Add subdirectories to load path"
	(let ((cdir default-directory))	;backup default dir
		(cd dir)
		;; recursively add subdirs to load-path
		(normal-top-level-add-subdirs-to-load-path)
		(cd cdir)))		;return to default dir

(provide 'my-subdirs)


