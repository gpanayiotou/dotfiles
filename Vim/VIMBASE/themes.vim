" Vim-Thematic
" ============

" Defaults
" --------
" {{{
let g:thematic#defaults = {
  \'fullscreen-background-color-fix': 1,
  \'ruler': 1,
  \'fullscreen': 1,
  \'laststatus': 2,
  \'linespace': 4,
  \'font-size': 10,
  \'typeface': 'inconsolata-dz for powerline',
\}
" }}}

" Themes
" ------
" {{{
let g:thematic#themes = {
  \'ocean': {
    \ 'colorscheme': 'base16-ocean',
    \ 'background': 'dark',
    \ 'airline-theme': 'base16'
  \},
  \'papercolor': {
    \ 'colorscheme': 'PaperColor',
    \ 'background': 'light',
  \},
  \'flat': {
    \ 'colorscheme': 'base16-flat',
    \ 'background': 'dark',
    \ 'airline-theme': 'base16',
  \},
  \'pencil': {
    \ 'colorscheme': 'pencil',
    \ 'background': 'light',
    \ 'typeface': 'Cousine',
    \ 'airline-theme': 'light',
  \ },
  \'iawriter': {
    \ 'colorscheme': 'pencil',
    \ 'background': 'light',
    \ 'columns': 85,
    \ 'font-size': 18,
    \ 'fullscreen': 1,
    \ 'laststatus': 0,
    \ 'linespace': 8,
    \ 'typeface': 'Cousine',
    \ 'airline-theme': 'light',
  \},
\}

let g:thematic#theme_name = 'ocean'
" }}}


" Autocommands
" ------------
" {{{
autocmd BufEnter *.js Thematic flat
autocmd BufEnter *.vim Thematic ocean
autocmd BufEnter *.md Thematic iawriter

" Set custom hightlights for all colorschemes
" NOTE: No setting in Thematic for this
augroup CursorColors
  autocmd!
  " Add custom highlights every time a theme is loaded
  autocmd colorscheme * highlight icursor guifg=#eff1f5 guibg=#a3be8c
  " WORKAROUND: Since the above doesn't work on VimEnter, 
  "   hook the same thing into something else
  autocmd VimResized * highlight icursor guifg=#eff1f5 guibg=#a3be8c
augroup END
" }}}

