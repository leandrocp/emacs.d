(use-package neotree
  :config
  (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "c") 'neotree-create)
              (define-key evil-normal-state-local-map (kbd "r") 'neotree-rename)
              (define-key evil-normal-state-local-map (kbd "d") 'neotree-delete)))
  :bind (
         ("M-n t" . neotree-toggle)
         ("M-n o" . neotree-enter)
         ("M-n f" . neotree-find)
         ))

(provide 'neotree-prt)
