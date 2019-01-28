(add-hook 'ruby-mode-hook 'robe-mode)
(setq ruby-insert-encoding-magic-comment nil)
(eval-after-load 'company
  '(push 'company-robe company-backends))

(provide 'init-ruby)
