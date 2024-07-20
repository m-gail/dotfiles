(setq org-directory "~/Nextcloud/Notes/"
      org-startup-with-inline-images t
      org-export-directory "./build/out"
      org-latex-pdf-process
      '("latexmk -shell-escape -auxdir=build/aux -outdir=build/out -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f")
      org-time-stamp-custom-formats '("<%a %d.%m.%Y>" . "<%a %d.%m.%Y %H:%M>")
      org-agenda-files (directory-files-recursively "~/Nextcloud/Notes" "\\.org$")
      org-agenda-start-on-weekday nil
      org-startup-with-latex-preview t
      org-latex-src-block-backend 'engraved
      org-latex-engraved-theme 'doom-nord-light
      org-latex-subtitle-separate t
      org-latex-subtitle-format "\\newcommand{\\subtitle}{%s}")

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
                      (org-agenda-overriding-header "Deadlines")
                      (org-agenda-entry-types '(:deadline)))))
         ((org-agenda-prefix-format '((agenda . "   %11s%11t  %-40c  %b")))
          (org-agenda-breadcrumbs-separator "  ")))
        ("t" "Todo"
         ((todo ""))
         ((org-agenda-prefix-format '((todo . "%-40c  %b")))
          (org-agenda-breadcrumbs-separator "  ")))
        ("m" "Monthly view"
         ((agenda ""))
         ((org-agenda-prefix-format '((agenda . "   %11s%11t  %-40c  %b")))
          (org-agenda-span 'month)
          (org-agenda-breadcrumbs-separator "  ")))))

(setq org-publish-project-alist
      (list
       (list "TUWien Org"
             :auto-sitemap t
             :sitemap-filename "index.org"
             :recursive t
             :base-directory "~/Nextcloud/Notes/TUWien"
             :exclude "setup.org"
             :html-head-extra "<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/org.css\">"
             :publishing-directory "~/Nextcloud/OrgPublish/TUWien"
             :publishing-function 'org-html-publish-to-html)
       (list "TUWien Images"
             :recursive t
             :base-directory "~/Nextcloud/Notes/TUWien"
             :base-extension "png\\|jpg\\|css"
             :publishing-directory "~/Nextcloud/OrgPublish/TUWien"
             :publishing-function 'org-publish-attachment)))

;; unbind default org bindings
(map! :leader "o" nil)

(map! :leader
      (:prefix ("o" . "org")
       :desc "reload agenda files" "r"
       (lambda ()
         (interactive)
         (setq org-agenda-files (directory-files-recursively "~/Nextcloud/Notes" "\\.org$")))
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
