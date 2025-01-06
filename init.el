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
   '("fa99c4a20e78f3511aa9fbe55871251c229b4c0eed332d6a910c60df1e9f7126" "51043b04c31d7a62ae10466da95a37725638310a38c471cc2e9772891146ee52" "7d4340a89c1f576d1b5dec57635ab93cdc006524bda486b66d01a6f70cffb08e" "ff829b1ac22bbb7cee5274391bc5c9b3ddb478e0ca0b94d97e23e8ae1a3f0c3e" "a95d66071817d19102f6a5579c23fa90dcddcecb06d9a1f1f94dbc20cf596df7" "8ffdc8c66ceeaf7921f4510a70d808f01b303e6b4d177c947b442e80d4228678" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" "699f6d6c0ffa3899990a6cc5fc01bc6f6fc81c596d198fcc3a10f90a773983a3" "2246415696f064e9b89f0a210d18a56ca9caad7e3616dd33aa5e9bc7c7d02057" "198529f4a3eeb38b05b187ad1d2f17ac897ae13830db927300cc480f3d9a2ab3" default))
 '(package-selected-packages
   '(ein dedicated company flutter dart-mode eglot theme-magic rtags multiple-cursors majapahit majapahit-dark majapahit-theme naysayer-theme auto-sudoedit org-alert drag-stuff fish-mode emojify shell-pop pdf-tools rainbow-mode diminish moody clues-theme flatland-theme gotham-theme exotica-theme planet-theme dumb-jump infoplus info-plus info+ counsel swiper ivy speed-type py-autopep8 flycheck virtualenvwrapper virtualenvwrapper.el yasnippet-snippets ace-window switch-window nlinum-hl all-the-icons-dired comment-dwim-2 neotree spaceline-config all-the-icons org-bullets org-pomodoro haskell-mode expand-region free-keys linum-highlight-current-line-number.el linum-highlight-current-line-number beacon rainbow-delimiters highlight-quoted highlight-numbers kaolin-themes use-package))
 '(persp-mode t)
 '(theme-magic-export-theme-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
