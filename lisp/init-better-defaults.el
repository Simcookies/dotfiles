;; Config of Emacs UI
(setq inhibit-startup-screen 1)     ;; Hide welcome message
(setq make-backup-files nil)        ;; Unable making backup file
(setq-default indent-tabs-mode nil) ;; Using spaces instead of tabs when indenting.
(load-theme 'material 1)            ;; Use material-theme
(menu-bar-mode 0)                   ;; Unable menu bar
(global-linum-mode 1)               ;; enable line numbers globally
(global-hl-line-mode 1)             ;; Highlight current line
(global-auto-revert-mode 1)         ;; Auto revert file
(global-wakatime-mode 1)            ;; Enable wakatime mode
(setq linum-format "%03d ")         ;; format line mode

;; Config of Code style
(setq js-indent-level 2)            ;; Set Javascript intent to 2 (default 4)
(setq ruby-insert-encoding-magic-comment nil)

(provide 'init-better-defaults)
