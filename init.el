; list the packages you want
(setq package-list '(ace-window auctex auto-complete cargo dumb-jump elpy evil go-mode go-autocomplete gruvbox-theme helm-rg magit neotree python-mode rust-mode))

; list the repositories containing them
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Theme
(load-theme 'gruvbox t)

;; Buffers
(ido-mode 1)

;; Evil mode
(require 'evil)
(evil-mode 1)

;; Custom keybindings
(load "~/.emacs.d/kbd.el")

;; Number mode
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Ace Window
(global-set-key (kbd "M-C-o") 'ace-window)

;; Helm mode
(helm-mode 1)

;; Autocomplete
(global-auto-complete-mode t)

;; Hooks
(load "~/.emacs.d/hooks.el")

;; TestClient
(add-to-list 'load-path "~/.emacs.d/elpa/restclient")
(load "restclient")

;; Misc
;; Move the cursor to new newly created window
(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (restclient-test python-mode go-autocomplete go-mode cargo auctex rust-mode neotree magit helm-rg gruvbox-theme flyspell-correct-helm evil elpy dumb-jump auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
