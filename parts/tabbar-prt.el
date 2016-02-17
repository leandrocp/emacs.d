(use-package tabbar
  :config
  (tabbar-mode 1)
  (define-key evil-normal-state-map "L" 'tabbar-forward-tab)
  (define-key evil-normal-state-map "H" 'tabbar-forward-tab))

; (use-package tabbar-ruler)

(provide 'tabbar-prt)
