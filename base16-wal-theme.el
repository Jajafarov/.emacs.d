(require 'base16-theme)

;; colours generated dynamically by wal
(defun set-wal-colors () (setq base16-wal-colors
			       '(:base00 "#020914"
					 :base01 "#020914"
					 :base02 "#615E53"
					 :base03 "#6B7F7C"
					 :base04 "#A11E16"
					 :base05 "#CF2313"
					 :base06 "#A66046"
					 :base07 "#d1c1ab"
					 :base08 "#928777"
					 :base09 "#454943"
					 :base0A "#615E53"
					 :base0B "#6B7F7C"
					 :base0C "#A11E16"
					 :base0D "#CF2313"
					 :base0E "#A66046"
					 :base0F "#d1c1ab")))

(defvar base16-wal-colors nil "All colors for base16-wal are defined here.")
(set-wal-colors)

;; Define the theme
(deftheme base16-wal)

;; Add all the faces to the theme
(base16-theme-define 'base16-wal base16-wal-colors)

;; Mark the theme as provided
(provide-theme 'base16-wal)

(provide 'base16-wal)
