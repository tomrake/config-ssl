(defpackage #:preload-ssl/main
  (:use
   #:cl
   #:cl+ssl/config)
  (:export
   #:preload))

(in-package #:preload-ssl/main)

(defun preload ()
 (cl+ssl/config:define-libcrypto-path "c:/devel/msys64/mingw64/bin/libcrypto-1_1-x64.dll")
 (cl+ssl/config:define-libssl-path "c:/devel/msys64/mingw64/bin/libssl-1_1-x64.dll") 
  (ql:quickload "cl+ssl"))
