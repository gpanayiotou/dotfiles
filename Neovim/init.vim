scriptencoding utf-8

" Sections according to :options

" 00 Variables {{{
if has('win32')
  let $NVIM_CONFIG_HOME = $HOME . "\\AppData\\Local\\nvim"
  let $NVIM_CACHE_HOME = $HOME . "\\.cache\\nvim"
elseif has('unix')
  let $NVIM_CONFIG_HOME = $XDG_CONFIG_HOME . "/nvim"
  let $NVIM_CACHE_HOME = $XDG_CACHE_HOME . "/nvim"
endif
" }}}

" 02 Moving around, Searching and Patterns {{{
set incsearch
set autochdir
set magic
set ignorecase
set smartcase
" }}}

" 04 Displaying Text {{{
set number
set relativenumber
set scrolloff=3                 " Visible lines when scrolling at end of buffer
set sidescrolloff=3
set nowrap
set breakindent
set breakindentopt=shift:2
set fillchars+=vert:┃
set lazyredraw
set list
set listchars+=nbsp:⦸
set listchars+=tab:↹☠
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=trail:•
" set listchars+=eol:¬
let &showbreak='⤷ '
" }}}

" 05 Syntax, Highlighting and Spelling {{{
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

" 06 Multiple Windows {{{
set splitbelow
set splitright
set switchbuf=usetab
set winheight=10
set winminheight=5
set winwidth=120                        " Minimum width for any window
" }}}

" 07 Multiple Tab Pages {{{
set showtabline=2                              " Always show tabline
" }}}

" 08 Terminal {{{
set title
set t_Co=256
set termguicolors
" Prevent Neovim from clobbering the scrollback buffer
set t_ti=
set t_te=
" }}}

" 11 Messages and Info {{{
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

" 13 Editing Text {{{
set backspace=indent,start,eol
set nojoinspaces               " Use only one space when joining lines
set textwidth=80               " Wrap width for text autowrapping
set formatoptions-=t           " Remove automatic text wrapping flags
set wrapmargin=0               " Automatic text wrapping based on terminal size
set complete=.,w,b,u,t,i,kspell
" }}}

" 14 Tabs and Indenting {{{
set tabstop=4
set shiftwidth=4
set shiftround
set smarttab
set softtabstop=4
set expandtab
set autoindent
set smartindent
" }}}

" 15 Folding {{{
set foldmethod=syntax
set foldlevelstart=1                      " Start buffer with some folds closed
" }}}

" 18 Reading and Writing Files {{{
set fileformats=unix
if exists('$SUDO_USER')
  set nobackup
  set nowritebackup
else
  set backup
  set backupdir=$NVIM_CACHE_HOME/backup
endif
set autowriteall
set autoread                   " Automatically reload changed outside of Neovim
" }}}

" 19 The Swap File {{{
if exists('$SUDO_USER')
    set noswapfile
else
  set swapfile
  set directory=$NVIM_CACHE_HOME/swap
endif
" }}}

" 20 Command Line Editing {{{
set wildmenu
set wildmode=longest:full,full
set wildcharm=<C-z>      " Requirement for tabbing through incremental searches

if has('win32') || has('win64')
  set wildignore+=+=*\\tmp\\*
else
  set wildignore+=*/tmp/*
endif
set wildignore+=*.a,*.o,*.so,*.exe
set wildignore+=*.swp,*.tmp,*.temp,*~
set wildignore+=.idea,.git,.hg,.svn
set wildignore+=.node_modules
set wildignore+=*.swp,*.zip
set wildignore+=*.jpg,*.jpeg,*.png,*.bmp,*.gif

if exists('$SUDO_USER')
    set noundofile
else
  set undofile
  set undodir=$NVIM_CACHE_HOME/undo
endif
" }}}

" 21 Executing External Commands {{{
if has('unix')
  set shell=bash
endif
" }}}

" 26 Various {{{
set virtualedit=block,onemore
if has ('win32')
  let g:python3_host_prog = 'c:\opt\Python3\python.exe'
endif

" netrw crapola
let g:netrw_dirhistmax = 0
if has('unix')
  let g:netrw_home=$NVIM_CACHE_HOME
endif
" }}}

source $NVIM_CONFIG_HOME/plugin/plug-settings.vim

