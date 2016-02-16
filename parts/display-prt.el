(use-package diminish)

(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)

(setq large-file-warning-threshold (* 25 1024 1024))

(line-number-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)
(setq linum-format " %d  ")
(global-linum-mode t)

(set-frame-parameter nil 'fullscreen 'fullboth)
(setq default-cursor-type 'box)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'display-prt)
