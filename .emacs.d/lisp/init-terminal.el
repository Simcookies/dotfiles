(setq multi-term-program-switches "--login")
(add-hook 'term-mode-hook
          (lambda ()
            (linum-mode 0)
            (beacon-mode 0)
            (exec-path-from-shell-initialize) ;; Set $PATH from shell
            ))

(provide 'init-terminal)
;;; init-terminal.el ends here
