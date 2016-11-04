;; https://realpython.com/blog/python/emacs-the-best-python-editor/
;; (require 'package)
;; (add-to-list 'package-archives
;;        '("melpa" . "http://melpa.org/packages/") t)
;; (package-initialize)
;; (when (not package-archive-contents)
;;   (package-refresh-contents))


; set the el-get path, and create it if it doesn't exist
(setq elget-path plugin-path)
(unless (file-exists-p elget-path)
  (make-directory elget-path))

; add el-get to the load path, and install it if it doesn't exist
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

; install from melpa
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

; packages to install
(setq 
 my-elget-packages '(
                     avy
                     auctex
                     auto-complete
                     autopair
                     color-theme-solarized
                                        ;cdlatex-mode
                     ecb
                     ein
                     elpy
                     ess
                     expand-region
                     flycheck
                     folding
                     gnuplot-mode
                     helm
                     helm-descbinds
                     jedi
                     js2-mode
                     jump-char
                     key-chord
                     latex-preview-pane
                     lua-mode
                     magit
                     markdown-mode
                     matlab-mode
                     multiple-cursors
                     ;nxhtml
                     nyan-mode
                     org-mode
                     outshine
                     popup
                     popwin
                     pyenv
                     pydoc-info
                     python-django
                     rainbow-mode
                     scss-mode
                     yaml-mode
                     yasnippet
                     web-mode
                     ))   

; first enable shallow clone, so we don't need to clone the entire
; history of every project
(setq el-get-git-shallow-clone t)

; then install!
(el-get 'sync my-elget-packages)


;; Melpa

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(when (not package-archive-contents)
  (package-refresh-contents))

; Installl from melpa
(ensure-package-installed 'sml-mode 'smart-mode-line-powerline-theme)

; load package *after* el-get
(package-initialize)


(provide 'el-get-settings)













