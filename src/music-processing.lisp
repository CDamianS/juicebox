(in-package :juicebox)

;; (ql:quickload :mixalot)
;; (ql:quickload :mixalot-mp3)

(defparameter *music-server* (create-mixer))
(defvar *current-song* nil)


;; (setf *current-song* (mixalot-mp3:make-mp3-streamer "/home/damian/toldyouso.mp3"))
