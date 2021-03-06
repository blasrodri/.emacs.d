(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-mode)
	    (dumb-jump-mode)
	    ))



(require 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook
	  (lambda ()
	    (cargo-minor-mode)
	    (dumb-jump-mode)
	    (auto-complete-mode)
	    ))

(require 'go-mode)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(add-hook 'go-mode-hook
	  (lambda ()
	    (dumb-jump-mode)
	    ))

(require 'haskell-mode)
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-hook 'go-mode-hook
	  (lambda ()
	    (dumb-jump-mode)
	    ))
