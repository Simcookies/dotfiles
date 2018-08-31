(add-hook 'python-mode-hook 'elpy-mode)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(provide 'init-python)
