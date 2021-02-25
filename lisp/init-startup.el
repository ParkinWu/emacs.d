
;; Settings for system encoding
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(setq display-line-numbers 1)
(setq buffer-file-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

(setq make-backup-files nil
      auto-save-default nil)

(setq my-custom-font "-ADBO-Source Code Pro-semibold-normal-normal-*-18-*-*-*-m-0-iso10646-1")
(setq font-use-system-font t)
(set-frame-font my-custom-font)

(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq python-shell-completion-native-enable nil)
(setq py-python-command "python3")
(setq python-shell-interpreter "python3")
(setq elpy-rpc-python-command "python3")

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 1)
(global-linum-mode t)

(setq org-startup-with-inline-images t)
(setq org-confirm-babel-evaluate nil)
(defun shk-fix-inline-images ()
  (when org-inline-image-overlays
    (org-redisplay-inline-images)))

(with-eval-after-load 'org
  (add-hook 'org-babel-after-execute-hook 'shk-fix-inline-images))

(setq inhibit-startup-screen 1)
(provide 'init-startup)
;;; 
