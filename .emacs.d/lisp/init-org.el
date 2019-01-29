(add-hook 'org-mode-hook
          (lambda ()
            (require 'ox-md)          ;; Enable export to Markdown
            (require 'ox-beamer)      ;; Enable export to beamer (slide)
            (linum-mode 0)
            (when window-system (org-bullets-mode 1))))

(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-src-fontify-natively t)         ;; Enable syntax highlight
(setq org-src-tab-acts-natively t)        ;; Enable TAB in languange buffer mode
(setq org-html-postamble nil)             ;; Disable including of personal info at footer
(setq org-ellipsis "…")

(setq org-tag-alist '(("@work" . ?w)
                      ("@private" . ?h)
                      ("@others" . ?s)))

(setq org-directory "~/workspace/org/")
(setq org-agenda-files (list "~/workspace/org/work.org"
                             "~/workspace/org/private.org"))

(setq calendar-location-name "Tokyo, Japan")
(setq calendar-latitude 35.68)
(setq calendar-longitude 139.77)

(provide 'init-org)
;;; init-org.el ends here
