" Turn off some features in non-current windows
if exists('+colorcolumn')
    autocmd BufEnter,FocusGained,VimEnter,WinEnter *
          \ let &l:colorcolumn = '80,' . join(range(100, 999), ',')
    autocmd FocusLost,WinLeave *
          \ let &l:colorcolumn = join(range(1, 999), ',')
endif
