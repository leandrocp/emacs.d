(use-package company
  :init
  (progn
    (setq company-idle-delay 0.3)
    (setq company-tooltip-limit 10)
    (setq company-minimum-prefix-length 2)
    (setq company-tooltip-flip-when-above t))
  :config
  (progn
    (global-company-mode 1))
  :bind (("M-k" . company-select-previous)
         ("M-j" . company-select-next)))

(provide 'completion-prt)
