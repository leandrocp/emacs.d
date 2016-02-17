(use-package ember-mode
  :config
  (add-hook 'js-mode-hook (lambda () (ember-mode t)))
  (add-hook 'web-mode-hook (lambda () (ember-mode t))))

(provide 'ember-prt)
