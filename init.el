; list the packages you want
(setq package-list '(evil gruvbox-theme helm-rg magit rust-mode))

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
