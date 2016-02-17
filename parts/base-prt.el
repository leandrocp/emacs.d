(use-package better-defaults)

(setq shell-file-name "/bin/zsh"
      explicit-shell-file-name "/bin/zsh")

(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(provide 'base-prt)
