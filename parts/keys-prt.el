(use-package key-chord
  :init
  (progn
    (key-chord-mode 1)
    (key-chord-define-global "jj" 'evil-normal-state)
    (key-chord-define-global "jw" 'switch-window)
    (key-chord-define-global "jg" 'magit-status)
))

(provide 'keys-prt)
