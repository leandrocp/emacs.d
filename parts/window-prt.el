(use-package windmove
  :bind (("C-x k" . windmove-up)
         ("C-x j" . windmove-down)
         ("C-x h" . windmove-left)
         ("C-x l" . windmove-right)))

(use-package switch-window
  :bind (("C-x o" . switch-window)))

(global-set-key (kbd "C-x -") 'split-window-below)
(global-set-key (kbd "C-x \\") 'split-window-right)

(provide 'window-prt)
