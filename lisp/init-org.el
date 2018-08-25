(require 'ox-md)                          ;; Enable export to Markdown
(require 'ox-beamer)                      ;; Enable export to beamer (slide)

(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-src-fontify-natively t)

(setq org-tag-alist '(("@work" . ?w)
		      ("@home" . ?h)
		      ("@school" . ?s)))

;; Set default Org Agenda directory.
(setq org-agenda-files (list "~/org/work.org"
			     "~/org/school.org"
			     "~/org/home.org"))

(provide 'init-org)
;;; init-org.el ends here
