(use-package diminish)

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'dark)
  :config
  (sml/setup))

(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position t)

(setq large-file-warning-threshold (* 25 1024 1024))

(line-number-mode 1)
(column-number-mode 1)
(global-hl-line-mode t)

(setq linum-format "%4d \u2502 ")
(mapc
 (lambda (mode-hook)
   (add-hook mode-hook 'linum-mode))
 '(text-mode-hook
   prog-mode-hook
   conf-mode-hook
   css-mode-hook))

(set-frame-parameter nil 'fullscreen 'fullboth)
(setq default-cursor-type 'box)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'display-prt)
