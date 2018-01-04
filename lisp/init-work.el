(require 'init-util)

(when (is-work-machine)
  ;(require 'jcm-web)
  ;(jcm-setup-web-settings)

  ;; This has been working
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

  (require 'ensime)
  ;;(setq ensime-sbt-command "/usr/local/bin/sbt")
  ;; But try this
  ;;(setq ensime-sbt-command "/usr/local/sbt13/sbt.sh")
  ;;(setq ensime-server-version "2.0.0-graph-SNAPSHOT")
  ;;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  ;;(add-hook 'scala-mode-hook 'rainbow-delimiters-mode)
  (define-key ensime-mode-map (kbd "M-.") 'ensime-edit-definition))

(defun cider-repl-set-type [type]
  "REPL `type' should be either \"clj\" or \"cljs\"."
  (interactive "s")
  (setq cider-repl-type type))

(defun cider-connect-clojurescript ()
  "Connect to a clojurescript repl."
  (interactive)
  (cider-connect)
  (cider-repl-set-type "cljs"))

(add-hook 'js2-jsx-mode-hook #'company-mode)
(add-hook 'clojure-mode-hook #'company-mode)
(add-hook 'c-mode-hook #'company-mode)

;; More stuff to try
;; http://timothypratley.blogspot.com/2015/07/seven-specialty-emacs-settings-with-big.html

;; (defun save-all ()
;;   (interactive)
;;   (save-some-buffers t))
;(add-hook 'focus-out-hook 'save-all)

;(add-hook 'after-init-hook #'global-flycheck-mode)

;(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;(set-frame-font "Source Code Pro-16" nil t)

(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
    (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(global-set-key (kbd "C-c /") 'toggle-comment-on-line)

(global-unset-key (kbd "C-z"))

;; ****

(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

(magit-define-popup-switch 'magit-log-popup
  ?i "Ignore case in grep" "-i")

(require 'nav-flash)
(nav-flash-show)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'yasnippet)
(yas-initialize)
(yas-global-mode 1)

(provide 'init-work)
