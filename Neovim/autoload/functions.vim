scriptencoding utf-8

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

" Override default 'foldtext()', returning
" »··[21ℓ]··: EXAMPLE HEADER··················
let s:middot='·'
let s:raquo='»'
let s:small_l='ℓ'

function! functions#foldtext() abort
  let l:lines='[' . (v:foldend - v:foldstart + 1) . s:small_l . ']'
  let l:first=substitute(getline(v:foldstart), '\v *', '', '')
  let l:dashes=substitute(v:folddashes, '-', s:middot, 'g') . s:middot
  return s:raquo . s:middot . s:middot . l:lines . l:dashes . ': ' . l:first
endfunction

