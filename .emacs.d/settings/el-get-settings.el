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

; packages to install
(setq 
 my-packages '(auctex
               autopair
               auto-complete
               color-theme-solarized
               ein
               ess
               expand-region
               flycheck
               jump-char
               key-chord
               magit
               markdown-mode
;              material-theme
               matlab-mode
               multiple-cursors
               nxhtml
               pydoc-info
               scss-mode
               popup
               jedi
               nyan-mode
               helm
               helm-descbinds
               js2-mode
               yasnippet
               yaml-mode
               ))   
(defvar myPackages
  '(
    material-theme
    py-autopep8
))


; first enable shallow clone, so we don't need to clone the entire
; history of every project
(setq el-get-git-shallow-clone t)

; then intsall!
(el-get 'sync my-packages)
;; (mapc #'(lambda (package)
;;     (unless (package-installed-p package)
;;       (package-install package)))
;;       myPackages)

(provide 'el-get-settings)

