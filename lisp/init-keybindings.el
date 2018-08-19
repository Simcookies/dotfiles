;; Key setting
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f2>") 'open-init-file)
(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" nil)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'init-keybindings)
