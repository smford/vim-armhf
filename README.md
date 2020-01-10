# vim compiled for armhf (raspberrypi)

Original readme is [here](README.original.md)

Method to compile is from [here](https://gist.github.com/lwickline/8c061def750833c544034a66199dc23f) or [copy](https://gist.github.com/smford/fcf02740a9b1909b54047ee8e24260ab)

## Installation
```
git clone git@github.com:smford/vim-armhf.git
cd vim-armf
sudo make install
```

## Version
```
raspberrypi# vim --version
VIM - Vi IMproved 8.2 (2019 Dec 12, compiled Jan  8 2020 18:54:12)
Included patches: 1-79
Compiled by narcotk
Huge version without GUI.  Features included (+) or not (-):
+acl               -farsi             -mouse_sysmouse    -tag_old_static
+arabic            +file_in_path      +mouse_urxvt       -tag_any_white
+autocmd           +find_in_path      +mouse_xterm       -tcl
+autochdir         +float             +multi_byte        +termguicolors
-autoservername    +folding           +multi_lang        +terminal
-balloon_eval      -footer            -mzscheme          +terminfo
+balloon_eval_term +fork()            -netbeans_intg     +termresponse
-browse            -gettext           +num64             +textobjects
++builtin_terms    -hangul_input      +packages          +textprop
+byte_offset       +iconv             +path_extra        +timers
+channel           +insert_expand     +perl/dyn          +title
+cindent           +job               +persistent_undo   -toolbar
+clientserver      +jumplist          +popupwin          +user_commands
+clipboard         +keymap            +postscript        +vartabs
+cmdline_compl     +lambda            +printer           +vertsplit
+cmdline_hist      +langmap           +profile           +virtualedit
+cmdline_info      +libcall           +python/dyn        +visual
+comments          +linebreak         +python3/dyn       +visualextra
+conceal           +lispindent        +quickfix          +viminfo
+cryptv            +listcmds          +reltime           +vreplace
+cscope            +localmap          +rightleft         +wildignore
+cursorbind        +lua               +ruby/dyn          +wildmenu
+cursorshape       +menu              +scrollbind        +windows
+dialog_con        +mksession         +signs             +writebackup
+diff              +modify_fname      +smartindent       +X11
+digraphs          +mouse             -sound             +xfontset
-dnd               -mouseshape        +spell             -xim
-ebcdic            +mouse_dec         +startuptime       +xpm
+emacs_tags        -mouse_gpm         +statusline        +xsmp_interact
+eval              -mouse_jsbterm     -sun_workshop      +xterm_clipboard
+ex_extra          +mouse_netterm     +syntax            -xterm_save
+extra_search      +mouse_sgr         +tag_binary
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
  fall-back for $VIM: "/usr/local/share/vim"
Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H     -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: gcc   -L. -Wl,-z,relro -Wl,-z,now -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,-E   -L/usr/local/lib -Wl,--as-needed -o vim    -lSM -lICE -lXpm -lXt -lX11 -lXdmcp -lSM -lICE  -lm -ltinfo -lnsl    -ldl  -L/usr/lib/arm-linux-gnueabihf -lluajit-5.1 -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/arm-linux-gnueabihf/perl/5.24/CORE -lperl -ldl -lm -lpthread -lcrypt
```
