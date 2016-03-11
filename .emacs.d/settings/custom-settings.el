
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-fold-env-spec-list
   (quote
    (("[Definition: [1]]||[definition]"
      ("definition"))
     ("[Question: {2}]||[question]"
      ("question"))
     ("[Problem: {2}]||[problem]"
      ("problem"))
     ("[Theorem: [1]]||[theorem]"
      ("theorem"))
     ("[Remark: [1]]||[remark]"
      ("remark"))
     ("[Lemma: [1]]||[lemma]"
      ("lemma"))
     ("[example]"
      ("example"))
     ("[proof]"
      ("proof"))
     ("[items]"
      ("itemize"))
     ("[enumerate]"
      ("enumerate"))
     ("[Class: [1]]||[Class]"
      ("class")))))
 '(TeX-fold-macro-spec-list
   (quote
    (("[footnote]"
      ("footnote" "marginpar"))
     ("[c]"
      ("cite" "parencite"))
     ("[l]"
      ("label"))
     ("[r]"
      ("ref" "pageref" "eqref"))
     ("[i]"
      ("index" "glossary"))
     ("[1]:||-"
      ("item"))
     ("..."
      ("dots"))
     ("(C)"
      ("copyright"))
     ("(R)"
      ("textregistered"))
     ("TM"
      ("texttrademark"))
     ("Question {1}"
      ("Q"))
     (1
      ("part" "chapter" "section" "subsection" "subsubsection" "paragraph" "subparagraph" "part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup" "ac"))
     ("[comment]"
      ("comment")))))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(ecb-options-version "2.40")
 '(safe-local-variable-values (quote ((org-confirm-babel-evaluate)))))


(provide 'custom-settings)
