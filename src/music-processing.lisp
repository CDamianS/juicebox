(in-package :juicebox)

(defparameter *music-server* (create-mixer))
(defvar *current-song* nil)
(defvar *song-queue* nil)

;; Sample songs
(defvar song-1 "/home/damian/bugsnax.mp3")
(defvar song-2 "/home/damian/miko.mp3")

(defun make-song (file)
  ;; TODO: check if file is correct, right now it just assumes
  ;; Also check for diferent types of files eg. Ogg, Flac
  (make-mp3-streamer file))

(defun play-song (song)
  "Clears queue and plays a song"
  (if *current-song*
      (progn (mixer-remove-all-streamers *music-server*)
             (setf *current-song* song)
             (mixer-add-streamer *music-server* *current-song*))
      (progn (setf *current-song* song)
             (mixer-add-streamer *music-server* *current-song*))))

(defun play-next ()
  "Add song to the top of the queue"
  ())

(defun add-to-queue ()
  "Add a song to the end of the queue"
  ())

(defun next-song ()
  "goes next into the queue"
  (let ((next-song (cadr *song-queue*)))
    (if next-song
        (progn (setf *current-song* next-song)
               (mixer-add-streamer *music-server* *current-song*))
        (progn (setf *current-song* nil)
               (mixer-remove-all-streamers *music-server*)
               (format nil "No more songs in queue")))))


(defun toggle-pause ()
  (if *current-song*
      (if (streamer-paused-p *current-song* *music-server*)
          (streamer-unpause *current-song* *music-server*)
          (streamer-pause *current-song* *music-server*))))
;; (setf *current-song* (mixalot-mp3:make-mp3-streamer "/home/damian/toldyouso.mp3"))
