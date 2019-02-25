;; MELPA package archive
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
	     '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq package-archive-priorities
      '(("melpa-stable" . 20)
	("gnu" . 10)
	("melpa" . 0)))
(setq package-pinned-packages
      '((jedi . "melpa")))

(package-initialize)

;; Use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("699f6d6c0ffa3899990a6cc5fc01bc6f6fc81c596d198fcc3a10f90a773983a3" "2246415696f064e9b89f0a210d18a56ca9caad7e3616dd33aa5e9bc7c7d02057" "198529f4a3eeb38b05b187ad1d2f17ac897ae13830db927300cc480f3d9a2ab3" default)))
 '(package-selected-packages
   (quote
    (org-alert drag-stuff fish-mode emojify shell-pop pdf-tools rainbow-mode diminish moody clues-theme flatland-theme gotham-theme exotica-theme planet-theme dumb-jump infoplus info-plus info+ counsel swiper ivy speed-type py-autopep8 flycheck virtualenvwrapper virtualenvwrapper\.el yasnippet-snippets ace-window switch-window nlinum-hl all-the-icons-dired comment-dwim-2 neotree spaceline-config all-the-icons org-bullets org-pomodoro haskell-mode expand-region free-keys linum-highlight-current-line-number\.el linum-highlight-current-line-number beacon rainbow-delimiters highlight-quoted highlight-numbers kaolin-themes which-key use-package)))
 '(persp-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
