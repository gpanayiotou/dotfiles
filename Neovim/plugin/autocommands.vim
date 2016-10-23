" Turn off some features in non-current windows ("fade" the window)
autocmd BufWinEnter,FocusGained,VimEnter,WinEnter * :call functions#fade_window_in()
autocmd BufWinLeave,FocusLost,WinLeave * :call functions#fade_window_out()

