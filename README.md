# CONFIG-SSL

The  purpose of CONFIG-SSL is to configure [CL+SSL](https://github.com/cl-plus-ssl/cl-plus-ssl) locations of external libraries.

# Typical Use case

The use case is you are defining some system, say 'app'  that uses CL+SSL.
You know where the libcrpto and libssl are located.
You declare your to depend on app.
You need to ensure the CONFIG-SSL actually defines where libssl and libcrpto.
CL+SSL can now be loaded because it is configured with those libraries.


# Various implemenations

This has repo several branches for my configutation



## branch twr-msys

This branch configures [CL+SSL](https://github.com/cl-plus-ssl/cl-plus-ssl) to use libleay32.dll and ssleary32.dll from msys2 64 bit distribution.

## branch twr-external-store

This branch configures [CL+SSL](https://github.com/cl-plus-ssl/cl-plus-ssl) to use the latest distributed OpenSSL .dll files.

## branch exp-store

This is an experimental branch that uses the feature EXTERNAL-LIB-STORE to locate the root of system wide external store to configure [CL+SSL](https://github.com/cl-plus-ssl/cl-plus-ssl).


# CL+SSL style advocate

[See the CL+SSL libary advocate document](advocate.html)
[See the argument for Central Store of shared libraries](central-store.html)