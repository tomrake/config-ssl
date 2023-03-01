(defpackage #:config-ssl/main
  (:use
   #:cl
   #:cl+ssl/config)
  (:export
   #:preload))

(in-package #:config-ssl/main)

(defun preload ()
  #+macos ()
  #+linux ()
  #+ (and  win32 64-BIT) (cl+ssl/config:define-libcrypto-path "c:/devel/external-libs/openssl-1.0.2u/win-x86_64/libeay32.dll")
  #+ (and  windows 32-BIT-HOST) (cl+ssl/config:define-libcrypto-path "c:/devel/external-libs/openssl-1.0.2u/win-i386/libeay32.dll")
  #+ (and  win32 64-BIT) (cl+ssl/config:define-libssl-path "c:/devel/external-libs/openssl-1.0.2u/win-x86_64/ssleay32.dll")
  #+ (and  windows 32-BIT-HOST) (cl+ssl/config:define-libssl-path "c:/devel/external-libs/openssl-1.0.2u/win-i386/ssleay32.dll"))

(preload)
