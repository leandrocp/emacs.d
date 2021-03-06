(use-package company
  :init
    (setq company-idle-delay 0.5)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t)
    (setq company-show-numbers t)
  :config
    (add-hook 'prog-mode-hook 'company-mode)
    (bind-key "C-<tab>" 'company-complete)
    (bind-keys :map company-active-map
               ("TAB" . company-complete-common-or-cycle)
               ("C-j" . company-select-next)
               ("C-k" . company-select-previous))
    (define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
  :bind
    ("<C-tab>" . company-complete))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package elixir-yasnippets)

(provide 'completion-prt)
