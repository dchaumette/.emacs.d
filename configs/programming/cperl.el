(push '("\\.pl\\'"  . cperl-mode) auto-mode-alist)
(push '("\\.pm\\'"  . cperl-mode) auto-mode-alist)
(push '("\\.plx\\'" . cperl-mode) auto-mode-alist)
(push '("\\.cgi\\'" . cperl-mode) auto-mode-alist)
(push '("\\.wsx\\'" . cperl-mode) auto-mode-alist)

(setq comment-column 40
      cperl-indent-level 4
      cperl-hairy 't
      cperl-font-lock 't
      cperl-auto-newline 't
      cperl-electric-linefeed 't
      cperl-electric-keywords 't
      cperl-electric-parens 't)

(fset 'perl-mode 'cperl-mode)
(defun my-cperl-mode-hook ()
;  (flymake-mode)
  (set (make-local-variable 'my-compile-command) (concat "perl -Mstrict -wc \"" buffer-file-name "\""))
  (set (make-local-variable 'my-compile-run-command) (concat "perl \"" buffer-file-name "\""))
  (set (make-local-variable 'comment-column) 40)
  (my-programming-common-hook)
  (local-set-key '[(control =)] 'whitespace-cleanup)
  (local-set-key '[(control n)] (lambda () (interactive) (insert "\\n")))
  (local-set-key '[(control -)] (lambda () (interactive) (insert "$_")))
  )
(add-hook 'cperl-mode-hook 'my-cperl-mode-hook)
