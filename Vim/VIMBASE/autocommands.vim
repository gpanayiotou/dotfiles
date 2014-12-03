" Indentation based on filetype
" -----------------------------

" ts = number of spaces that <Tab> in file uses
" sts = number of spaces that <Tab> uses while editing
" sw = number of spaces to use for (auto)indent step

autocmd FileType litcoffee runtime ftplugin/coffee.vim
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Source .vimrc if modified
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Source .gvimrc if modified
augroup reload_gvimrc " {
  autocmd!
  autocmd BufWritePost $MYGVIMRC source $MYGVIMRC
augroup END " }

" auto save on focus lost
autocmd FocusLost * :wa

" resize splits on window resize
au VimResized * exe "normal! \<c-w>="

