;; -*- mode: elisp -*-

;; Bootstrap's bootstraps
;;;; bootstrap's bootstraps

(setq user-init-file "~/Documents/projects/agares/applicationConfiguration/.emacs/jlj-init.org")
(package-initialize)
(require 'package)
(setq package-archives
      '(("melpa" . "http://melpa.milkbox.net/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
	("elpy" . "http://jorgenschaefer.github.io/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


(org-babel-load-file (expand-file-name "~/Documents/projects/agares/applicationConfiguration/.emacs/jlj-init.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(epg-gpg-program "/usr/local/bin/gpg")
 '(global-hl-line-mode t)
 '(package-selected-packages
   (quote
    (org-pdfview jedi znc yaml-mode which-key use-package twittering-mode try smex racer python-mode pylint py-autopep8 powershell pdf-tools outline-magic org2blog multiple-cursors magit helm flycheck-rust eyebrowse exec-path-from-shell emojify elpy ein doom-themes dockerfile-mode docker csharp-mode ansible anaconda-mode ace-window)))
 '(znc-servers
   (\`
    (("bouncer.awful.club" 5000 t
      ((freenode "blindidiotgod/freenode"
		 (\, znc-password))
       (OFTC "blindidiotgod/OFTC"
	     (\, znc-password))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
