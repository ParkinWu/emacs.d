;; init-rust.el -- settings for rust programming language
;; Commentary:
;; Code:



(use-package rust-mode
  :bind (:map rust-mode-map ("C-c C-c" . rust-run)) ;bind the rust-run key
  :config (setq indent-tabs-mode nil                ;rust use spaces instead of tab
                rust-format-on-save t)              ;format code before save
 )

(use-package flycheck-rust
  :after (rust-mode)
  :init (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'init-rust)
;; init-rust.el ends here
