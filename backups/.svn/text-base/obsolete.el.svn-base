;; ;; Smart tab
(global-set-key [(tab)] 'smart-tab)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
the minibuffer. Else, if mark is active, indents region. Else if
point is at the end of a symbol, expands it. Else indents the
current line."
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (hippie-expand nil)
        (indent-for-tab-command)))))

;;
(defun my-save-kill-and-bury() 
  (interactive)
  (save-buffer)
  (server-edit)
  (delete-frame)
  )
