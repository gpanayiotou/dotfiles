" Sections according to :options

" 1 important
" ===========
" {{{
<<<<<<< HEAD

=======
>>>>>>> origin/develop
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
<<<<<<< HEAD
=======
syntax enable
>>>>>>> origin/develop
" }}}


" 6 multiple windows
" ==================
" {{{
<<<<<<< HEAD
=======

" }}}


" 7 Multiple Tab Pages
" ====================
" {{{
set showtabline=2
" }}}


" 8 terminal
" ==========
" {{{
set t_Co=256
set title
" }}}

" 14 tabs and indenting
" =====================
" {{{
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set autoindent
set smartindent
" }}}


" 15 folding
" ==========
" {{{
>>>>>>> origin/develop
" }}}


" 18 reading and writing files
" ============================
" {{{
set fileformats=unix
set backup
<<<<<<< HEAD
set backupdir=~/Backup/nvim
=======
set backupdir=~/Backup/nvim/
>>>>>>> origin/develop
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

<<<<<<< HEAD
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

=======
" vim-plug
" ========
" {{{
call plug#begin('~/.config/nvim/plugged')

" enhancements
Plug 'Shougo/neocomplete.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'

" Language support
Plug 'tmux-plugins/vim-tmux'
Plug 'elzr/vim-json'

" UI
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'

" Themes
Plug 'reedes/vim-thematic'
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-colors-pencil'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/base16-vim'
Plug 'ajh17/Spacegray.vim'

" Add plugins to &runtimepath
call plug#end()
" }}}


>>>>>>> origin/develop
" vim-thematic
" ------------
" {{{
let g:thematic#defaults = {
\ 'laststatus': 2,
\ }

let g:thematic#themes = {
\ 'ocean-dark': { 'colorscheme': 'base16-ocean',
<<<<<<< HEAD
\		  'background': 'dark',
\		  'airline-theme': 'base16',
\               }
=======
    \		  'background': 'dark',
    \		  'airline-theme': 'base16',
    \               }
>>>>>>> origin/develop
\ }

let g:thematic#theme_name = 'ocean-dark'
" }}}


" airline-vim
" -----------
" {{{
let g:airline_powerline_fonts = 1
<<<<<<< HEAD
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
=======
let g:Powerline_symbols = 'fancy'

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '·'
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_left_sep=' '
let g:airline_right_sep=' '

let g:airline_section_c = airline#section#create(['%{getcwd()}'])
" }}}

" }}}


" Keybindings
" ===========
" {{{
let mapleader = " "
nmap <Leader>bn :bn<Cr>
nmap <Leader>bd :bd<Cr>
nmap == gg=G
" }}}

command! Update :PlugUpdate

>>>>>>> origin/develop
