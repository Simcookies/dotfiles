;;; Config for Programming mode
(require 'smartparens-config)

(add-hook
 'prog-mode-hook
 (lambda ()
   (setq linum-format "%4d \u2502 ") ;; Format line mode
   (linum-mode 1)                    ;; Enable line numbers
   (hl-line-mode 1)                  ;; Highlight current line
   (wakatime-mode 1)                 ;; Enable wakatime mode
   (company-mode 1)                  ;; Company for auto complete
   (yas-minor-mode 1)                ;; Enable yasnippet mode
   (subword-mode 1)                  ;; Move or delete as subword
   (smartparens-mode 1)              ;; Enable smartparens mode
   (hungry-delete-mode 1)            ;; Delete space/tab together
   (setq show-trailing-whitespace 1) ;; Show unless space
   (hl-todo-mode 1)                  ;; Hight light keywords like TODO, FIXME
   ))

(my/safe-diminish "subword" 'subword-mode)
(my/safe-diminish "beacon" 'beacon-mode)
(my/safe-diminish "smartparens" 'smartparens-mode)
(my/safe-diminish "hungry-delete" 'hungry-delete-mode)
(my/safe-diminish "rainbow-mode" 'rainbow-mode)
(my/safe-diminish "eldoc" 'eldoc-mode)
(my/safe-diminish "company" 'company-mode)
(my/safe-diminish "yasnippet" 'yas-minor-mode)

;; Delete unless whitespace and use TAB globally
(add-hook 'before-save-hook
          (lambda ()
            (delete-trailing-whitespace)
            (untabify (point-min) (point-max))))

;; Auto complete with company's config
(add-hook 'company-mode-hook
          (lambda ()
            (setq company-idle-delay 0)
            (setq company-minimum-prefix-length 1)
            (setq company-selection-wrap-around t)
            ))

;; Bind yas-expand to C-c y
(add-hook 'yas-minor-mode-hook
          (lambda ()
            (define-key yas-minor-mode-map [(tab)] nil)
            (define-key yas-minor-mode-map (kbd "TAB") nil)
            (define-key yas-minor-mode-map (kbd "<tab>") nil)
            (define-key yas-minor-mode-map (kbd "C-c y") 'yas-expand)))

;; Change UI for current highlight
(add-hook 'hl-line-mode-hook
          (lambda ()
            (set-face-foreground 'highlight nil)
            (set-face-underline-p 'highlight nil)))

(provide 'init-prog-mode)
;;; init-prog-mode.el ends here
