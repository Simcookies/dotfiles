;; Set package sites
(require 'package)
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(defvar my/packages '(
                      ;; ------- Essentials ------
                      auto-complete
                      smex
                      wakatime-mode
                      ;; --------- Themes --------
                      material-theme
                      ;; --------- Others --------
                      lua-mode
                      markdown-mode
                      ;; ------- Ruby evn --------
                      web-mode
                      rubocop
                      projectile-rails
                      ;; ------ Python evn -------
                      elpy
                      ) "Default packages")
(setq package-selected-packages my/packages)

;; Common Lips Extension
(require 'cl)
(defun my/packages-installed-p ()
  (interactive)
  (loop for pkg in my/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))
(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(ac-config-default)                 ;; Auto-Completion config
;; (smex-initialize)                ;; Smex need initialize on first time

(setq auto-mode-alist
      (append
       '(("\\.erb\\'" . web-mode))
       auto-mode-alist))
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(add-hook 'ruby-mode-hook 'rubocop-mode)
(add-hook 'python-mode-hook 'elpy-mode)

(provide 'init-packages)
