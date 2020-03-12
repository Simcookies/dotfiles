;;; Configuration for Python-mode
;; Necessary python lib: Jedi, Rope Autopep8, Yapf, Black, flake8
(add-hook 'python-mode-hook
          (lambda ()
            (setq
             python-indent-offset 4
             python-indent 4
             python-shell-interpreter "ipython"
             python-shell-interpreter-args "-i --simple-prompt")
            (setq elpy-rpc-virtualenv-path (quote current))
            (pyvenv-activate (concat (getenv "PYENV_ROOT") "/versions/base"))
            (elpy-enable)))

(provide 'init-python)
