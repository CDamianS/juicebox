(defpackage juicebox/tests/main
  (:use :cl
        :juicebox
        :rove))
(in-package :juicebox/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :juicebox)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
