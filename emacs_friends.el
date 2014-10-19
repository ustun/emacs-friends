;;; -*- lexical-binding: t -*-
(setq uo-programs
      '(
        ("sublime" . "Sublime Text")
        ("vim" . "MacVim")
        ("intellij" . "IntelliJ IDEA 13")
        ("textedit" . "TextEdit")
        ("finder" . "Finder")
        ("chrome" . "Google Chrome")
        ("firefox" . "Firefox")
        ("safari" . "Safari")
        ("mail" . "Mail")
      ))

(defun uo-generate-functions (program)
  (let ((name (car program))
        (path (cdr program)))
    (fset (intern (format "uo-%s-file" name))
          (lambda () (interactive)
            (shell-command (format "open -a \"%s\" %s" path buffer-file-name))))
    (fset (intern (format "uo-%s-directory" name))
          (lambda () (interactive) (shell-command (format "open -a \"%s\" ." path))))))

(mapcar 'uo-generate-functions uo-programs)
