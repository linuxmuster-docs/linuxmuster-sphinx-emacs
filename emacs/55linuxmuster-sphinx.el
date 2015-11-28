(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rst-compile-toolsets (quote ((html "/usr/bin/linuxmuster-sphinx-emacscompile html" ".html" nil) (latex "/usr/bin/linuxmuster-sphinx-emacscompile latexpdf" ".tex" nil) (newlatex "rst2newlatex" ".tex" nil) (pseudoxml "rst2pseudoxml" ".xml" nil) (xml "rst2xml" ".xml" nil) (pdf "rst2pdf" ".pdf" nil) (s5 "rst2s5" ".html" nil)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Tastenkombination und Einstellungen, die nur im ReST-mode gelten
;;(add-hook 'ReST-mode-hook
;;          '(lambda ()
;;                   (define-key ReST [f5] 'rst-compile-toolsets)
;;             ))
