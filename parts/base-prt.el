(use-package better-defaults)

(setq shell-file-name "/bin/zsh")
(setq explicit-shell-file-name "/bin/zsh")

(fset 'yes-or-no-p 'y-or-n-p)

(setq delete-old-versions t)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

(global-auto-revert-mode t)

(provide 'base-prt)
