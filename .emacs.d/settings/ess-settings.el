;-------------------;
;;; ESS           ;;;
;-------------------;
(provide 'ess-settings)

(require 'ess-site)
;; https://github.com/kaz-yos/emacs/blob/master/init.d/200_emacsclient-related.el

(defun remove-helm-functions ()
  (remove-hook 'post-command-hook 'helm--maybe-update-keymap)
  (remove-hook 'post-command-hook 'helm--update-header-line))
(add-hook 'pre-command-hook 'remove-helm-functions)




