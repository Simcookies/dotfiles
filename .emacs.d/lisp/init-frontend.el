(setq js-indent-level 2)            ;; Set Javascript intent to 2 (default 4)
(setq auto-mode-alist
      (append
       '(("\\.erb\\'" . web-mode)
	 ("\\.html\\'" . web-mode))
       auto-mode-alist))            ;; Set Web-mode for necessary case

(rainbow-mode 1)

(provide 'init-frontend)
;;; init-frontend.el ends here
