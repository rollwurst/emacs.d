(provide 'org-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode - configuration file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; enable logging of resolved TODO items
(setq org-log-done 'time)
;; block tasks if there are missing dependencies
(setq org-enforce-todo-dependencies t)
;; remove leading stars
(setq org-hide-leading-stars t)
;; we want about three weeks
(setq org-agenda-ndays 21)

(setq org-agenda-custom-commands
			'(("S" "Things that should be done Someday" tags "CATEGORY=\"Someday\"-LEVEL=1")
				("O" "Next Steps at the Office" tags-todo "-CATEGORY=\"Someday\"+Office")
				("H" "Next Steps at Home" tags-todo "-CATEGORY=\"Someday\"+Home")
				("Pl" "Lipsia" tags-todo "CATEGORY=\"Lipsia\"")
				("Pm" "MVPA" tags-todo "CATEGORY=\"mvpa\"")
				("Pd" "Diplom" tags-todo "CATEGORY=\"diplom\"")))


;; configure Org-remember mode
(org-remember-insinuate)
(define-key global-map "\C-cr" 'org-remember)