(use-package tabbar
  :init
    (setq tabbar-background-color nil)
    (setq tabbar-separator (quote (1.0)))
    (setq tool-bar-mode nil)
    (define-key evil-normal-state-map "L" 'tabbar-forward-tab)
    (define-key evil-normal-state-map "H" 'tabbar-backward-tab)
  :config
    (setq tabbar-background-color "#393939")
    (custom-set-faces
      '(tabbar-default ((t (:inherit variable-pitch :background "#393939" :foreground "black" :weight bold))))
      '(tabbar-button ((t (:inherit tabbar-default :foreground "#f2f0ec"))))
      '(tabbar-button-highlight ((t (:inherit tabbar-default))))
      '(tabbar-highlight ((t (:underline t))))
      '(tabbar-selected ((t (:inherit tabbar-default :background "#393939" :foreground "#ffcc66"))))
      '(tabbar-separator ((t (:inherit tabbar-default :background "#393939"))))
      '(tabbar-unselected ((t (:inherit tabbar-default)))))
    (tabbar-mode 1))

(provide 'tabbar-prt)
