(custom-set-variables
 '(TeX-fold-macro-spec-list
   '(("[f]"     ("footnote" "marginpar"))
     ("[c]"     ("cite" "parencite"))
     ("[l]"     ("label"))
     ("[r]"     ("ref" "pageref" "eqref"))
     ("[i]"     ("index" "glossary"))
     ("[1]:||-" ("item"))
     ("..."     ("dots"))
     ("(C)"     ("copyright"))
     ("(R)"     ("textregistered"))
     ("TM"      ("texttrademark"))
     ("Question {1}" ("Q"))
     (1 ("part" "chapter" "section" "subsection" "subsubsection" "paragraph" "subparagraph" "part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup" "ac"))
     ("[comment]" ("comment"))
     ("\[[1]\]||[definition]" ("definition"))
     ("\[[1]\]||[theorem]" ("theorem"))
     ("[proof]" ("proof"))
     ("[items]" ("itemize"))
)))
  
;(add-to-list 'TeX-fold-env-spec-list '("[figure]" ("figure")))






