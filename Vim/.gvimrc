scriptencoding utf-8

" 4 Displaying Text
" =================
" {{{
set lines=999                   " create windows with maximum height by default
" }}}


" 5 syntax, highlighting and spelling
" ===================================
" {{{
highlight icursor guifg=#eff1f5 guibg=#a3be8c
" }}}


" 8 Terminal
" ==========
" {{{
set guicursor+=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0
set guicursor+=r-cr:hor5-iCursor-blinkwait500-blinkon800-blinkoff400
set guicursor+=i-ci:ver20-iCursor-blinkwait500-blinkon800-blinkoff400
" }}}


" 10 gui
" ======
" {{{
set guioptions-=m              " Remove menu bar
set guioptions-=T              " Remove toolbar
set guioptions-=r              " Remove right-hand scroll bar
set guioptions-=l              " Remove left-hand scroll bar
set guioptions-=L              " Remove left-hand scroll bar multiple buffers
set guiheadroom=0              " Remove extra space for gui elements

if has("gui_gtk2")
  " WORKAROUND: vim-gtk can't render glyphs correctly with PragmataPro
  set guifont=Hack\ 10
elseif has("x11")
  set guifont=*-pragmatapro-medium-r-normal-*-*-180-*-*-m-*-*
elseif has("gui_win32")
  set guifont=PragmataPro:h12:cANSI
endif

if has('win32')
  " RGB pixel structure, natural symmetric rendermode, Cleartype AA mode
  set renderoptions=type:directx,geom:1,renmode:5,taamode:1
endif
" }}}

