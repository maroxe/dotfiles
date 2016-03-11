;; (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin:/Users/maroxe/anaconda/bin"))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-set-key (kbd "C-c C-c") 'eval-region)

(setenv "PATH" "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/maroxe/anaconda/bin:/Applications/MATLAB_R2015b.app/bin:/usr/local/Cellar/emacs/HEAD/bin/")

(setq exec-path (append exec-path '("/Applications/MATLAB_R2015b.app/bin")))

;; Path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
;; path to where plugins are kept
(setq plugin-path "~/.emacs.d/el-get/")

;; define various custom functions
(require 'custom-functions)
(require 'custom-settings)

;; configure general settings
(require 'general-settings)

;; install dependencies with el-get
(require 'el-get-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; Git
; (include-plugin "magit")
(require 'magit)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-plugin "websocket")
(require 'websocket)

;; Request
(include-plugin "request")
(require 'request)

;; yasnippet
(require 'yasnippet-settings)

;; Auto complete
;; (require 'auto-complete-settings)
(require 'auto-complete-elpy-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Helm
(require 'helm-settings)

;; Shortcuts
(require 'shortcuts-settings)

;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; MuMaMo
;(require 'mumamo-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
(require 'python-settings)

;; R mode 
(require 'ess-settings)

;; Lua Mode
(require 'lua-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)

;; Matlab mode
(require 'matlab-settings)

;; Javascript
(require 'js-settings)

;; YAML mode
(require 'yaml-settings)

;; org mode
(require 'org-settings)


;; Outline Mode
;(require 'outline-settings)



;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(require 'theme-settings)

;(load 
; (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
; 'noerror)
















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
 '(safe-local-variable-values
   (quote
    ((TeX-command-extra-options . "-shell-escape")
     (org-speed-commands-user)
     (org-confirm-babel-evaluate)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Source Code Pro")))))
