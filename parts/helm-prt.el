(use-package helm-ag)

(use-package helm
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100
          helm-idle-delay 0.0
          helm-input-idle-delay 0.01
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t
          helm-autoresize-mode 1)
    (helm-mode))
  :config
  (progn
    (setq helm-split-window-in-side-p           t
          helm-buffers-fuzzy-matching           t
          helm-move-to-line-cycle-in-source     t
          helm-ff-search-library-in-sexp        t
          helm-ff-file-name-history-use-recentf t
          helm-ag-fuzzy-match                   t)
    (define-key helm-find-files-map (kbd "M-j") 'helm-next-line)
    (define-key helm-find-files-map (kbd "M-k") 'helm-previous-line)
    (define-key helm-map (kbd "M-j") 'helm-next-line)
    (define-key helm-map (kbd "M-k") 'helm-previous-line)
    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
    (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  )
  :bind (
    ("M-x" . helm-M-x)
    ("M-p o" . helm-occur)
  ))
(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally

(use-package helm-descbinds
  :bind (("C-h b" . helm-descbinds)
         ("C-h w" . helm-descbinds)))

(provide 'helm-prt)
