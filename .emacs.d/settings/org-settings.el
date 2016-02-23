(require 'org)

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (python . t)
     (matlab . t)
     (R . t)
     (ditaa . t)
     (shell . t)
     (latex . t)
     )
   )
                                        ; disable confirmation
  (defun my-org-confirm-babel-evaluate (lang body)
    (not (string= "a" "a")))

  (setq org-confirm-babel-evaluate nil)
                                        ; (require 'ob-ipython)

  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  ;(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
)

(provide 'org-settings)














