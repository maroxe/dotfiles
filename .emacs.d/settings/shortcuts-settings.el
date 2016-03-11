;-------------------;
;;; Shortcuts ;;;
;-------------------;
(provide 'shortcuts-settings)

(require 'key-chord)
(key-chord-mode 1)

(global-set-key [f1] 'other-frame)
(global-set-key [f9] 'recompile)
(global-set-key [f10] 'compile)
(key-chord-define-global "fg" 'jump-char-forward)
(key-chord-define-global "df" 'jump-char-backward)
(key-chord-define-global "hj"     'undo)
(key-chord-define-global "tr"     'eshell)
(global-set-key (kbd "C-c C-c") 'eval-region)
(setq key-chord-two-keys-delay 0.05)

; https://github.com/magnars/expand-region.el
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(pending-delete-mode t)

;; Multiplt cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;; Lisp specific defuns
; https://github.com/magnars/.emacs.d/blob/master/defuns/lisp-defuns.el
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
(global-set-key (kbd "C-x C-e") 'eval-and-replace)


;; gnu plot
(local-set-key "\M-\C-g" 'org-plot/gnuplot)












