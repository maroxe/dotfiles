;-------------------;
;;; Theme settings ;;;
;-------------------;
(provide 'theme-settings)
(load-theme 'material-light t) ;; load material theme

; Font
; https://github.com/adobe-fonts/source-code-pro
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FAFAFA" :foreground "#212121" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro")))))


; pop up
(require 'popwin)
(popwin-mode 1)



