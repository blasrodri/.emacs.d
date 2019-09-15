;; Simple shutdown keybiding from Emacs
(defun shutdown-now ()
  (interactive)
  (shell-command (concat "shutdown " "now")))

(global-set-key (kbd "C-c C-s n") 'shutdown-now)
