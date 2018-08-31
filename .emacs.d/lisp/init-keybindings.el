;; Key setting
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key "\C-h" nil)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "C-c a") 'org-agenda)

;; Key translate
(keyboard-translate ?¥ ?\\)
(keyboard-translate ?\C-h ?\C-?)

(provide 'init-keybindings)
