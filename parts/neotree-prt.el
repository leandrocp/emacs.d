(use-package neotree
  :config
  (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "M-c") 'neotree-create-node)
              (define-key evil-normal-state-local-map (kbd "M-r") 'neotree-rename-node)
              (define-key evil-normal-state-local-map (kbd "M-d") 'neotree-delete-node)))
  (setq neo-smart-open t)
  (setq neo-window-position 'right)
  (setq neo-window-width 40)
  :bind (
         ("M-n t" . neotree-toggle)
         ("M-n o" . neotree-enter)
         ("M-n f" . neotree-find)
         ))

(provide 'neotree-prt)
