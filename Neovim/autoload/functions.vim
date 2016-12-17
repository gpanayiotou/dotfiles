" 'Fade' out a window
function! functions#fade_window_out() abort
  let &l:colorcolumn = join(range(1, 999), ',')
endfunction

" 'Fade' in a window
function! functions#fade_window_in() abort
  let &l:colorcolumn = join(range(80, 999), ',')
endfunction

"Multipurpose TAB key
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<C-p>"
  endif
endfunction

" Rename current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

