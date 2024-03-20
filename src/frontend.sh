#!/bin/sh

#!/bin/sh

sbcl \
	--eval '(ql:quickload "slynk")' \
	--eval '(slynk:create-server :dont-close t)' \
	--eval '(ql:quickload "cl-tui")' \
	--load juicebox-ncurses.lisp \
	--eval '(juicebox-ncurses::start-front)' \
	--no-linedit
