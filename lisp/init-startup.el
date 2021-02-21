
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

(blink-cursor-mode 1)
(global-linum-mode t)

(setq inhibit-startup-screen 1)
(provide 'init-startup)
;;; 
