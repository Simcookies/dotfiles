(setq js-indent-level 2)            ;; Set Javascript intent to 2 (default 4)
(setq auto-mode-alist
      (append
       '(("\\.erb\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.tpl\\'" . web-mode))
       auto-mode-alist))            ;; Set Web-mode for necessary case

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)))

(provide 'init-frontend)
;;; init-frontend.el ends here
