(require 'ox-md)                          ;; Enable export to Markdown
(require 'ox-beamer)                      ;; Enable export to beamer (slide)

(add-hook 'org-mode-hook
          (lambda ()
            (linum-mode 0)
            (when window-system (org-bullets-mode 1))))

(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-src-fontify-natively t)         ;; Enable syntax highlight
(setq org-src-tab-acts-natively t)        ;; Enable TAB in languange buffer mode
(setq org-html-postamble nil)             ;; Disable including of personal info at footer
(setq org-ellipsis "…")

(setq org-tag-alist '(("@work" . ?w)
		      ("@home" . ?h)
		      ("@school" . ?s)))

;; Set default Org Agenda directory.
(setq org-agenda-files (list "~/org/work.org"
			     "~/org/school.org"
			     "~/org/home.org"))

(provide 'init-org)
;;; init-org.el ends here
