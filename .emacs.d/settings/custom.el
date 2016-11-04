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
 '(max-mini-window-height 0.1)
 '(org-agenda-files
   (quote
    ("~/Documents/Princeton/Research/time_varying_polynomials/drafts/positivity_biforms.org" "~/Documents/org/tasks.org")))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "Skim %s"))))
 '(package-selected-packages
   (quote
    (rainbow-mode sml-mode smart-mode-line-powerline-theme)))
 '(safe-local-variable-values
   (quote
    ((org-speed-commands-user)
     (python-shell-extra-pythonpaths "/Users/maroxe/Documents/Princeton/blog/apps/")
     (python-shell-completion-string-code . "';'.join(get_ipython().Completer.all_completions('''%s'''))
")
     (python-shell-completion-module-string-code . "';'.join(module_completion('''%s'''))
")
     (python-shell-completion-setup-code . "from IPython.core.completerlib import module_completion")
     (python-shell-prompt-output-regexp . "Out\\[[0-9]+\\]: ")
     (python-shell-prompt-regexp . "In \\[[0-9]+\\]: ")
     (python-shell-interpreter-args . "/Users/maroxe/Documents/Princeton/blog/manage.py shell")
     (python-shell-interpreter . "python2.7")
     (org-confirm-babel-evaluate)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro")))))
