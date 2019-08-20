(add-hook 'python-mode-hook
          (lambda ()
            (setq
             python-indent-offset 4
             python-indent 4
             python-shell-interpreter "ipython"
             python-shell-interpreter-args "-i --simple-prompt")
            (setq pyenv_root (getenv "PYENV_ROOT"))
            (pyvenv-activate (format "%s/%s" pyenv_root "versions/base"))
            (elpy-mode 1)
            (auto-virtualenv-set-virtualenv)))

(provide 'init-python)
