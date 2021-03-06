#
# config.mk.in -- autoconf template for Vim on Unix		vim:ts=8:sw=8:
#
# DO NOT EDIT config.mk!!  It will be overwritten by configure.
# Edit Makefile and run "make" or run ./configure with other arguments.
#
# Configure does not edit the makefile directly. This method is not the
# standard use of GNU autoconf, but it has two advantages:
#   a) The user can override every choice made by configure.
#   b) Modifications to the makefile are not lost when configure is run.
#
# I hope this is worth being nonstandard. jw.



VIMNAME		= vim
EXNAME		= ex
VIEWNAME	= view

CC		= gcc
DEFS		= -DHAVE_CONFIG_H
CFLAGS		= -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
CPPFLAGS	= 
srcdir		= .

LDFLAGS		= -L. -Wl,-z,relro -Wl,-z,now -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed
LIBS		= -lm -ltinfo -lnsl    -ldl
TAGPRG		= ctags

CPP		= gcc -E
CPP_MM		= M
DEPEND_CFLAGS_FILTER = | sed 's+-I */+-isystem /+g'
LINK_AS_NEEDED	= yes
X_CFLAGS	=  
X_LIBS_DIR	=  
X_PRE_LIBS	=  -lSM -lICE -lXpm
X_EXTRA_LIBS	=  -lXdmcp -lSM -lICE
X_LIBS		= -lXt -lX11

LUA_LIBS	= -L/usr/lib/arm-linux-gnueabihf -lluajit-5.1
LUA_SRC		= if_lua.c
LUA_OBJ		= objects/if_lua.o
LUA_CFLAGS	= -I/usr/include/luajit-2.0
LUA_PRO		= if_lua.pro

MZSCHEME_LIBS	= 
MZSCHEME_SRC	= 
MZSCHEME_OBJ	= 
MZSCHEME_CFLAGS	= 
MZSCHEME_PRO	= 
MZSCHEME_EXTRA	= 
MZSCHEME_MZC	= 

PERL		= /usr/bin/perl
PERLLIB		= /usr/share/perl/5.24
PERL_XSUBPP	= /usr/share/perl/5.24/ExtUtils/xsubpp
PERL_LIBS	= -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/arm-linux-gnueabihf/perl/5.24/CORE -lperl -ldl -lm -lpthread -lcrypt
SHRPENV		= 
PERL_SRC	= auto/if_perl.c if_perlsfio.c
PERL_OBJ	= objects/if_perl.o objects/if_perlsfio.o
PERL_PRO	= if_perl.pro if_perlsfio.pro
PERL_CFLAGS	= -DDYNAMIC_PERL_DLL=\"libperl.so.5.24\"  -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/arm-linux-gnueabihf/perl/5.24/CORE 

PYTHON_SRC	= if_python.c
PYTHON_OBJ	= objects/if_python.o
PYTHON_CFLAGS	= -I/usr/include/python2.7 -DPYTHON_HOME='"/usr"' -pthread -DDYNAMIC_PYTHON_DLL=\"libpython2.7.so.1.0\"
PYTHON_LIBS	= 

PYTHON3_SRC	= if_python3.c
PYTHON3_OBJ	= objects/if_python3.o
PYTHON3_CFLAGS	= -I/usr/include/python3.5m -pthread -DDYNAMIC_PYTHON3_DLL=\"\"
PYTHON3_LIBS	= 

TCL		= 
TCL_SRC		= 
TCL_OBJ		= 
TCL_PRO		= 
TCL_CFLAGS	= 
TCL_LIBS	= 

NETBEANS_SRC	= 
NETBEANS_OBJ	= 
CHANNEL_SRC	= channel.c
CHANNEL_OBJ	= objects/channel.o
TERM_SRC	= libvterm/src/encoding.c libvterm/src/keyboard.c libvterm/src/mouse.c libvterm/src/parser.c libvterm/src/pen.c libvterm/src/creen.c libvterm/src/state.c libvterm/src/unicode.c libvterm/src/vterm.c
TERM_OBJ	= objects/vterm_encoding.o objects/vterm_keyboard.o objects/vterm_mouse.o objects/vterm_parser.o objects/vterm_pen.o objects/vterm_screen.o objects/vterm_state.o objects/vterm_unicode.o objects/vterm_vterm.o
TERM_TEST	= test_libvterm

RUBY		= /usr/bin/ruby
RUBY_SRC	= if_ruby.c
RUBY_OBJ	= objects/if_ruby.o
RUBY_PRO	= if_ruby.pro
RUBY_CFLAGS	= -DDYNAMIC_RUBY_DLL=\"libruby-2.3.so.2.3\" -DDYNAMIC_RUBY_VER=23 -I/usr/include/ruby-2.3.0 -I/usr/include/arm-linux-gnueabihf/ruby-2.3.0 -DRUBY_VERSION=23
RUBY_LIBS	= 

AWK		= mawk

STRIP		= strip

EXEEXT		= 
CROSS_COMPILING = 

COMPILEDBY	= narcotk

INSTALLVIMDIFF	= installvimdiff
INSTALLGVIMDIFF	= installgvimdiff
INSTALL_LANGS	= install-languages
INSTALL_TOOL_LANGS	= install-tool-languages

### sed command to fix quotes while creating pathdef.c
QUOTESED        = sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$$/";/'

### Line break character as octal number for "tr"
NL		= "\\012"

### Top directory for everything
prefix		= /usr/local

### Top directory for the binary
exec_prefix	= ${prefix}

### Prefix for location of data files
BINDIR		= ${exec_prefix}/bin

### For autoconf 2.60 and later (avoid a warning)
datarootdir	= ${prefix}/share

### Prefix for location of data files
DATADIR		= ${datarootdir}

### Prefix for location of man pages
MANDIR		= ${datarootdir}/man

### Do we have a GUI
GUI_INC_LOC	= 
GUI_LIB_LOC	= 
GUI_SRC		= $(NONE_SRC)
GUI_OBJ		= $(NONE_OBJ)
GUI_DEFS	= $(NONE_DEFS)
GUI_IPATH	= $(NONE_IPATH)
GUI_LIBS_DIR	= $(NONE_LIBS_DIR)
GUI_LIBS1	= $(NONE_LIBS1)
GUI_LIBS2	= $(NONE_LIBS2)
GUI_INSTALL	= $(NONE_INSTALL)
GUI_TARGETS	= $(NONE_TARGETS)
GUI_MAN_TARGETS	= $(NONE_MAN_TARGETS)
GUI_TESTTARGET	= $(NONE_TESTTARGET)
GUI_TESTARG	= $(NONE_TESTARG)
GUI_BUNDLE	= $(NONE_BUNDLE)
NARROW_PROTO	= 
GUI_X_LIBS	= 
MOTIF_LIBNAME	= 
GTK_LIBNAME	= 

GLIB_COMPILE_RESOURCES = 
GRESOURCE_SRC = 
GRESOURCE_OBJ = 

GTK_UPDATE_ICON_CACHE = 
UPDATE_DESKTOP_DATABASE = 

### Any OS dependent extra source and object file
OS_EXTRA_SRC	= 
OS_EXTRA_OBJ	= 

### If the *.po files are to be translated to *.mo files.
MAKEMO		= 

MSGFMT		= 
MSGFMT_DESKTOP	= 

# Make sure that "make first" will run "make all" once configure has done its
# work.  This is needed when using the Makefile in the top directory.
first: all
