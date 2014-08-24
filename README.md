CMake configure wrapper
=======================

This shellscript provides CMake-projects with a configure-script similar to the one autoconf provides. It supports all options from
the [GNU Coding Guidelines](http://www.gnu.org/prep/standards/html_node/Configuration.html) and even takes generic arguments.


Usage
-----

The basic functionality should work out of the box. Just adding the configure-script to you project enables simple functionality
like the --prefix argument and --enable-debug. You will notice that CMake complains about a lot of unused variables. The function of
these variables can be looked up [here](http://www.gnu.org/prep/standards/html_node/Directory-Variables.html).

Enable and Disable features/packages
---------------------------

The script takes arguments of the form --enable-\* and --disable-\*. Passing an argument like --enable-foo-bar sets
FEATURE\_FOO\_BAR=Yes. --disable-foo-bar would set the same variable to "No".

The same applies to the arguments --with-\* and --without-\*. --with-foo-bar sets PACKAGE\_FOO\_BAR=Yes. --without-foo-bar sets it to "No".

Integrating with CMake
----------------------

All directory arguments (except --prefix) are not supported natively by CMake. The script sets variables like INSTALL\_LIBDIR for --libdir for
example, but you have to explicitly use them. You will need to specify
```cmake
install (TARGETS some_shared_lib LIBRARY DESTINATION ${INSTALL_LIBDIR})
```
for libdir to have an effect.

This leads to a serious problem: The standard CMake Parameters are ignored and calls like `cmake -DCMAKE_INSTALL_PREFIX=/usr` will not work anymore.

This can be solved by moving the file ConfigureWrapper to your projects CMAKE\_MODULE\_PATH and issuing `include (ConfigureWrapper)` at the start of
your projects CMakeLists.txt. If you build the project with configure nothing will change, but if you use cmake directly the variables the script sets
normally will be set to their default location (relative to CMAKE\_INSTALL\_PREFIX).

License
-------

This project is licensed under the BSD 2-Clause Licensed.
