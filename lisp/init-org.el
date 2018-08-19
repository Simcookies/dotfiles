(require 'org)
(setq org-src-fontify-natively t)

;; Set default Org Agenda directory.
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(provide 'init-org)
;;; init-org.el ends here
