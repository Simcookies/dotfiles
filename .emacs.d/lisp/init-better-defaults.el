;;; Common Config of Emacs
(setq inhibit-startup-screen 1)     ;; Hide welcome message
(setq make-backup-files nil)        ;; Unable making backup file
(setq-default indent-tabs-mode nil) ;; Using spaces instead of tabs when indenting.
(column-number-mode 1)              ;; Enable column number
(global-auto-revert-mode 1)         ;; Auto revert file
(recentf-mode 1)                    ;; Enable Recent file mode
(setq recentf-max-menu-item 10)     ;; Set rencetf mode max items
(set-language-environment "UTF-8")  ;; Set languange encoding
(defalias 'yes-or-no-p 'y-or-n-p)   ;; Change answer of Yes/No to y/n

;;; Different Config for GUI and Terminal
(if (display-graphic-p)
    (progn
      (tool-bar-mode 0)                 ;; Unable tool bar
      (scroll-bar-mode 0)               ;; Unable scroll bar
      (load-theme 'spacemacs-dark 1)    ;; Use Spacemacs Dark Theme
      (exec-path-from-shell-initialize) ;; Set $PATH from shell
      (delete-selection-mode 1)         ;; Enable replace of selecton
      (beacon-mode 1)                   ;; Never get lost
      (setq ring-bell-function 'ignore) ;; Ignore ring bell
      (global-prettify-symbols-mode 1)  ;; Prettify symbols
      (set-face-attribute 'default nil :font "Monaco-18" )
      (add-to-list 'initial-frame-alist '(fullscreen . maximized))
      )
  (progn
    (menu-bar-mode 0)                   ;; Unable menu bar
    (load-theme 'material 1)            ;; Use material-theme
    ))

;;; Config for Programming mode
(add-hook
 'prog-mode-hook
 (lambda ()
   (setq linum-format "%03d ")      ;; Format line mode
   (linum-mode 1)                   ;; Enable line numbers
   (hl-line-mode 1)                 ;; Highlight current line
   (wakatime-mode 1)                ;; Enable wakatime mode
   (ac-config-default)              ;; Auto-Completion config
   (subword-mode 1)                 ;; Move or delete as subword
   (smartparens-mode 1)             ;; Enable smartparens mode
   (hungry-delete-mode 1)           ;; Delete space/tab together
   (rainbow-mode 1)                 ;; Show color with RGB value
   ))

;;; Diminish some mirror mode
(defmacro my/safe-diminish (file mode &optional new-name)
  "https://github.com/larstvei/dot-emacs/blob/master/init.org"
  `(with-eval-after-load ,file
     (diminish ,mode ,new-name)))

(my/safe-diminish "subword" 'subword-mode)
(my/safe-diminish "beacon" 'beacon-mode)
(my/safe-diminish "smartparens" 'smartparens-mode)
(my/safe-diminish "hungry-delete" 'hungry-delete-mode)
(my/safe-diminish "rainbow-mode" 'rainbow-mode)
(my/safe-diminish "eldoc" 'eldoc-mode)

(provide 'init-better-defaults)
;;; init-better-defaults.el ends here
