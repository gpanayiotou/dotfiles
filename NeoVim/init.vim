scriptencoding utf-8

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
syntax enable
set cursorline
let &colorcolumn=join(range(80,999), ",")
" }}}


" 6 multiple windows
" ==================
" {{{
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
"set termguicolors " TODO: enable after option is available
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
" }}}


" 18 reading and writing files
" ============================
" {{{
set fileformats=unix
set backup
set backupdir=~/Backup/nvim/
set autowriteall
set autoread
" }}}


" 19 the swap file
" ================
" {{{
set directory=~/.cache/swap/
set swapfile
" }}}


" I Plugins
" =========
" {{{

" vim-plug
" ========
" {{{
if has('unix')
    call plug#begin('~/.config/nvim/plugged')
elseif has('win32')
    " Future: windows version!
endif

" Dependencies
Plug 'xolox/vim-misc'      " Prerequisite for vim-shell
Plug 'xolox/vim-shell'     " fullscreen, open URL, background command execution
Plug 'tpope/vim-repeat'    " Allow plugins to repeat command maps

" Miscellaneous
Plug 'tpope/vim-fugitive'      " Git commands inside NVim

" File Editing
Plug 'tpope/vim-surround'      " Edit surrounding symbols like word objects
Plug 'scrooloose/syntastic'    " Syntax checker
Plug 'Shougo/neocomplete.vim'  " Autocomplete

" File Navigation
Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file finder

" Language support
Plug 'tmux-plugins/vim-tmux'    " .tmux.conf syntax highlighting
Plug 'elzr/vim-json'            " Better JSON highlighting

" UI
Plug 'vim-airline/vim-airline'      " Status/Tabline
Plug 'mhinz/vim-startify'           " Startpage with MRUs

" Themes
Plug 'reedes/vim-thematic'               " Theme manager
Plug 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plug 'reedes/vim-colors-pencil'          " iA Writer-like theme
Plug 'NLKNguyen/papercolor-theme'        " Google Material-like theme
Plug 'chriskempson/base16-vim'           " Base16 <3

" Add plugins to &runtimepath
call plug#end()
" }}}

" base16-vim
" ----------
" {{{
let base16colorspace=256
" }}}

" vim-thematic
" ------------
" {{{
let g:thematic#defaults = {
\ 'airline-theme': 'base16',
\ 'background': 'dark',
\ 'laststatus': 2,
\ }

let g:thematic#themes = {
\ 'ocean-dark':  { 'colorscheme': 'base16-ocean',
\                  'background': 'dark',
\                },
\ 'ocean-light': { 'colorscheme': 'base16-ocean',
\                  'background': 'light',
\                },
\ 'iawriter':    { 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'columns': 75,
\                  'font-size': 20,
\                  'fullscreen': 1,
\                  'laststatus': 0,
\                  'linespace': 8,
\                  'typeface': 'Cousine',
\                },
\ 'paper-light': { 'colorscheme': 'pencil',
\                  'background': 'light',
\                },
\ 'paper-dark': { 'colorscheme': 'pencil',
\                 'background': 'dark',
\               },
\ }

let g:thematic#theme_name = 'ocean-dark'
" }}}

" airline-vim
" -----------
" {{{
" UI symbols
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
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

" Tabline extension
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Whitespace extension
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '·'
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']

" Custom sections
let g:airline_section_c = airline#section#create(['%{getcwd()}'])
" }}}
" }}}


" II Autocommands
" ==============
" {{{
au FileType vim setlocal foldmethod=marker
" }}}


" III Keybindings
" ==============
" {{{
let mapleader = " "
noremap <Esc> <Esc>:nohl<CR><Esc>

" Buffer Navigation
nmap <Leader>bn :bn<Cr>
nmap <Leader>bd :bd<Cr>

" Editing
nmap == gg=G

" Window Navigation
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <Leader>o :only<CR>
" }}}


" IV Commands
" ============
" {{{
command! Update :PlugUpdate
" }}}

