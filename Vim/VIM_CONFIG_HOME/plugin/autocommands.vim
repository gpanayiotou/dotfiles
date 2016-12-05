" Put autocommands into a group to avoid duplicating them all,
"   when sourcing multiple time
augroup geoAutocommands
  " Clear group first
  autocmd!

  " Auto save on focus lost
  autocmd FocusLost * :wa

  " Resize splits on window resize
  autocmd VimResized * execute "normal! \<c-w>="
augroup END
