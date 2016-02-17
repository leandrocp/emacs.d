(use-package alchemist
  :config
    (add-hook 'elixir-mode-hook 'alchemist-mode)
    (add-to-list 'display-buffer-alist
      `(,(rx bos (or "*alchemist test report*"
                     "*alchemist mix*"
                     "*alchemist help*"
                     "*alchemist elixir*"
                     "*alchemist elixirc*"))
                 (display-buffer-reuse-window
                  display-buffer-in-side-window)
                 (reusable-frames . visible)
                 (side            . right)
                 (window-width   . 0.5))))

(provide 'elixir-prt)
