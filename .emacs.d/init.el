(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-better-defaults)
(require 'init-elisp)
(require 'init-org)
(require 'init-ruby)
(require 'init-python)
(require 'init-frontend)
(require 'init-keybindings)
(require 'init-terminal)
(require 'init-tex)
(require 'init-helper)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)
