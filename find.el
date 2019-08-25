(global-set-key (kbd "C-x C-a f") 'helm-find)
(custom-set-variables
 '(helm-ag-base-command "rg --no-heading"))
(global-set-key (kbd "C-x C-a g") 'helm-ag)
(setq-default helm-ag-fuzzy-match t)
(setq-default helm-find-noerrors t)
