(defsystem #:preload-ssl
  :description "Load ssh binaries from msys"
  :author "Tom Rake<zzzap1957@gmail.com>"
  :license "MIT"
  :class :package-inferred-system
  :in-order-to ((test-op (test-op "preload-ssl/test")))
  :depends-on ("cl+ssl/config")
  :components ((:file "main")))


