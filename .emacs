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

;; Django mode 
(require 'django-settings)

;; Theme related
(require 'theme-settings)

;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)





