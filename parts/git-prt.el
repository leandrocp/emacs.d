(use-package magit
  :bind (("M-g" . magit-status)))

(use-package git-gutter
  :diminish gitg
  :config
    (global-git-gutter-mode t)
    (git-gutter:linum-setup))

(provide 'git-prt)
