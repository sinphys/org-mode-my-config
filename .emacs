
;; Automatically loads the el configurations
;;(define-key global-map "\C-cc" 'org-capture)
(defun load-directory (dir)
      (let ((load-it (lambda (f)
		       (load-file (concat (file-name-as-directory dir) f)))
		     ))
	(mapc load-it (directory-files dir nil "\\.el$"))))
    (load-directory "~/.emacs.d/config/key-maps/")
    (load-directory "~/.emacs.d/config/org-mode/")
  ;;(load-directory "~/.emacs.d/config/latex/")


 
;; Load a path with "M-x load-library"
;;(add-to-list 'load-path "~/.emacs.d/config/org-mode/")


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; No word wrap is allowed in org-mode
(add-hook 'org-mode-hook #'toggle-word-wrap)
;; To activate visual-line globally
;;(global-visual-line-mode t)
;; set margin to all windows from left and right
(setq-default left-margin-width 1 right-margin-width 1) 
;;Set it so that the margin settings persist after changing windows.
(set-window-buffer nil (current-buffer)) 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "748d0e2ffdaf95015a539dcc95ab888283284ad7b076963760422cbe5e21903a" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(doc-view-continuous t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(latex-preview-pane-use-frame nil)
 '(neo-theme (quote ascii))
 '(org-agenda-files
   (quote
    ("~/MEGA/grive/notes/org-mode/organize/schedule.org" "/home/sina/MEGA/grive/notes/org-mode/organize/help.org" "/home/sina/MEGA/grive/Google Drive/notes/org-mode/projects/projects.org")) t)
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-startup-truncated nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages
   (quote
    (org-ref neotree spacemacs-theme pdf-tools ivy-bibtex company-reftex ac-math org-edit-latex org-pomodoro org-bullets org-download melancholy-theme htmlize org solarized-theme)))
 '(pdf-sync-backward-hook nil)
 '(preview-orientation (quote right)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; In order to activate the neotree
(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20181121.2026/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-c n") 'neotree-find)
 
(put 'downcase-region 'disabled nil)


(require 'org-ref)

