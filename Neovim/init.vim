scriptencoding utf-8

" Sections according to :options

" 0 Variables
" ===========
" {{{
if has('win32') || has ('win64')
    let $NVIMHOME = $HOME . "\\AppData\\Local\\nvim"
else
    let $NVIMHOME = $HOME . "/.config/nvim"
endif
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
let &colorcolumn = '81,' . join(range(101, 999), ',')
" }}}


" 6 Multiple Windows
" ==================
" {{{
set splitbelow
set splitright
" }}}


" 7 Multiple Tab Pages
" ====================
" {{{
set showtabline=1                              " Show tabline with tabs => 2
" }}}


" 8 Terminal
" ==========
" {{{
set t_Co=256
set termguicolors
set title
" }}}


" 14 Tabs and Indenting
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


" 15 Folding
" ==========
" {{{
set foldlevelstart=1                      " Start buffer with some folds closed
" }}}


" 18 Reading and writing files
" ============================
" {{{
set fileformats=unix
set nobackup              " Use Git!
set autowriteall
set autoread
" }}}


" 19 The swap file
" ================
" {{{
set swapfile
set directory=$NVIMHOME/tmp/swap
" }}}

" 20 Command line editing
" =======================
" {{{
set wildcharm=<C-z>     " Needed for tabbing through incremental searches
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
Plug 'xolox/vim-misc'                     " Prerequisite for vim-shell
Plug 'tpope/vim-repeat'                   " Allow plugins to repeat command maps
Plug 'equalsraf/neovim-gui-shim'          " NeoVim-Qt gui shim

" Miscellaneous
Plug 'tpope/vim-fugitive'                 " Git commands inside NVim
Plug 'neomake/neomake'                    " Asynchronous :make
Plug 'xolox/vim-shell'                    " Improved integration with shells

" File Editing
Plug 'tpope/vim-surround'          " Edit surrounding symbols like word objects
Plug 'scrooloose/syntastic'        " Syntax checker
Plug 'wellle/targets.vim'          " Provides additional text objects
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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
Plug 'wincent/loupe'                " Enhanced in-file search
Plug 'wincent/terminus'             " GUI features in terminal (cursor, mouse)

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
            \ 'ocean-dark': { 'colorscheme': 'base16-ocean',
            \                 'background': 'dark',
            \               },
            \ 'grayscale-light': { 'colorscheme': 'base16-grayscale-light',
            \                     'background': 'light',
            \                   },
            \ 'grayscale-dark': { 'colorscheme': 'base16-grayscale-light',
            \                     'background': 'dark',
            \                   },
            \ 'ocean-light': { 'colorscheme': 'base16-ocean',
            \                  'background': 'light',
            \                },
            \ 'iawriter': { 'colorscheme': 'pencil',
            \               'background': 'light',
            \               'columns': 75,
            \               'font-size': 20,
            \               'fullscreen': 1,
            \               'laststatus': 0,
            \               'linespace': 8,
            \               'typeface': 'Cousine',
            \             },
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

" }}}


" II Autocommands
" ==============
" {{{
autocmd FileType vim setlocal foldmethod=marker

" Turn off some features in non-current windows
if exists('+colorcolumn')
    autocmd BufEnter,FocusGained,VimEnter,WinEnter * let &l:colorcolumn = '81,' . join(range(101, 999), ',')
    autocmd FocusLost,WinLeave * let &l:colorcolumn = join(range(1, 999), ',')
endif
" }}}


" IV Commands
" ============
" {{{
" }}}


" V Global Settings
" =================
" {{{
if has ('win32')
    let g:python3_host_prog = 'c:\opt\Python3\python.exe'
endif

" Symbol for wrapped lines
if has('linebreak')
    let &showbreak='⤷ '                 " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
endif
" }}}

