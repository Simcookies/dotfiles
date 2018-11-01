;;; Config for Programming mode
(require 'smartparens-config)

(add-hook
 'prog-mode-hook
 (lambda ()
   (setq linum-format "%03d ")       ;; Format line mode
   (linum-mode 1)                    ;; Enable line numbers
   (hl-line-mode 1)                  ;; Highlight current line
   (wakatime-mode 1)                 ;; Enable wakatime mode
   (company-mode 1)                  ;; Company for auto complete
   (yas-minor-mode 1)                ;; Enable yasnippet mode
   (subword-mode 1)                  ;; Move or delete as subword
   (smartparens-mode 1)              ;; Enable smartparens mode
   (hungry-delete-mode 1)            ;; Delete space/tab together
   (rainbow-mode 1)                  ;; Show color with RGB value
   (setq show-trailing-whitespace 1) ;; Show unless space
   ))

(add-hook 'before-save-hook (lambda ()
                              (delete-trailing-whitespace)
                              (untabify (point-min) (point-max))))

(my/safe-diminish "subword" 'subword-mode)
(my/safe-diminish "beacon" 'beacon-mode)
(my/safe-diminish "smartparens" 'smartparens-mode)
(my/safe-diminish "hungry-delete" 'hungry-delete-mode)
(my/safe-diminish "rainbow-mode" 'rainbow-mode)
(my/safe-diminish "eldoc" 'eldoc-mode)
(my/safe-diminish "company" 'company-mode)
(my/safe-diminish "yasnippet" 'yas-minor-mode)

;;; Auto complete with company's config
(add-hook 'company-mode-hook
          (lambda ()
            (setq company-idle-delay 0)
            (setq company-minimum-prefix-length 1)))

(add-hook 'yas-minor-mode-hook
          (lambda ()
            (define-key yas-minor-mode-map [(tab)] nil)
            (define-key yas-minor-mode-map (kbd "TAB") nil)
            (define-key yas-minor-mode-map (kbd "<tab>") nil)
            (define-key yas-minor-mode-map (kbd "C-c y") 'yas-expand)))

(provide 'init-prog-mode)
;;; init-prog-mode.el ends here
