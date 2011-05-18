(provide 'cedet-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CEDET - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; a DEPRECATED cedet howto can be found at:
;; http://xtalk.msk.su/~ott/en/writings/emacs-devenv/EmacsCedet.html

;; (loads file cedet.el)
;; (require 'cedet)

;; enable project management
;; user defined projects will be declared at the end of the file
(global-ede-mode t)

;; enable semantic support
(semantic-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my projects
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (if (file-exists-p "~/files/programming/isis/README")
;;     (ede-cpp-root-project "isis" :file "~/files/programming/isis/README"
;; 			  :name "ISIS"))