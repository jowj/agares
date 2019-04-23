;; -*- mode: elisp -*-

;;;; packages
;;list package targets
(setq package-archives
      '(("melpa" . "http://melpa.milkbox.net/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
	("elpy" . "http://jorgenschaefer.github.io/packages/")))

;;Refresh package contents
(unless package-archive-contents
  (package-refresh-contents))

(defvar myPackages
  '(doom-themes
    outline-magic
    multiple-cursors
    rust-mode
    cargo
    flycheck-rust
    racer
    ;;company-mode
    org2blog
    pylint
    python-mode
    markdown-mode
    powershell
    csharp-mode
    ein
    elpy
    flycheck
    magit
    exec-path-from-shell
    py-autopep8))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(require
 (jlj-misc.el)
 (jlj-org.el)
 (jlj-python.el)
 (jlj-rust.el))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(manoj-dark))
 '(custom-safe-themes
   '("356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))
 '(org-agenda-files
   '("~/Nextcloud/Documents/org/work.org" "~/Nextcloud/Documents/org/refile-beorg.org" "~/Nextcloud/Documents/org/personal.org" "~/Nextcloud/Documents/org/someday.org"))
 '(org-capture-templates
   '(("c" "generic \"to do\" capture template" entry
      (file "~/Nextcloud/Documents/org/refile-beorg.org")
      "" :prepend t)))
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m))
 '(package-selected-packages
   '(racer flycheck-rust rust-mode color-theme-sanityinc-tomorrow org2blog multiple-cursors flymake-python-pyflakes pdf-tools weechat jedi python-mode pylint py-autopep8 powershell outline-magic markdown-mode magit flycheck exec-path-from-shell elpygen elpy ein doom-themes csharp-mode)))

;;;; run emacs as server (connect to it with `emacsclient`)
(server-start)

