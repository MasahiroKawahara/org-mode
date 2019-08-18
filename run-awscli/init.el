;;;; exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;;; org-babel
;; コード実行時に confirm しない
(setq org-confirm-babel-evaluate nil)

;; 実行できる言語を指定
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (shell . t)
   )
 )
