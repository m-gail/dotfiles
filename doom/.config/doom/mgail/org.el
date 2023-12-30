(setq org-directory "~/Nextcloud/Notes/"
      org-startup-with-inline-images t
      org-export-directory "./build/out"
      org-latex-pdf-process
      '("latexmk -auxdir=build/aux -outdir=build/out -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f")
      org-time-stamp-custom-formats '("<%a %d.%m.%Y>" . "<%a %d.%m.%Y %H:%M>")
      org-agenda-files (directory-files-recursively "~/Nextcloud/Notes" "\\.org$")
      org-agenda-start-on-weekday nil
      org-startup-with-latex-preview t)
(setq-default org-display-custom-times t)

(setq org-agenda-custom-commands
      '(("v" "Agenda"
         ((agenda "" ((org-agenda-span 12)
                      (org-deadline-warning-days 0)
                      (org-agenda-start-day "0d")))
          (agenda "" ((org-agenda-time-grid nil)
                      (org-agenda-span 1)
                      (org-agenda-start-day "0d")
                      (org-deadline-warning-days 31)
                      (org-agenda-show-all-dates nil)
                      (org-agenda-span-name)
                      (org-agenda-entry-types '(:deadline)))))
         ((org-agenda-prefix-format '((agenda . "   %11s%11t  %-40c  %b")))
          (org-agenda-breadcrumbs-separator "  ")))
        ("t" "Todo"
         ((todo ""))
         ((org-agenda-prefix-format '((todo . "%-40c  %b")))
          (org-agenda-breadcrumbs-separator "  ")))))

;; unbind default org bindings
(map! :leader "o" nil)

(map! :leader
      (:prefix ("o" . "org")
       :desc "agenda menu" "m" #'org-agenda
       :desc "agenda" "a" (lambda () (interactive) (org-agenda nil "v"))
       :desc "export as pdf" "ep" #'org-latex-export-to-pdf
       :desc "timestamp" "t" #'org-timestamp
       :desc "inactive timestamp" "T" #'org-timestamp-inactive
       :desc "latex preview" "l" #'org-latex-preview
       :desc "choose spell language" "sl" #'ispell-change-dictionary
       :desc "image preview" "i" #'org-toggle-inline-images))

(custom-set-faces!
  '(org-level-1 :height 1.4)
  '(org-level-2 :height 1.2)
  '(org-level-3 :height 1.1))
