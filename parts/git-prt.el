(use-package magit
  :bind (
    ("M-g s" . magit-status)
    ("M-g d" . magit-diff)
    ("M-g c" . magit-commit)
))

(use-package git-gutter
  :config
  (global-git-gutter-mode t)
  (git-gutter:linum-setup))

(provide 'git-prt)
