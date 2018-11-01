(add-hook 'ruby-mode-hook 'rubocop-mode)
(add-hook 'ruby-mode-hook 'ruby-test-mode)
(setq ruby-insert-encoding-magic-comment nil)

(provide 'init-ruby)
