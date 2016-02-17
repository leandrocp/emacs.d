(use-package company
  :init
  (progn
    (setq company-idle-delay 0)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t))
  :config
  (progn
    (add-hook 'prog-mode-hook 'company-mode)
    (global-set-key "\t" 'company-complete-common)
    (define-key company-active-map (kbd "M-j") 'company-select-next)
    (define-key company-active-map (kbd "M-k") 'company-select-previous)))

(provide 'completion-prt)
