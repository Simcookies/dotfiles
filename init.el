(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-helper)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-ruby)
(require 'init-python)
(require 'init-frontend)
(require 'init-keybindings)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
