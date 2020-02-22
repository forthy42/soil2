## ExampleLib Example: an example of using Automake to link with a library

AC_INIT([soil2], [2.0], [bernd@net2o.de], [freetype-gl for Linux/Android],
        [https://github.com/forthy42/soil2])
AC_PREREQ([2.59])
AM_INIT_AUTOMAKE([1.10 -Wall no-define])
AC_USE_SYSTEM_EXTENSIONS
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADERS([config.h])
AC_PROG_CC
AM_PROG_AR
LT_INIT

case "$host_os" in
    *darwin*)
	for i in /usr/local /opt/X11 /sw
	do
	    test -d $i/include && CPPFLAGS="$CPPFLAGS -I$i/include"
	    test -d $i/include/freetype2 && CPPFLAGS="$CPPFLAGS -I$i/include/freetype2"
	    test -d $i/lib && LDFLAGS="$LDFLAGS -L$i/lib"
	done
	;;
esac

AC_CHECK_PROGS(GNU_LIBTOOL,glibtool libtool)
AC_SUBST(LIBTOOL)

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
