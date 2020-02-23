;;; Configuration for R mode
(add-hook 'ess-mode-hook
          (lambda ()
            (setq comint-prompt-read-only t)                  ;; Promot Read Only
            (setq ess-startup-directory "~/workspace/rlang/") ;; Set default startup directory
            (setq ess-ask-for-ess-directory nil)              ;; Do not ask for ESS directory
            (setq ess-tab-complete-in-script t)               ;; Use tab to autocomplete
            (setq ess-indent-level 2)                         ;; Set indent of 2
            ))
(provide 'init-rlang)
