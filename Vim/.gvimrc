" 5 syntax, highlighting and spelling
" ===================================

  highlight cursor gui=reverse

  " NOTE: color scheme specific
  highlight icursor guifg=#eff1f5 guibg=#a3be8c


" 8 Terminal
" ==========

  set guicursor=n-v-c:block-Cursor
  set guicursor+=n-v-c:blinkon0
  set guicursor+=r-cr:hor5-iCursor-blinkwait500-blinkon800-blinkoff400
  set guicursor+=i-ci-sm:ver20-iCursor-blinkwait500-blinkon800-blinkoff400


" 10 gui
" ======
  set guioptions-=m                                            "remove menu bar
  set guioptions-=T                                             "remove toolbar
  set guioptions-=r                               "remove right-hand scroll bar
  set guioptions-=L                                "remove left-hand scroll bar
  set guiheadroom=0                              " extra space for gui elements
  set renderoptions=type:directx
