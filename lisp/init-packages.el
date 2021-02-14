(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))
(use-package restart-emacs)
(use-package smooth-scroll)
(use-package monokai-theme
  :init (load-theme 'monokai t))
(use-package emacs
  :config
  (defalias 'yes-or-no-p' 'y-or-n-p)
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t))
(use-package crux
  :bind ("C-k" . crux-smart-kill-line))
(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward))
  :bind (("C-c d" . hungry-delete-forward)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(provide 'init-packages)
