;-------------------;
;;; Auto-Complete ;;;
;-------------------;
(provide 'auto-complete-elpy-settings)

(package-initialize)
(elpy-enable)
(elpy-use-ipython)

;; Auto pair braces
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
















