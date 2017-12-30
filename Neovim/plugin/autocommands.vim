" Put autocommands into a group to avoid duplicating them all,
"   when sourcing multiple times
augroup geoAutocommands
  " Clear group first
  autocmd!

  " Auto save on focus lost
  autocmd FocusLost * :wa

  " Trim trailing spaces on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Turn off some features in non-current windows ("fade" the window)
  autocmd BufWinEnter,FocusGained,VimEnter,WinEnter *
    \ :call functions#fade_window_in()
  autocmd BufWinLeave,FocusLost,WinLeave * :call functions#fade_window_out()

  " Resize splits on window resize
  autocmd VimResized * execute "normal! \<c-w>="

  " Jump to last cursor position unless it's invalid or in a n event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Neovim version of highlighting
  "   See init.vim for the original Vim version
  autocmd ColorScheme * highlight! link NonText ColorColumn
  autocmd ColorScheme * highlight! link cursorLineNr DiffText
  autocmd colorScheme * highlight! link VertSplit LineNr
augroup END

