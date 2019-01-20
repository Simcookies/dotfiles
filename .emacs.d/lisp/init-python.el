(add-hook 'python-mode-hook
          (lambda ()
            (setq
             python-indent-offset 4
             python-indent 4
             python-shell-interpreter "ipython"
             python-shell-interpreter-args "-i --simple-prompt")
            (elpy-mode 1)
            (auto-virtualenv-set-virtualenv)))

(provide 'init-python)
