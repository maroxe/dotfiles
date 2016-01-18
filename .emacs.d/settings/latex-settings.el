;-----------;
;;; LaTeX ;;;
;-----------;

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(include-plugin "auctex")
(load "auctex.el" -1 1 1)
(load "preview-latex.el" -1 1 1)

(if (system-is-mac)
    (progn
      (require 'tex-site)
      (require 'font-latex)
      (setq TeX-view-program-list
	    (quote 
	     (("Skim" 
	       (concat "/Applications/Skim.app/Contents/SharedSupport/displayline"
		       " %n %o %b")))))
      (setq TeX-view-program-selection 
	    (quote (((output-dvi style-pstricks) "dvips and gv") 
		    (output-dvi "xdvi") 
		    (output-pdf "Skim")
		    (output-html "xdg-open")))))

  (if (system-is-linux)
      (setq TeX-view-program-selection 
	     (quote (((output-dvi style-pstricks) "dvips and gv") 
		     (output-dvi "xdvi") 
		     (output-pdf "evince")
		     (output-html "xdg-open"))))))

; always start the server for inverse search
(setq-default TeX-source-correlate-start-server 0)

(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (tex-pdf-mode 1)
            (TeX-source-correlate-mode 1)))

;; Fold
;; (custom-set-variables
;;  '(TeX-fold-macro-spec-list
;;    '(("[f]"     ("footnote" "marginpar"))
;;      ("[c]"     ("cite" "parencite"))
;;      ("[l]"     ("label"))
;;      ("[r]"     ("ref" "pageref" "eqref"))
;;      ("[i]"     ("index" "glossary"))
;;      ("[1]:||-" ("item"))
;;      ("..."     ("dots"))
;;      ("(C)"     ("copyright"))
;;      ("(R)"     ("textregistered"))
;;      ("TM"      ("texttrademark"))
;;      ("Question {1}" ("Q"))
;;      (1 ("part" "chapter" "section" "subsection" "subsubsection" "paragraph" "subparagraph" "part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup" "ac")))))


(custom-set-variables
'( TeX-fold-env-spec-list
  '(("[comment]" ("comment"))
    ("\[[1]\]||[definition]" ("definition"))
    ("\[[1]\]||[theorem]" ("theorem"))
)))
  
;(add-to-list 'TeX-fold-env-spec-list '("[figure]" ("figure")))


(provide 'latex-settings)
