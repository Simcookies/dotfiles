;;; Common Config of Emacs
(setq inhibit-startup-screen 1)     ;; Hide welcome message
(setq make-backup-files nil)        ;; Unable making backup file
(setq-default indent-tabs-mode nil) ;; Using spaces instead of tabs when indenting.
(column-number-mode 1)              ;; Enable column number
(global-auto-revert-mode 1)         ;; Auto revert file
(recentf-mode 1)                    ;; Enable Recent file mode
(ido-mode 1)                        ;; Enable IDO mode
(setq recentf-max-menu-item 10)     ;; Set rencetf mode max items
(set-language-environment "UTF-8")  ;; Set languange encoding
(defalias 'yes-or-no-p 'y-or-n-p)   ;; Change answer of Yes/No to y/n

;;; Different Config for GUI and Terminal
(if (display-graphic-p)
    (progn
      (tool-bar-mode 0)                 ;; Unable tool bar
      (scroll-bar-mode 0)               ;; Unable scroll bar
      (load-theme 'spacemacs-light 1)   ;; Use Spacemacs Dark Theme
      (delete-selection-mode 1)         ;; Enable replace of selecton
      (beacon-mode 1)                   ;; Never get lost
      (setq confirm-kill-emacs 'y-or-n-p)
      (setq ring-bell-function 'ignore) ;; Ignore ring bell
      (global-prettify-symbols-mode 1)  ;; Prettify symbols
      (set-face-attribute 'default nil :height 180)
      (add-to-list 'initial-frame-alist '(fullscreen . maximized))
      (if (or
           (string-equal system-type "darwin")
           (string-equal system-type "gnu/linux"))
          (exec-path-from-shell-initialize)) ;; Set $PATH from shell (Just for MacOS and Linux)
      (nyan-mode 1)                     ;; Enable Nyan
      )
  (progn
    (menu-bar-mode 0)                   ;; Unable menu bar
    (load-theme 'wombat 1)              ;; Use material-theme
    ))

(provide 'init-better-defaults)
;;; init-better-defaults.el ends here
