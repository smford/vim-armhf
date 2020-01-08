/* pathdef.c */
/* This file is automatically created by Makefile
 * DO NOT EDIT!  Change Makefile only. */
#include "vim.h"
char_u *default_vim_dir = (char_u *)"/usr/local/share/vim";
char_u *default_vimruntime_dir = (char_u *)"";
char_u *all_cflags = (char_u *)"gcc -c -I. -Iproto -DHAVE_CONFIG_H     -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1       ";
char_u *all_lflags = (char_u *)"gcc   -L. -Wl,-z,relro -Wl,-z,now -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed -o vim    -lSM -lICE -lXpm -lXt -lX11 -lXdmcp -lSM -lICE  -lm -ltinfo -lnsl    -ldl  -L/usr/lib/arm-linux-gnueabihf -lluajit-5.1 -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/arm-linux-gnueabihf/perl/5.24/CORE -lperl -ldl -lm -lpthread -lcrypt        ";
char_u *compiled_user = (char_u *)"narcotk";
char_u *compiled_sys = (char_u *)"";
