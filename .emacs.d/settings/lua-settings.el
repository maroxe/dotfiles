;-------------------;
;;; Lua Mode      ;;;
;-------------------;
(provide 'lua-settings)

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(add-to-list  'hs-special-modes-alist
              '(
               (lua-mode "{" "}" "/[*/]" nil nil)
               (lua-mode "----" "----" "/[*/]" nil nil)
)
)






