;; BUddger
(global-set-key (kbd "C-x C-b") #'ibuffer)
;; Helm

;; Helm find
(global-set-key (kbd "C-x C-a f")   'helm-find)

;; Helm rg
(global-set-key (kbd "C-x C-a g")   'helm-rg)

;; Projectile
(global-set-key (kbd "C-x C-a p")   'projectile-find-file)

;; Buffer list
;; (global-set-key (kbd "C-x C-a b")   'helm-buffers-list)

(require 'evil)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
