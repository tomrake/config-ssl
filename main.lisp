(defpackage #:config-ssl/main
  (:use
   #:cl
   #:cl+ssl/config)
  (:export))

(in-package #:config-ssl/main)




(cl+ssl/config:define-libcrypto-path "c:/devel/msys64/ucrt64/bin/libcrypto-3-x64.dll")
(cl+ssl/config:define-libssl-path "c:/devel/msys64/ucrt64/bin/libssl-3-x64.dll")
