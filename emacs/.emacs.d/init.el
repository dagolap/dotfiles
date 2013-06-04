; Marmalade repository for package goodness
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;
; TODO: When first installing:
;
; M-x package-refresh-contents
;


; Packages I use
(defvar my-packages '(starter-kit
		      starter-kit-lisp
		      starter-kit-bindings
		      starter-kit-eshell
		      clojure-mode
		      clojure-test-mode
		      nrepl
                      color-theme-solarized))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Theme and visual stuff
(load-theme 'solarized-dark t)
(set-face-attribute 'default nil :font "Inconsolata-16")
