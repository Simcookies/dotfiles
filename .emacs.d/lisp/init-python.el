(add-hook 'python-mode-hook
          (lambda ()
            (elpy-mode 1)))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(provide 'init-python)
