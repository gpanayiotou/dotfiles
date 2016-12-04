" ts = number of spaces that <Tab> uses
" sts = number of spaces that <Tab> uses while editing
" sw = number of spaces to use for (auto)indent step
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype java setlocal ts=4 sts=4 sw=4
autocmd Filetype vim setlocal ts=2 sts=2 sw=2

" Reload .vimrc on changes in any config file
augroup reload_vim_config
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost $MYGVIMRC source $MYVIMRC
  autocmd BufWritePost $VIMBASE/*.vim source $MYVIMRC
augroup END

" Auto save on focus lost
"autocmd FocusLost * :wa

" Resize splits on window resize
autocmd VimResized * exe "normal! \<c-w>="

" Switch to fold by marker in vim config files
augroup Vimfolding
  autocmd!
  autocmd Filetype *.vim,.vimrc,.gvimrc setlocal foldmethod=marker
augroup END

" Mark extra whitespace as 'bad'
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

