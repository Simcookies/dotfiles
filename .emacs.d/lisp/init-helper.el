;; Make shortcut for init.el
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun kill-whole-word ()
  (interactive)
  (backward-word)
  (kill-word 1))

(provide 'init-helper)
