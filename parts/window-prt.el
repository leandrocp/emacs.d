(use-package windmove
  :bind (
         ("C-x k" . windmove-up)
         ("C-x j" . windmove-down)
         ("C-x h" . windmove-left)
         ("C-x l" . windmove-right)
         ))

(use-package switch-window
  :bind (("C-x o" . switch-window)))

(global-set-key (kbd "C-x h") 'split-window-below)
(global-set-key (kbd "C-x t") 'split-window-right)

(provide 'window-prt)
