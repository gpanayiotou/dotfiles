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


" 2 Moving around, Searching and Patterns
" =======================================
" {{{
set incsearch
set autochdir
set magic
set ignorecase
set smartcase
" }}}


" 4 Displaying Text
" =================
" {{{
set number
set relativenumber
set scrolloff=3
set sidescrolloff=3
set nowrap
set breakindent
set breakindentopt=shift:2
set fillchars=vert:┃
set lazyredraw
set list
set listchars=nbsp:⦸              " U+29B8, UTF-8: E2 A6 B8
set listchars+=tab:↹↹             " U+21B9, UTF-8: E2 86 B9
set listchars+=extends:»          " U+00BB, UTF-8: C2 BB
set listchars+=precedes:«         " U+00AB, UTF-8: C2 AB
set listchars+=trail:•            " U+2022, UTF-8: E2 80 A2
let &showbreak='⤷ '               " U+2937, UTF-8: E2 A4 B7
" }}}


" 5 Syntax, Highlighting and Spelling
" ===================================
" {{{
set nospell
set spelllang=en_us,de_de
set hlsearch
syntax enable
set cursorline
let &colorcolumn = join(range(80, 999), ',')
set highlight+=N:DiffText         " Make current line number stand out
set highlight+=c:LineNr           " Blend vertical separators with line numbers
set highlight+=~:ColorColumn      " Color space below the buffer
set spellcapcheck=                " Disable capital letter check
" }}}


" 6 Multiple Windows
" ==================
" {{{
set splitbelow
set splitright
set switchbuf=usetab
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


" 11 Messages and Info
" ====================
" {{{
set showcmd
set shortmess+=A                    " Ignore annoying swapfile messages
set shortmess+=I                    " No splash screen
set shortmess+=O                    " File-read message overwrites previous
set shortmess+=T                    " Truncate non-file messages in middle
set shortmess+=W                    " Don't echo "[w]"/"[written]" when writing
set shortmess+=a                    " Use abbreviations in messages
set shortmess+=o                    " Overwrite file-written messages
set shortmess+=t                    " Truncate file messages at start
" }}}


" 13 Editing Text
" ===============
" {{{
set backspace=indent,start,eol
set nojoinspaces               " Don't use two spaces when joining
set textwidth=80               " Wrap width for text autowrapping
set formatoptions-=t           " Remove automatic text wrapping flags
set wrapmargin=0               " Automatic text wrapping based on terminal size
" }}}


" 14 Tabs and Indenting
" =====================
" {{{
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab
set softtabstop=4
set expandtab
set autoindent
set smartindent
" }}}


" 15 Folding
" ==========
" {{{
set foldmethod=syntax
set foldlevelstart=1                      " Start buffer with some folds closed
" }}}


" 18 Reading and Writing Files
" ============================
" {{{
set fileformats=unix
if exists('$SUDO_USER')
    set nobackup
    set nowritebackup
else
    set backupdir=$NVIMHOME/tmp/backup
endif
set autowriteall
set autoread
" }}}


" 19 The Swap File
" ================
" {{{
if exists('$SUDO_USER')
    set noswapfile
else
    set swapfile
    set directory=$NVIMHOME/tmp/swap
endif
" }}}


" 20 Command Line Editing
" =======================
" {{{
set wildmenu
set wildmode=longest:full,full
set wildcharm=<C-z>              " Tab through incremental searches
if has('win32') || has('win64')
  set wildignore+=+=*\\tmp\\*,*.swp,*.zip,*.exe
else
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip
endif
if exists('$SUDO_USER')
    set noundofile
else
  set undofile
  set undodir=$NVIMHOME/tmp/undo
endif
" }}}


" 21 Executing External Commands
" ==============================
" {{{
if has('unix')
  set shell=/bin/bash
endif
" }}}


" 26 Various
" ==========
" {{{
set virtualedit=block
if has ('win32')
    let g:python3_host_prog = 'c:\opt\Python3\python.exe'
endif
" }}}


" Plugins
" =======
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
Plug 'sirver/ultisnips'            " TextMate snippet features in Vim
Plug 'honza/vim-snippets'          " Snippets!
Plug 'qwertologe/nextval.vim'      " In-/Decrease additional number types

" File Navigation
Plug 'ctrlpvim/ctrlp.vim'        " Fuzzy file finder

" File type support
Plug 'tmux-plugins/vim-tmux'    " .tmux.conf syntax highlighting
Plug 'elzr/vim-json'            " Better JSON highlighting
Plug 'summivox/vim-nfo'         " Non-ASCII-character highlighting
Plug 'tpope/vim-haml'           " latest SASS support

" UI
Plug 'vim-airline/vim-airline'      " Status/Tabline
Plug 'mhinz/vim-startify'           " Startpage with MRUs
Plug 'airblade/vim-gitgutter'       " Git diff in the gutter
Plug 'wincent/loupe'                " Enhanced in-file search
Plug 'wincent/terminus'             " GUI features in terminal (cursor, mouse)
Plug 'junegunn/goyo.vim'            " Centered text
Plug 'junegunn/limelight.vim'       " Highlight current scope

" Themes
Plug 'reedes/vim-thematic'               " Theme manager
Plug 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plug 'reedes/vim-colors-pencil'          " iA Writer-like theme
Plug 'NLKNguyen/papercolor-theme'        " Google Material-like theme
Plug 'chriskempson/base16-vim'           " Base16 <3

" Add plugins to &runtimepath
call plug#end()
" }}}

" vim-shell
" ---------
" {{{
let g:shell_fullscreen_items = 'mTe'       " menu, toolbar, tabline
let g:shell_fullscreen_always_on_top = 0
let g:shell_mappings_enabled = 0
" }}}

" Goyo
" ----
" {{{
let g:goyo_width = 100       " In characters
let g:goyo_height = 90       " In percent
let g:goyo_linenr = 0

function! s:goyo_enter()
    silent Fullscreen
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
endfunction

function! s:goyo_leave()
    silent Fullscreen
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

inoremap <F11> <C-o>:Goyo<CR>
nnoremap <F11> :Goyo<CR>
" }}}

" netrw
" -----
" {{{
let g:netrw_dirhistmax = 0
if has('unix')
  let g:netrw_home=$XDG_CACHE_HOME . '/ nvim'
endif
" }}}

" Ctrlp
" -----
" {{{
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_show_hidden = 1
" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Use .git folder as root dir identifier
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['package.json']
" Open already opened files in new pane
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }
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
  \ 'ocean-dark':      { 'colorscheme': 'base16-ocean',
  \                      'background': 'dark',
  \                    },
  \ 'ocean-light':     { 'colorscheme': 'base16-ocean',
  \                      'background': 'light',
  \                    },
  \ 'oceanic-dark':    { 'colorscheme': 'base16-oceanic',
  \                      'background': 'dark',
  \                    },
  \ 'oceanic-light':   { 'colorscheme': 'base16-oceanic',
  \                      'background': 'light',
  \                    },
  \ 'iawriter':        { 'colorscheme': 'pencil',
  \                      'background': 'light',
  \                      'columns': 75,
  \                      'font-size': 20,
  \                      'fullscreen': 1,
  \                      'laststatus': 0,
  \                      'linespace': 8,
  \                      'typeface': 'Cousine',
  \                    },
  \ 'pencil-light':    { 'colorscheme': 'pencil',
  \                      'background': 'light',
  \                    },
  \ 'pencil-dark':     { 'colorscheme': 'pencil',
  \                      'background': 'dark',
  \                    },
\ }

let g:thematic#theme_name = 'ocean-dark'
" }}}

" vim-airline
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
" Replace git status with CWD and formatoptions
let g:airline_section_b = airline#section#create(['%{getcwd()}'])
" }}}


" deoplete
" --------
" {{{
let g:deoplete#enable_at_startup = 1
" }}}

" }}}

