scriptencoding utf-8

" Sections according to :options
" {{{
" 1 important
" 2 moving around, searching and patterns
" 3 tags
" 4 displaying text
" 5 syntax, highlighting and spelling
" 6 multiple windows
" 7 multiple tab pages
" 8 terminal
" 9 using the mouse
"10 printing
"11 messages and info
"12 selecting text
"13 editing text
"14 tabs and indenting
"15 folding
"16 diff mode
"17 mapping
"18 reading and writing files
"19 the swap file
"20 command line editing
"21 executing external commands
"22 running make and jumping to errors
"23 language specific
"24 multi-byte characters
"25 various
" }}}

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
set termguicolors
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
if has('unix')
    set backupdir=~/Backup/nvim/
elseif has('win32')
    set backupdir=~/Backup/Files/
elseif has('win32')
endif
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
    call plug#begin('~/AppData/Local/nvim/plugged')
endif

" Dependencies
Plug 'xolox/vim-misc'      " Prerequisite for vim-shell
Plug 'xolox/vim-shell'     " fullscreen, open URL, background command execution
Plug 'tpope/vim-repeat'    " Allow plugins to repeat command maps
Plug 'equalsraf/neovim-gui-shim' " NeoVim-Qt gui shim

" Miscellaneous
Plug 'tpope/vim-fugitive'          " Git commands inside NVim
Plug 'neomake/neomake'             " Asynchronous :make

" File Editing
Plug 'tpope/vim-surround'          " Edit surrounding symbols like word objects
Plug 'scrooloose/syntastic'        " Syntax checker
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wellle/targets.vim'          " Provides additional text objects

" File Navigation
Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file finder

" File type support
Plug 'tmux-plugins/vim-tmux'    " .tmux.conf syntax highlighting
Plug 'elzr/vim-json'            " Better JSON highlighting
Plug 'summivox/vim-nfo'         " Non-ASCII-character highlighting

" UI
Plug 'vim-airline/vim-airline'      " Status/Tabline
Plug 'mhinz/vim-startify'           " Startpage with MRUs
Plug 'airblade/vim-gitgutter'       " Git diff in the gutter

" Themes
Plug 'reedes/vim-thematic'               " Theme manager
Plug 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plug 'reedes/vim-colors-pencil'          " iA Writer-like theme
Plug 'NLKNguyen/papercolor-theme'        " Google Material-like theme
Plug 'chriskempson/base16-vim'           " Base16 <3
Plug 'jacoborus/tender.vim'              " Tender theme

" Add plugins to &runtimepath
call plug#end()
" }}}

" NeoMake
" -------
" {{{
autocmd! BufReadPost,BufWritePost * Neomake
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
\ 'tender': { 'colorscheme': 'tender',
\             'background': 'dark',
\             'airline-theme': 'tender'
\           },
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

" tender
" ------
" {{{
" Enable theme
let g:tender_airline = 1
" }}}

" deoplete
" --------
" {{{
let g:deoplete#enable_at_startup = 1
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

