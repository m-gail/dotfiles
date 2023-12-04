(setq org-directory "~/Nextcloud/Notes/")
(setq org-startup-with-latex-preview t)
(setq org-startup-with-inline-images t)
(setq org-export-directory "./build/out")
(setq org-latex-pdf-process
    '("latexmk -auxdir=build/aux -outdir=build/out -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))
(setq-default org-display-custom-times t)
(setq org-time-stamp-custom-formats '("<%a %d.%m.%Y>" . "<%a %d.%m.%Y %H:%M>"))
(setq org-agenda-files (directory-files-recursively "~/Nextcloud/Notes" "\\.org$"))
(setq org-agenda-span 14)
(setq org-agenda-start-on-weekday nil)

;; unbind default org bindings
(map! :leader "o" nil)

(map! :leader
      (:prefix ("o" . "org")
       :desc "latex preview" "m" #'org-agenda
       :desc "latex preview" "a" (lambda () (interactive) (org-agenda nil "a"))
       :desc "timestamp" "t" #'org-timestamp
       :desc "inactive timestamp" "T" #'org-timestamp-inactive
       :desc "latex preview" "l" #'org-latex-preview))
