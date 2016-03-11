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
     (gnuplot . t)
     )
   )
  ; disable confirmation
  (defun my-org-confirm-babel-evaluate (lang body)
    (not (string= "a" "a")))

  (setq org-confirm-babel-evaluate nil)
  (setq org-use-speed-commands t)

  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  (setq org-image-actual-width nil)

  ; disable confirmation for adding new line
  (setq require-final-newline nil)



  ; minted
  ; http://stackoverflow.com/questions/21005885/export-org-mode-code-block-and-result-with-different-styles
  (setq org-latex-listings 'minted)
  (require 'ox-latex)
  (add-to-list 'org-latex-packages-alist '("" "minted" nil))

  (setq org-latex-minted-options
     '(("frame" "lines") ("linenos=true")))
  (setq org-latex-pdf-process
        '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
)

(provide 'org-settings)














