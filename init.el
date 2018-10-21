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
 '(package-selected-packages
   (quote
    (rainbow-mode diminish moody clues-theme flatland-theme gotham-theme exotica-theme planet-theme dumb-jump infoplus info-plus info+ counsel swiper ivy speed-type py-autopep8 flycheck virtualenvwrapper virtualenvwrapper\.el yasnippet-snippets ace-window switch-window nlinum-hl all-the-icons-dired comment-dwim-2 neotree spaceline-config all-the-icons org-bullets org-pomodoro haskell-mode expand-region free-keys linum-highlight-current-line-number\.el linum-highlight-current-line-number beacon rainbow-delimiters highlight-quoted highlight-numbers kaolin-themes which-key use-package dashboard)))
 '(spaceline-all-the-icons-icon-set-window-numbering (quote solid) t)
 '(spaceline-all-the-icons-separator-type (quote slant))
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
