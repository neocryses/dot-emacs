(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-M-RET-may-split-line (quote ((headline) (default . t))))
 '(org-adapt-indentation nil)
 '(org-agenda-auto-exclude-function (quote org-my-auto-exclude-function))
 '(org-agenda-custom-commands
   (quote
    (("h" "Current Hotlist" tags "HOT&TODO=\"PROJECT\""
      ((org-agenda-overriding-header "Current Hotlist")))
     ("H" "Non-Hot Projects" tags "-HOT&TODO=\"PROJECT\""
      ((org-agenda-overriding-header "Non-Hot Projects")))
     ("A" "Priority #A tasks" agenda ""
      ((org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's priority #A tasks: ")
       (org-agenda-skip-function
        (quote
         (org-agenda-skip-entry-if
          (quote notregexp)
          "\\=.*\\[#A\\]")))))
     ("b" "Priority #A and #B tasks" agenda ""
      ((org-agenda-ndays 1)
       (org-agenda-overriding-header "Today's priority #A and #B tasks: ")
       (org-agenda-skip-function
        (quote
         (org-agenda-skip-entry-if
          (quote regexp)
          "\\=.*\\[#C\\]")))))
     ("r" "Uncategorized items" tags "CATEGORY=\"Inbox\"&LEVEL=2"
      ((org-agenda-overriding-header "Uncategorized items")))
     ("W" "Waiting/delegated tasks" tags "TODO=\"WAITING\"|TODO=\"DELEGATED\""
      ((org-agenda-overriding-header "Waiting/delegated tasks:")
       (org-agenda-sorting-strategy
        (quote
         (todo-state-up priority-down category-up)))))
     ("u" "Unscheduled tasks" tags "TODO<>\"\"&TODO<>{DONE\\|CANCELED\\|NOTE\\|PROJECT}&CATEGORY<>{Chess\\|Ledger\\|Assembly\\|Eshell}"
      ((org-agenda-overriding-header "Unscheduled tasks: ")
       (org-agenda-skip-function
        (quote
         (org-agenda-skip-entry-if
          (quote scheduled)
          (quote deadline)
          (quote timestamp)
          (quote regexp)
          "\\* \\(DEFERRED\\|SOMEDAY\\)")))
       (org-agenda-sorting-strategy
        (quote
         (priority-down)))))
     ("U" "Deferred tasks" tags "TODO=\"DEFERRED\""
      ((org-agenda-files
        (quote
         ("~/Documents/todo.txt")))
       (org-agenda-overriding-header "Deferred tasks:")))
     ("Y" "Someday tasks" tags "TODO=\"SOMEDAY\""
      ((org-agenda-overriding-header "Someday tasks:")))
     ("w" "Unscheduled work-related tasks" tags "TODO<>\"\"&TODO<>{DONE\\|CANCELED\\|NOTE\\|PROJECT}"
      ((org-agenda-overriding-header "Unscheduled work-related tasks")
       (org-agenda-files
        (quote
         ("~/Documents/BAE.txt")))
       (org-agenda-sorting-strategy
        (quote
         (todo-state-up priority-down category-up)))
       (org-agenda-skip-function
        (quote
         (org-agenda-skip-entry-if
          (quote scheduled)
          (quote deadline)
          (quote timestamp))))))
     ("S" "Assembly Action Items" tags-todo "TODO<>\"PROJECT\""
      ((org-agenda-files
        (quote
         ("~/Documents/assembly.txt")))
       (org-agenda-overriding-header "Assembly Action Items")
       (org-agenda-sorting-strategy
        (quote
         (alpha-up time-up)))))
     ("c" "Appointment Calendar" agenda ""
      ((org-agenda-overriding-header "Appointment Calendar")
       (org-agenda-sorting-strategy
        (quote
         (time-up)))
       (org-agenda-span 14)
       (org-agenda-ndays 14)
       (org-agenda-regexp-filter-preset
        (quote
         ("+APPT")))))
     ("Z" "MobileOrg Tasks" agenda ""
      ((org-agenda-overriding-header "MobileOrg Tasks")
       (org-agenda-span 14)
       (org-agenda-ndays 14))))))
 '(org-agenda-deadline-leaders (quote ("!D!: " "D%02d: ")))
 '(org-agenda-default-appointment-duration 60)
 '(org-agenda-files
   (quote
    ("~/Documents/todo.txt" "~/Documents/habits.txt" "~/Documents/OSS.txt" "~/Documents/BAE.txt" "~/Documents/assembly.txt" "~/Documents/IL-05/IL-05.txt")))
 '(org-agenda-fontify-priorities t)
 '(org-agenda-include-diary t)
 '(org-agenda-inhibit-startup t)
 '(org-agenda-log-mode-items (quote (closed clock state)))
 '(org-agenda-ndays 1)
 '(org-agenda-persistent-filter t)
 '(org-agenda-prefix-format
   (quote
    ((agenda . "  %-11c%?-12t% s")
     (timeline . "  % s")
     (todo . "  %-11c")
     (tags . "  %-11c"))))
 '(org-agenda-scheduled-leaders (quote ("" "S%d: ")))
 '(org-agenda-scheduled-relative-text "S%d: ")
 '(org-agenda-scheduled-text "")
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-deadline-is-shown t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-unavailable-files t)
 '(org-agenda-sorting-strategy
   (quote
    ((agenda habit-down time-up todo-state-up priority-down user-defined-down)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep))))
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-start-with-log-mode nil)
 '(org-agenda-tags-column -100)
 '(org-agenda-text-search-extra-files (quote (agenda-archives)))
 '(org-agenda-use-time-grid nil)
 '(org-archive-location "TODO-archive::")
 '(org-archive-save-context-info (quote (time category itags)))
 '(org-attach-method (quote mv))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (ditaa . t)
     (haskell . t)
     (calc . t))))
 '(org-beamer-frame-default-options "fragile")
 '(org-capture-templates
   (quote
    (("a" "Add Task" entry
      (file+headline "~/Documents/todo.txt" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("n" "Note" entry
      (file "~/Documents/notes.txt")
      "* NOTE %?
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("c" "Calendar" entry
      (file+headline "~/Documents/todo.txt" "Inbox")
      "* APPT %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t)
     ("t" "Add Task" entry
      (file+headline "~/Documents/todo.txt" "Inbox")
      "* TODO %?
SCHEDULED: %t
:PROPERTIES:
:ID:       %(shell-command-to-string \"uuidgen\"):CREATED:  %U
:END:" :prepend t))))
 '(org-clock-clocked-in-display nil)
 '(org-clock-idle-time 10)
 '(org-clock-in-resume t)
 '(org-clock-in-switch-to-state "STARTED")
 '(org-clock-into-drawer "LOGBOOK")
 '(org-clock-mode-line-total (quote current))
 '(org-clock-modeline-total (quote current))
 '(org-clock-out-remove-zero-time-clocks t)
 '(org-clock-out-switch-to-state nil)
 '(org-clock-persist t)
 '(org-clock-persist-file "~/.emacs.d/data/org-clock-save.el")
 '(org-clock-resolve-expert t)
 '(org-completion-use-ido t)
 '(org-confirm-elisp-link-function nil)
 '(org-confirm-shell-link-function nil)
 '(org-crypt-disable-auto-save nil)
 '(org-cycle-global-at-bob t)
 '(org-deadline-warning-days 14)
 '(org-default-notes-file "~/Documents/todo.txt")
 '(org-directory "~/Documents/")
 '(org-ditaa-jar-path "~/bin/DitaaEps/DitaaEps.jar")
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "OUT")))
 '(org-edit-src-content-indentation 0)
 '(org-enforce-todo-dependencies t)
 '(org-export-babel-evaluate nil)
 '(org-export-latex-classes
   (quote
    (("article" "\\documentclass[11pt]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("linalg" "\\documentclass{article}
\\usepackage{linalgjh}
[DEFAULT-PACKAGES]
[EXTRA]
[PACKAGES]"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))))
 '(org-extend-today-until 8)
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-fontify-done-headline t)
 '(org-footnote-section nil)
 '(org-habit-preceding-days 42)
 '(org-habit-today-glyph 45)
 '(org-hide-leading-stars t)
 '(org-id-locations-file "~/.emacs.d/data/org-id-locations")
 '(org-image-actual-width (quote (800)))
 '(org-insert-heading-respect-content t)
 '(org-irc-link-to-logs t t)
 '(org-latex-default-packages-alist
(quote
 (("T1" "fontenc" t)
  ("" "fixltx2e" nil)
  ("" "graphicx" t)
  ("" "longtable" nil)
  ("" "float" nil)
  ("" "wrapfig" nil)
  ("" "rotating" nil)
  ("normalem" "ulem" t)
  ("" "amsmath" t)
  ("" "textcomp" t)
  ("" "marvosym" t)
  ("" "wasysym" t)
  ("" "amssymb" t)
  ("" "hyperref" nil)
  "\\tolerance=1000")))
 '(org-mobile-agendas (quote ("Z")))
 '(org-mobile-directory "~/Dropbox/Apps/MobileOrg")
 '(org-mobile-files (quote ("~/Documents/todo.txt")))
 '(org-mobile-files-exclude-regexp "\\(TODO\\(-.*\\)?\\)\\'")
 '(org-mobile-inbox-for-pull "~/Documents/from-mobile.org")
 '(org-modules (quote (org-gnus org-id org-info org-habit org-depend)))
 '(org-priority-faces
(quote
 ((65 :foreground "ForestGreen" :weight bold)
  (67 :foreground "dark gray" :slant italic))))
 '(org-refile-targets
(quote
 (("~/Documents/todo.txt" :level . 1)
  ("~/Documents/OSS.txt" :level . 1)
  ("~/Documents/BAE.txt" :level . 1)
  ("~/Documents/assembly.txt" :level . 1)
  (org-agenda-files :todo . "PROJECT"))))
 '(org-return-follows-link t)
 '(org-reverse-note-order t)
 '(org-src-fontify-natively t)
 '(org-stuck-projects (quote ("TODO=\"PROJECT\"" nil nil "SCHEDULED:")))
 '(org-tags-column -97)
 '(org-time-clocksum-use-fractional t)
 '(org-todo-keyword-faces
(quote
 (("TODO" :foreground "medium blue" :weight bold)
  ("APPT" :foreground "medium blue" :weight bold)
  ("NOTE" :foreground "brown" :weight bold)
  ("STARTED" :foreground "dark orange" :weight bold)
  ("WAITING" :foreground "red" :weight bold)
  ("DELEGATED" :foreground "dark violet" :weight bold)
  ("DEFERRED" :foreground "dark blue" :weight bold)
  ("SOMEDAY" :foreground "dark blue" :weight bold)
  ("PROJECT" :foreground "#088e8e" :weight bold))))
 '(org-todo-repeat-to-state "TODO")
 '(org-use-property-inheritance (quote ("AREA")))
 '(org-use-speed-commands t)
 '(org-use-tag-inheritance nil)
 '(org-velocity-always-use-bucket t)
 '(org-velocity-bucket "~/Documents/notes.txt")
 '(org-velocity-capture-templates
(quote
 (("v" "Velocity" entry
   (file "~/Documents/notes.txt")
   "* NOTE %:search
%i%?
:PROPERTIES:
:ID:       %(shell-command-to-string \\\"uuidgen\\\"):CREATED:  %U
:END:" :prepend t))))
 '(org-velocity-exit-on-match t)
 '(org-velocity-force-new t)
 '(org-velocity-search-method (quote regexp))
 '(org-x-backends (quote (ox-org ox-redmine)))
 '(org-x-redmine-title-prefix-function (quote org-x-redmine-title-prefix))
 '(org-x-redmine-title-prefix-match-function (quote org-x-redmine-title-prefix-match)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-done ((t (:foreground "ForestGreen"))))
 '(org-done ((t (:foreground "ForestGreen" :weight bold))))
 '(org-habit-alert-face ((((background light)) (:background "#f5f946"))))
 '(org-habit-alert-future-face ((((background light)) (:background "#fafca9"))))
 '(org-habit-clear-face ((((background light)) (:background "#8270f9"))))
 '(org-habit-clear-future-face ((((background light)) (:background "#d6e4fc"))))
 '(org-habit-overdue-face ((((background light)) (:background "#f9372d"))))
 '(org-habit-overdue-future-face ((((background light)) (:background "#fc9590"))))
 '(org-habit-ready-face ((((background light)) (:background "#4df946"))))
 '(org-habit-ready-future-face ((((background light)) (:background "#acfca9"))))
 '(org-headline-done ((t nil)))
 '(org-scheduled ((((class color) (min-colors 88) (background light)) nil)))
 '(org-upcoming-deadline ((((class color) (min-colors 88) (background light)) (:foreground "Brown")))))
