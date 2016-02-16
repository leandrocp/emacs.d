(defun t-elixir-mode-hook ()
  (yas/minor-mode +1)
  (smartparens-mode +1)
  (tester-init-test-run #'alchemist-mix-test-file "_test.exs$")
  (tester-init-test-suite-run #'alchemist-mix-test))

(defun my-elixir-do-end-close-action (id action context)
  (when (eq action 'insert)
    (newline-and-indent)
    (forward-line -1)
    (indent-according-to-mode)))

(use-package alchemist
  :config
  (progn
    (sp-with-modes '(elixir-mode)
      (sp-local-pair "->" "end"
                     :when '(("RET"))
                     :post-handlers '(:add my-elixir-do-end-close-action)
                     :actions '(insert)))
    (sp-with-modes '(elixir-mode)
      (sp-local-pair "do" "end"
                     :when '(("SPC" "RET"))
                     :post-handlers '(:add my-elixir-do-end-close-action)
                     :actions '(insert)))
    (add-hook 'elixir-mode-hook  't-elixir-mode-hook)))

(provide 'elixir-prt)
