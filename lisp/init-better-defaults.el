;; Common Config of Emacs UI
(setq inhibit-startup-screen 1)     ;; Hide welcome message
(setq make-backup-files nil)        ;; Unable making backup file
(setq-default indent-tabs-mode nil) ;; Using spaces instead of tabs when indenting.
(global-linum-mode 1)               ;; enable line numbers globally
(global-hl-line-mode 1)             ;; Highlight current line
(global-auto-revert-mode 1)         ;; Auto revert file
(global-wakatime-mode 1)            ;; Enable wakatime mode
(setq linum-format "%03d ")         ;; format line mode

;; Config of Code style
(setq js-indent-level 2)            ;; Set Javascript intent to 2 (default 4)
(setq ruby-insert-encoding-magic-comment nil)

;; Different Config for GUI and Terminal
(if (display-graphic-p)
    (progn
      (tool-bar-mode 0)                 ;; Unable tool bar
      (scroll-bar-mode 0)               ;; Unable scroll bar
      (set-face-attribute 'default nil :font "Monaco-18" )
      (add-to-list 'default-frame-alist '(fullscreen . maximized))
      (load-theme 'atom-one-dark 1)     ;; Use Atom On Dark Theme
      (exec-path-from-shell-initialize) ;; Set $PATH from shell
      )
  (progn
    (menu-bar-mode 0)                   ;; Unable menu bar
    (load-theme 'material 1)            ;; Use material-theme
    ))

(provide 'init-better-defaults)
