;;; -*- lexical-binding: t -*-
(setq uo-programs
      '(
        ("sublime" . "/Applications/Sublime Text.app")
        ("vim" . "/Applications/MacVim.app")
        ("intellij" . "/Applications/IntelliJ IDEA 13.app")
        ("textedit" . "/Applications/TextEdit.app")
      ))

(defun uo-generate-functions (program)
  (let ((name (car program))
        (path (cdr program)))
    (message (format "name is %s and path is %s" name path))
    (fset (intern (format "uo-%s-file" name))
          (lambda () (interactive)
            (message "%s %s" path buffer-file-name)
            (shell-command (format "open -a \"%s\" %s" path buffer-file-name))))
    (fset (intern (format "uo-%s-directory" name))
          (lambda () (interactive) (shell-command (format "open -a \"%s\" ." path))))))

(mapcar 'uo-generate-functions uo-programs)
