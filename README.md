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
