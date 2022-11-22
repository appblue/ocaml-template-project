# ocaml-template-project
Simple OCaml template project with integration towards Emacs with UTop/Merlin/Tuareg

```lisp
;; make and relaod utop
;; (TODO: issue with TAB completion after reload)
(defun make-and-reload ()
  (interactive)
  (let ((cbuff (current-buffer)))
    (compile "make -k")
    (utop-kill)

    ;; restart utop
    (let ((buf (get-buffer-create utop-buffer-name))
	  (cmd utop-command))
      (pop-to-buffer buf)
      (setq utop-command cmd)
      (with-current-buffer buf (utop-mode)))))
      
(global-set-key (kbd "C-c C-v") 'make-and-reload)
```
