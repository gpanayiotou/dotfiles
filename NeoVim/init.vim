" Sections according to :options

" 1 important
" ===========
" {{{

" }}}


" 2 moving around, searching and patterns
" =======================================
" {{{
set incsearch
set autochdir
set magic
set ignorecase
set smartcase
" }}}


" 4 displaying text
" =================
" {{{
set number
set relativenumber
set scrolloff=2
set nowrap
" }}}


" 5 syntax, highlighting and spelling
" ===================================
" {{{
set hlsearch
" }}}


" 6 multiple windows
" ==================
" {{{
" }}}


" 18 reading and writing files
" ============================
" {{{
set fileformats=unix
set backup
set backupdir=~/Backup/nvim
set autowriteall
set autoread
" }}}


" 19 the swap file
" ================
" {{{
" }}}


" Plugins
" =======
" {{{

" dein.vim
" --------
" {{{
set runtimepath+=~/.config/nvim/plugins/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('Shougo/dein.vim')

" dependencies
call dein#add('Shougo/vimproc.vim', {
  \ 'build': {
  \     'windows': 'tools\\update-dll-mingw',
  \     'cygwin': 'make -f make_cygwin.mak',
  \     'linux': 'make',
  \    },
  \ })

" enhancements
call dein#add('Shougo/neocomplete.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('scrooloose/syntastic')

" themes
call dein#add('reedes/vim-thematic')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('reedes/vim-colors-pencil')
call dein#add('chriskempson/base16-vim')

call dein#end()
" }}}

" vim-thematic
" ------------
" {{{
let g:thematic#defaults = {
\ 'laststatus': 2,
\ }

let g:thematic#themes = {
\ 'ocean-dark': { 'colorscheme': 'base16-ocean',
\		  'background': 'dark',
\		  'airline-theme': 'base16',
\               }
\ }

let g:thematic#theme_name = 'ocean-dark'
" }}}


" airline-vim
" -----------
" {{{
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 1
" }}}

" }}} end of Plugins section


" Y Autocommands
" ==============
" {{{
au FileType vim setlocal foldmethod=marker
" }}}
