(setq multi-term-program-switches "--login")
(add-hook 'term-mode-hook
          (lambda ()
            (linum-mode 0)
            (hl-line-mode 0)))

(provide 'init-terminal)
;;; init-terminal.el ends here
