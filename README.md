# Installation

(load-file "~/path-to-emacs_friends.el")

# Usage

This will provide a few helpers to open the current file and directory in various programs like VIM, Sublime, IntelliJ etc.

`M-x uo-vim-file`
`M-x uo-sublime-directory`

This is helpful to test the current HTML file in various browsers too:

`M-x uo-firefox-file` `M-x uo-chrome-file`

Also useful to email the current file and directory via Mail.app

`M-x uo-mail-file`

`M-x uo-mail-directory`

etc.

TODO:
-----

Make a proper package.
Make program list customizable with a defvar.
Make it work on Linux.
