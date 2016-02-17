(use-package key-chord
  :init
  (progn
    (key-chord-mode 1)
    (key-chord-define-global "ww" 'switch-window)
    (key-chord-define-global "gg" 'magit-status)
))

(provide 'keys-prt)
