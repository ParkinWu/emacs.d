;;; Code: here
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))
(use-package restart-emacs)
(use-package smooth-scroll)
(use-package monokai-theme
  :init (load-theme 'monokai t))

;; Settings for exec-path-from-shell
(use-package exec-path-from-shell
  :defer nil
  :if *is-mac*
  :init (exec-path-from-shell-initialize))


(use-package crux
  :bind ("C-k" . crux-smart-kill-line))
(use-package hungry-delete
  :bind (("C-c DEL" . hungry-delete-backward))
  :bind (("C-c d" . hungry-delete-forward)))

(use-package drag-stuff
  :bind (("C-M-n" . drag-stuff-down)
	 ("C-M-p" . drag-stuff-up)))

(use-package ivy
  :demand
  :config
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d "))

(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-x f" . counsel-recentf)
	 ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t))

(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
	company-dabbrev-code-modes t
	company-dabbrev-code-other-buffers 'all
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case t
	company-dabbrev-other-buffers 'all
	company-require-match nil
	company-minimum-prefix-length 2
	company-show-numbers t
	company-tooltip-limit 20
	company-idle-delay 0
	company-echo-delay 0
	company-tooltip-offset-display 'scrollbar
	company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))


(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
      '((swiper          . ivy-display-function-fallback)
        (complete-symbol . ivy-posframe-display-at-point)
        (counsel-M-x     . ivy-posframe-display-at-frame-center)
	(counsel-find-file . ivy-posframe-display-at-frame-center)
	(ivy-switch-buffer . ivy-posframe-display-at-frame-center)
        (t               . ivy-posframe-display)))
  (setq ivy-posframe-font my-custom-font)
  (ivy-posframe-mode 1))

(use-package ace-window
  :bind (("C-x o" . 'ace-window)))

(use-package lsp-mode
  :hook ((lsp-mode / lsp-enable-which-key-integration)
	 (python-mode . lsp-deferred)
	 (rust-mode . lsp-deferred))
  :commands lsp lsp-deferred)

;;(use-package jupyter)

(use-package direx
  :bind (("C-x C-j" . jump-to-project-root)))

(use-package pyim
  :unless *is-mac*
  :ensure nil
  :demand t
  :config
  ;; 激活 basedict 拼音词库，五笔用户请继续阅读 README
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))

  (setq default-input-method "pyim"))

(use-package htmlize)

(use-package ox-pandoc :defer t :after org)

(use-package plantuml-mode
  :init (setq plantuml-jar-path "~/.emacs.d/plantuml.jar"
	      plantuml-default-exec-mode 'jar
	      org-plantuml-jar-path "~/.emacs.d/plantuml.jar"))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ruby . t)
   (python . t)
   (plantuml . t)))

(provide 'init-packages)
;;; init-packages.el ends here
