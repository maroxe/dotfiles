;-------------------;
;;; Theme settings ;;;
;-------------------;
(provide 'theme-settings)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized") 
(load-theme 'material t) ;; load material theme
;(load-theme 'solarized t)

; Truncate line
; (toggle-truncate-lines)

; Font
; https://github.com/adobe-fonts/source-code-pro
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(default ((t (:inherit nil :stipple nil :background "#FAFAFA" :foreground "#212121" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro")))))


(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro")))))


; pop up
(require 'popwin)
(popwin-mode 1)

; smart mode line

;; These two lines are just examples
;(require 'powerline)
;(setq powerline-arrow-shape 'curve)
;(setq powerline-default-separator-dir '(right . left))
(setq sml/theme 'dark)
(sml/setup)

;; Nyancat mode!
;; It breaks powerline
;(nyan-mode 1)





