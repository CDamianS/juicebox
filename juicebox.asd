(defsystem "juicebox"
  :version "0.0.1"
  :author "Damian Suarez"
  :mailto "DamianS78@proton.me"
  :license ""
  :depends-on ("mixalot")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "About
A common-lisp TUI music player"
  :in-order-to ((test-op (test-op "juicebox/tests"))))

(defsystem "juicebox/tests"
  :author "Damian Suarez"
  :license ""
  :depends-on ("juicebox"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for juicebox"
  :perform (test-op (op c) (symbol-call :rove :run c)))
