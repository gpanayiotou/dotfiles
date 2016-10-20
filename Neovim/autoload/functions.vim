" 'Fade' out a window
function! functions#fade_window_out() abort
  let &l:colorcolumn = join(range(1, 999), ',')
endfunction

" 'Fade' in a window
function! functions#fade_window_in() abort
  let &l:colorcolumn = join(range(80, 999), ',')
endfunction

