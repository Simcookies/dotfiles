;;; Configure of Packages
(require 'cl)         ;; Common Lips Extension
(require 'recentf)    ;; Recent File Extension
(require 'package)    ;; Package manager Extension

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(setq package-check-signature nil)

(defvar my/packages '(
                      ;; ------- Essentials ------
                      beacon
                      smex
                      wakatime-mode
                      exec-path-from-shell
                      hungry-delete
                      smartparens
                      multi-term
                      htmlize
                      org-bullets
                      diminish
                      multiple-cursors
                      neotree
                      hl-todo
                      ;; ------ Auto Complete ----
                      yasnippet
                      yasnippet-snippets
                      company
                      ;; --------- Themes --------
                      spacemacs-theme
                      material-theme
                      atom-one-dark-theme
                      ;; --------- Others --------
                      yaml-mode
                      markdown-mode
                      web-mode
                      rainbow-mode
                      plantuml-mode
                      nyan-mode
                      ;; ------- Ruby env --------
                      rubocop
                      robe
                      ;; ------ Python env -------
                      elpy
                      auto-virtualenv
                      ;; ------ Platformio -------
                      platformio-mode
                      ;; -------- auctex ---------
                      auctex
                      ;; ------- ESS for R -------
                      ess
                      ess-R-data-view
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
