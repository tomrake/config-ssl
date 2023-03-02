# CL+SSL design

Most CommonLisp interfaces to external libraries use heurstic guess on where to find various binaries.
Most fall back on an OS searchpath amd complex version numbering.
This works most of the time on Linux.

It is widely suggested that on Windows external binaries be place next to the lisp executables.
Doing this relies on the OS searching that location first, this requres duplicate files for each Lisp implementation.
External libraries can be located in the windows/system directories, but this assumes that all software requires that same verision of external libarires, which could be a problem.

The CL+SSL/config package allows the specification of the libcrypto and libssl libraries at an arbitrary location.


For each libary to be defined (libcryto and libssl) two symbols are defined. For the case of libcrypto they are libcrypto and *libcrpto-override*. In a macro in config named define-librypto with a parameter path. Libcrypto is set to the path and *libcrpto-oveerride* is set to t.

The same thing is done for libssl.

In the package that loads the library that is the file reload.lisp. All the heuritic code to find libcrpto is enclosed in a (UNLESS *libcrpto-override* <legacy code to find libcrypo>)

After if the override is set the libcrypto is known or the legacy code finds the location of libcrypto.

Finally, this code where a feature of :cl+ssl-foreign-libs-already-loaded is used to avoid the dyanmic use because the library is staticlly linked.


``` common-lisp
(unless (member :cl+ssl-foreign-libs-already-loaded
                *features*)
  (cffi:use-foreign-library libcrypto))
```

# Conclusion

This strategy allow the interface to find the external library at runtime when staticllay linked, located by legacy heurustics or specifically located at package configuration time.