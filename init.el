;;; init.el --- Personal emacs configuration of leandrocp
;;; Commentary:
;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
  (setq use-package-always-ensure t)

(add-to-list 'load-path (expand-file-name "parts" user-emacs-directory))

(require 'base-prt)
(require 'display-prt)
(require 'theme-prt)
(require 'evil-prt)
(require 'helm-prt)
(require 'project-prt)
(require 'completion-prt)
(require 'neotree-prt)
(require 'programming-prt)
(require 'git-prt)
(require 'elixir-prt)

(provide 'init)

;;; init.el ends here
