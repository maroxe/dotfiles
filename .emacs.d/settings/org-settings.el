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

;; Sync with drobox
(setq org-mobile-directory "~/Dropbox-personal/Dropbox/mobileorg/")
(setq org-directory "~/Documents/org/")
(setq org-agenda-files '("~/Documents/org/tasks.org"))
(setq org-mobile-inbox-for-pull "~/Documents/org/from-mobile.org")


;; flyspell
;; http://www.clarkdonley.com/blog/2014-10-26-org-mode-and-writing-papers-some-tips.html
;; 1. hook flyspell into org-mode
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'flyspell-buffer)

;; 2. ignore message flags
(setq flyspell-issue-message-flag nil)

;; 3. ignore tex commands
(add-hook 'org-mode-hook (lambda () (setq ispell-parser 'tex)))
(defun flyspell-ignore-tex ()
  (interactive)
  (set (make-variable-buffer-local 'ispell-parser) 'tex))
(add-hook 'org-mode-hook 'flyspell-ignore-tex)


;; reftex for citations
;; http://blog.modelworks.ch/?p=379

(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name) (file-exists-p (buffer-file-name))
       (progn
     ;enable auto-revert-mode to update reftex when bibtex file changes on disk
     (global-auto-revert-mode t)
     (reftex-parse-all)
     ;add a custom reftex cite format to insert links
     (reftex-set-cite-format "[[papers:%l][%l]]: %t \n")
     ;(reftex-set-cite-format 'natbib)
   ))
  (define-key org-mode-map (kbd "C-c (") 'reftex-citation)
) 
 
(add-hook 'org-mode-hook 'org-mode-reftex-setup) 
 
(setq org-link-abbrev-alist '(("papers" . "/Users/maroxe/Dropbox/Time_varying_convex_programs/related_papers/%s.pdf"))) 
(setq reftex-default-bibliography '("/Users/maroxe/Dropbox/Time_varying_convex_programs/related_papers/citations.bib")) 

; auto-image-file-mode
; auto-revert-mode


(provide 'org-settings)
