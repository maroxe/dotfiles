;-----------;
;;; Outline ;;;
;-----------;


;(require 'outshine)
;(defvar outline-minor-mode-prefix "\M-#")
;(add-hook 'outline-minor-mode-hook 'outshine-hook-function)
(add-hook 'LaTeX-mode-hook 'outline-minor-mode)
(add-hook 'lua-mode-hook 'outline-minor-mode)
(outline-minor-mode)

(provide 'outline-settings)







