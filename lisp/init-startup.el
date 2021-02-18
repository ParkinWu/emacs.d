
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

(setq font-use-system-font t)

(blink-cursor-mode 1)

(setq inhibit-startup-screen 1)
(provide 'init-startup)
;;; 
