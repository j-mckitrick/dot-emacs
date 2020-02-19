(use-package ivy :ensure t
  :diminish (ivy-mode . ""))

;; (use-package ivy :ensure
;;   :config
;;   (setq ivy-use-virtual-buffers t
;;         ivy-count-format "(%d/%d) "))

;; https://sam217pa.github.io/2016/09/13/from-helm-to-ivy/
;; (use-package ivy :ensure t
;;   :diminish (ivy-mode . "")
;;   :bind
;;   (:map ivy-mode-map
;;    ("C-'" . ivy-avy))
;;   :config
;;   (ivy-mode 1)
;;   (setq projectile-completion-system 'ivy)
;;   ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
;;   (setq ivy-use-virtual-buffers t)
;;   ;; number of result lines to display
;;   ;;(setq ivy-height 10)
;;   ;; does not count candidates
;;   (setq ivy-count-format "")
;;   ;; no regexp by default
;;   (setq ivy-initial-inputs-alist nil)
;;   ;; configure regexp engine.
;;   (setq ivy-re-builders-alist
;; 	;; allow input not in order
;;         '((t   . ivy--regex-ignore-order)))
;;   )

(ivy-mode)
(setq ivy-use-virtual-buffers nil)
(setq ivy-count-format "(%d/%d) ")

;;(setq magit-completing-read-function 'ivy-completing-read)
(setq projectile-completion-system 'ivy)

(global-set-key (kbd "C-x C-m") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c C-r") 'ivy-resume)

(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)

(provide 'init-ivy)
