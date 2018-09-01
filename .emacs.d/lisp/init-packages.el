;;; Configure of Packages
(require 'cl)         ;; Common Lips Extension
(require 'recentf)    ;; Recent File Extension
(require 'package)    ;; Package manager Extension

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(defvar my/packages '(
                      ;; ------- Essentials ------
                      auto-complete
                      smex
                      wakatime-mode
                      exec-path-from-shell
		      hungry-delete
		      smartparens
		      multi-term
                      htmlize
                      ;; --------- Themes --------
                      material-theme
                      atom-one-dark-theme
                      ;; --------- Others --------
                      lua-mode
                      markdown-mode
		      web-mode
                      ;; ------- Ruby env --------
                      rubocop
                      ;; ------ Python env -------
                      elpy
                      ;; ------ Platformio -------
                      platformio-mode
		      ;; -------- auctex ---------
		      auctex
                      ) "Default packages")
(setq package-selected-packages my/packages)

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

(provide 'init-packages)
