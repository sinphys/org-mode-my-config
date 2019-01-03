;; Define the location of the file to hold tasks
;;(setq org-default-notes-file "~/.todo-list.org")

;; to navigate us to main note folder
(global-set-key (kbd "C-c o") 
                (lambda () (interactive) (find-file "~/MEGA/grive/notes/org-mode/")))

;; In order to restart(refresh) org-mode
(global-set-key (kbd "C-c r") 'org-mode-restart)
                

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key (kbd "M-<f11>") 'org-pomodoro)



(setq org-log-done t)

;;Bullet type
(add-hook 'org-mode-hook 'org-bullets-mode)

;; In order to search all todo files
(setq org-agenda-files '(
"~/MEGA/grive/notes/org-mode/organize"
"~/MEGA/grive/notes/org-mode/projects"))
;; Search instead of all todo but a single file
;;(setq org-agenda-files (list "~/MEGA/grive/notes/org-mode/organize/example.org"))

;; To add a task in org-capture mode
(define-key global-map "\C-cc" 'org-capture)

;;Flyspell
(add-hook 'org-mode-hook 'turn-on-flyspell)

;; set maximum indentation for description lists
(setq org-list-description-max-indent 5)

;; prevent demoting heading also shifting text inside sections
(setq org-adapt-indentation nil)

;; Prevents org-mode to insert an image with real size
(setq org-image-actual-width nil)


;; org-ref configuration ----> it has been invoked by "(require 'org-ref)" at .eamcs file 

(setq reftex-default-bibliography '("/home/sina/MEGA/grive/notes/org-mode/bibliography/references.bib"))

;; see org-ref for use of these variables
(setq org-ref-bibliography-notes '("/home/sina/MEGA/grive/notes/org-mode/bibliography/test.org" "/home/sina/MEGA/grive/notes/org-mode/research/research.org")
      org-ref-default-bibliography '("/home/sina/MEGA/grive/notes/org-mode/bibliography/references.bib")
      org-ref-pdf-directory "/home/sina/MEGA/grive/notes/org-mode/bibliography/bibtex-pdfs/")
