" Indentation based on filetype
" =============================

" ts = number of spaces that <Tab> in file uses
" sts = number of spaces that <Tab> uses while editing
" sw = number of spaces to use for (auto)indent step

autocmd FileType litcoffee runtime ftplugin/coffee.vim
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Reload .vimrc on changes in any config file
augroup reload_vim_config " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost $MYGVIMRC source $MYVIMRC
  autocmd BufWritePost $VIMBASE/*.vim source $MYVIMRC
augroup END " }

" Auto save on focus lost
autocmd FocusLost * :wa

" Resize splits on window resize
au VimResized * exe "normal! \<c-w>="

" Set custom hightlights for all colorschemes
" No direct settings in Thematic for this yet
augroup Highlights
  autocmd!
  " Add custom highlights every time a theme is loaded
  autocmd colorscheme *
  \ highlight icursor guifg=#eff1f5 guibg=#a3be8c
  " Since the above doesn't work on VimEnter, hook the same thing into
  " something else
  autocmd VimResized *
  \ highlight icursor guifg=#eff1f5 guibg=#a3be8c
augroup END

