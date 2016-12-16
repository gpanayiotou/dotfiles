" Basic Settings {{{
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
" }}}

" Symbols {{{
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" }}}

" Tabline extension {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tabs = 0
" }}}

" Whitespace extension {{{
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '·'
let g:airline#extensions#whitespace#checks = ["indent", "trailing"]
" }}}

" Virtualenv extension {{{
let g:airline#extensions#virtualenv#enabled = 1
" }}}

" Sections {{{
"let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
let g:airline_section_b = airline#section#create(['%{getcwd()}'])
let g:airline_section_c = airline#section#create(['%t'])
"let g:airline_section_gutter  (readonly, csv)
"let g:airline_section_x       (tagbar, filetype, virtualenv)
let g:airline_section_y = airline#section#create([
                          \ '%{&fileformat}',
                          \ ' ',
                          \ '%{&fileencoding?&fileencoding:&encoding}'
                        \ ])
let g:airline_section_z = airline#section#create([
                          \ '☰', '%l', '/', '%L', ' : ∥', '%c'
                         \])
"let g:airline_section_error   (ycm_error_count, syntastic, eclim)
"let g:airline_section_warning (ycm_warning_count, whitespace)
" }}}

