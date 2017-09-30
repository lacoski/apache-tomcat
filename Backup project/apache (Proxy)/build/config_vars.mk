exp_exec_prefix = /opt/apache
exp_bindir = /opt/apache/bin
exp_sbindir = /opt/apache/bin
exp_libdir = /opt/apache/lib
exp_libexecdir = /opt/apache/modules
exp_mandir = /opt/apache/man
exp_sysconfdir = /opt/apache/conf
exp_datadir = /opt/apache
exp_installbuilddir = /opt/apache/build
exp_errordir = /opt/apache/error
exp_iconsdir = /opt/apache/icons
exp_htdocsdir = /opt/apache/htdocs
exp_manualdir = /opt/apache/manual
exp_cgidir = /opt/apache/cgi-bin
exp_includedir = /opt/apache/include
exp_localstatedir = /opt/apache
exp_runtimedir = /opt/apache/logs
exp_logfiledir = /opt/apache/logs
exp_proxycachedir = /opt/apache/proxy
SHLTCFLAGS = -prefer-pic
LTCFLAGS = -prefer-non-pic -static
MKINSTALLDIRS = /opt/apache/build/mkdir.sh
INSTALL = $(LIBTOOL) --mode=install /opt/apache/build/install.sh -c
CRYPT_LIBS = -lcrypt
MPM_NAME = prefork
NONPORTABLE_SUPPORT = checkgid
INSTALL_DSO = yes
progname = httpd
OS = unix
SHLIBPATH_VAR = LD_LIBRARY_PATH
AP_BUILD_SRCLIB_DIRS = apr apr-util pcre
AP_CLEAN_SRCLIB_DIRS = apr-util apr pcre
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/bin
cgidir = ${datadir}/cgi-bin
logfiledir = ${localstatedir}/logs
exec_prefix = ${prefix}
datadir = ${prefix}
localstatedir = ${prefix}
mandir = ${prefix}/man
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/modules
htdocsdir = ${datadir}/htdocs
manualdir = ${datadir}/manual
includedir = ${prefix}/include
errordir = ${datadir}/error
iconsdir = ${datadir}/icons
sysconfdir = ${prefix}/conf
installbuilddir = ${datadir}/build
runtimedir = ${localstatedir}/logs
proxycachedir = ${localstatedir}/proxy
other_targets =
progname = httpd
prefix = /opt/apache
AWK = gawk
CC = gcc
CPP = gcc -E
CXX =
CPPFLAGS =
CFLAGS =
CXXFLAGS =
LTFLAGS = --silent
LDFLAGS =
LT_LDFLAGS =
SH_LDFLAGS =
LIBS =
DEFS =
INCLUDES =
NOTEST_CPPFLAGS =
NOTEST_CFLAGS =
NOTEST_CXXFLAGS =
NOTEST_LDFLAGS =
NOTEST_LIBS =
EXTRA_CPPFLAGS = -DLINUX -D_REENTRANT -D_GNU_SOURCE
EXTRA_CFLAGS = -g -O2 -pthread
EXTRA_CXXFLAGS =
EXTRA_LDFLAGS =
EXTRA_LIBS = -lm
EXTRA_INCLUDES = -I$(includedir) -I. -I/root/httpd-2.2.34/srclib/apr/include -I/root/httpd-2.2.34/srclib/apr-util/include -I/root/httpd-2.2.34/srclib/apr-util/xml/expat/lib
LIBTOOL = /opt/apache/build/libtool --silent
SHELL = /bin/sh
RSYNC = /usr/bin/rsync
SH_LIBS =
SH_LIBTOOL = $(LIBTOOL)
MK_IMPLIB =
MKDEP = $(CC) -MM
INSTALL_PROG_FLAGS =
APR_BINDIR = /opt/apache/bin
APR_INCLUDEDIR = /opt/apache/include
APR_VERSION = 1.5.2
APR_CONFIG = /opt/apache/bin/apr-1-config
APU_BINDIR = /opt/apache/bin
APU_INCLUDEDIR = /opt/apache/include
APU_VERSION = 1.5.4
APU_CONFIG = /opt/apache/bin/apu-1-config
