" ts = number of spaces that <Tab> in file uses
" sts = number of spaces that <Tab> uses while editing
" sw = number of spaces to use for (auto)indent step
autocmd FileType litcoffee runtime ftplugin/coffee.vim
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Reload .vimrc on changes in any config file
augroup reload_vim_config
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost $MYGVIMRC source $MYVIMRC
  autocmd BufWritePost $VIMBASE/*.vim source $MYVIMRC
augroup END

" Auto save on focus lost
autocmd FocusLost * :wa

" Resize splits on window resize
autocmd VimResized * exe "normal! \<c-w>="

" Switch to fold by marker in vim config files
augroup Vimfolding
  autocmd!
  autocmd Filetype vim setlocal foldmethod=marker
augroup END
