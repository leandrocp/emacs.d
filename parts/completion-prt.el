(use-package company
  :init
  (progn
    (setq company-idle-delay 0.3)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t))
  :config
  (progn
    (global-company-mode 1)
    (define-key company-active-map (kbd "M-j") 'company-select-next)
    (define-key company-active-map (kbd "M-k") 'company-select-previous)))

(provide 'completion-prt)
