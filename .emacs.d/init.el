(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-better-defaults)
(require 'init-helper)
(require 'init-prog-mode)
(require 'init-elisp)
(require 'init-org)
(require 'init-ruby)
(require 'init-python)
;; (require 'init-c-cpp)
(require 'init-rlang)
(require 'init-frontend)
(require 'init-terminal)
(require 'init-tex)
(require 'init-keybindings)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(if (file-exists-p custom-file) nil
  (write-region "" nil custom-file))
(load-file custom-file)
