(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master t)

(eval-after-load "tex"
  '(progn
     (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
     (add-to-list 'TeX-command-list '("LaTeX" "%`latex%(mode)%' %t" TeX-run-TeX nil t))))

(provide 'init-tex)
;;; init-tex.el ends here
