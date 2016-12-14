" Put autocommands into a group to avoid duplicating them all,
"   when sourcing multiple time
augroup geoAutocommands
  " Clear group first
  autocmd!

  " Auto save on focus lost
  autocmd FocusLost * :wa

  " Trim trailing spaces on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Turn off some features in non-current windows ("fade" the window)
  autocmd BufWinEnter,FocusGained,VimEnter,WinEnter * :call functions#fade_window_in()
  autocmd BufWinLeave,FocusLost,WinLeave * :call functions#fade_window_out()

  " Resize splits on window resize
  autocmd VimResized * execute "normal! \<c-w>="
augroup END

