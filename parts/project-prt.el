(use-package projectile
  :diminish projectile
  :config
    (setq projectile-completion-system 'helm)
    (setq projectile-indexing-method 'alien)
    (add-to-list 'projectile-globally-ignored-files "node-modules")
    (add-hook 'prog-mode-hook 'projectile-mode))

(use-package helm-projectile
  :config
    (helm-projectile-on)
  :bind (("M-p" . helm-projectile)))

(provide 'project-prt)
