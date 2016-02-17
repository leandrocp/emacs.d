(use-package company
  :init
    (setq company-idle-delay 0)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t)
    (setq company-show-numbers t)
  :config
    (add-hook 'prog-mode-hook 'company-mode)
    (bind-key "C-<tab>" 'company-complete)
    (bind-keys :map company-active-map
               ("<tab>" . company-complete-common-or-cycle)
               ("C-j"   . company-select-next)
               ("C-k"   . company-select-previous))
  :bind
    ("<C-tab>" . company-complete))

(provide 'completion-prt)
