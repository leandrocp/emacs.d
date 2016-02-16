(use-package magit
  :bind (("C-c g" . magit-status)))

(use-package git-gutter
  :config
  (global-git-gutter-mode t)
  (git-gutter:linum-setup))

(provide 'git-prt)
