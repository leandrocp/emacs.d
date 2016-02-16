(use-package projectile
  :diminish projectile-mode
  :config
  (progn
    (setq projectile-keymap-prefix (kbd "C-c p"))
    (setq projectile-completion-system 'default)
    (setq projectile-indexing-method 'alien)
    (setq projectile-completion-system 'helm)
    (add-to-list 'projectile-globally-ignored-files "node-modules"))
  :config
  (projectile-global-mode))

(use-package helm-projectile
  :config
  (helm-projectile-on)
  :bind (("M-p p" . helm-projectile)
         ("M-p f" . helm-projectile-find-file)))

(provide 'project-prt)
