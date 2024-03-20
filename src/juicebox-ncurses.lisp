(defpackage juicebox-ncurses
  (:use :cl
	:cl-tui))

(in-package :juicebox-ncurses)

(defun render-scene (&key frame)
  (draw-box frame)
  (put-text frame 0 4 "Welcome to juicebox!")
  (put-text frame 1 1 "This is just a test"))

(define-children :root ()
  (artists (simple-frame :render #'render-scene))
  (albums (simple-frame :render #'render-scene)))

(defun start-front ()
  (with-screen ()
    (display :root)
    (loop (case (read-key)
	    (#\q (return))))))
