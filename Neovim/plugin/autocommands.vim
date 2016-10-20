" Turn off some features in non-current windows ("fade" the window)
autocmd BufEnter,FocusGained,VimEnter,WinEnter * :call functions#fade_window_in()
autocmd BufLeave,FocusLost,WinLeave * :call functions#fade_window_out()

