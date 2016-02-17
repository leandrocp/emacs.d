(use-package helm-ag)

(use-package helm
  :diminish helm
  :init
    (setq helm-split-window-in-side-p           t
          helm-buffers-fuzzy-matching           t
          helm-move-to-line-cycle-in-source     t
          helm-ff-search-library-in-sexp        t
          helm-ff-file-name-history-use-recentf t
          helm-ag-fuzzy-match                   t)
    (helm-mode 1)
  :config
    (define-key helm-map (kbd "C-j") 'helm-next-line)
    (define-key helm-map (kbd "C-k") 'helm-previous-line)
    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
    (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
    (define-key helm-find-files-map (kbd "C-j") 'helm-next-line)
    (define-key helm-find-files-map (kbd "C-k") 'helm-previous-line)
  :bind (("M-x" . helm-M-x)
         ("C-h d" . helm-apropos)))

(use-package helm-descbinds
  :bind (("C-h b" . helm-descbinds)
         ("C-h w" . helm-descbinds)))

(provide 'helm-prt)
