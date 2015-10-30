set encoding=utf-8         " Vim can not recognize the character code of .vimrc
                           " when scriptencoding is defined before set encoding
scriptencoding utf-8

" Titles according to :options

" 0 variables
" ===========
" {{{
if has('win32')
  let $VIMBASE = $HOME . '/vimfiles'
elseif has('unix')
  let $VIMBASE = $HOME . '/.vim'
endif
" }}}


" 1 important
" ===========
" {{{
set nocompatible
set cpoptions+=$                      " Show boundaries of to be changed text
" }}}


" 2 moving around, searching and patterns
" =======================================
" {{{
set incsearch         " enable incremental search
set ignorecase        " use case insensitive search,
set smartcase         " except when using capital letters
set startofline       " jump commands go to first char in line
set noautochdir       " some plugins don't like this enabled (vimshell)
" }}}


" 4 displaying text
" =================
" {{{
  set scrolloff=3            " number of screen lines to show around the cursor
  set nowrap
  set linebreak                   " wrap long lines at a character in 'breakat'
  set cmdheight=2
  set list                                         " show whitespace characters
  set listchars=tab:↹\ ,trail:·,eol:¬
  set number
  set numberwidth=3
  set lines=120
  set columns=999
  set relativenumber                    " line numbers relative to current line
" }}}


" 5 syntax, highlighting and spelling
" ===================================
" {{{
syntax on
set hlsearch
set cursorline
"let &colorcolumn="80,".join(range(120,999),",") " line 80 and beyond warning
set nospell
filetype plugin indent on                       " identify syntax by filetype
" }}}


" 6 multiple windows
" ==================
" {{{
set laststatus=2                                  " always show a status line
set hidden           " don't unload a buffer when no longer shown in a window
set winheight=5                                " set this before winminheight
set winwidth=90                                    " width for active window
set winminheight=5
set winheight=999                                   " height of active window
set splitright
" }}}


" 7 Multiple Tab Pages
" ====================
" {{{
set showtabline=2
" }}}


" 8 terminal
" ==========
" {{{
set t_Co=256                  " 256 color console mode
set title                     " enable title in console
if !empty($CONEMUBUILD)
  set term=pcansi
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
endif
" }}}


" 9 using the mouse
" =================
" {{{
set mouse=a
set mousehide
" }}}


" 11 messages and info
" =====================
" {{{
set showcmd                              " Show typed commands in status line
set ruler
set showmode
set confirm
set visualbell                           " Use visual bell instead of beeping
" }}}


" 14 editing text
" ===============
" {{{
set backspace=indent,eol,start       " Allow backspacing over autoindent,
                                     " Line breaks and start of insert action
set nrformats-=octal                 " No octal numbers with leading 0
set showmatch                        " Highlight matching braces
set textwidth=0                      " Don't force a max textwidth
" Complete in insert mode from:
"   current, all windows, all other buffers, tags
set complete=.,w,b,t
" }}}


" 15 tabs and indenting
" =====================
" {{{
set expandtab                 " expand tabs to spaces
set smartindent               " smart indenten based on blocks
set autoindent                " autointend with '='; '=G' for the entire file
set shiftwidth=2              " number of spaces to replace a tab with
set softtabstop=2             " tabsize in insert mode
set tabstop=2                 " width of the tab character
set shiftround                " round indentation to multiple of shiftwidth
" }}}


" 16 folding
" ==========
" {{{
set foldmethod=syntax
set foldmarker={{{,}}}
set foldcolumn=2
set foldlevel=1
set foldlevelstart=1
set foldnestmax=3
" }}}


" 18 mapping
" ==========
" {{{
set notimeout ttimeout ttimeoutlen=50        " Quickly time out on keycodes,
                                             " but never time out on mappings
" }}}


" 19 reading and writing file
" ===========================
" {{{
set backup                                 " Backup before overwriting
set backupdir=$HOME/Backup/Files/
set autowriteall
set modelines=0                            " Disable modeline vulnerabilities
" }}}


" 20 the swap file
" ================
" {{{
set swapfile
set directory=$VIMBASE/swap/
" }}}


" 21 command line editing
" =======================
" {{{
set wildmenu                                 " Better command-line completion
set wildmode=list:longest
set wildignorecase                                 " ignore case in filenames
set undodir=$VIMBASE/undo
set history=100
set wildignore=*.o,*.obj,*~,*.pyc,*.exe,*.dll,*.manifest
set wildignore+=*.aux,*.out,*.toc
set wildignore+=.env
set wildignore+=.env[0-9]+
set wildignore+=.git,.gitkeep,.hg,.svn
set wildignore+=.tmp
set wildignore+=.coverage
set wildignore+=*DS_Store*
set wildignore+=.sass-cache/
set wildignore+=__pycache__/
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=.tox/**
set wildignore+=.idea/**
set wildignore+=*.egg,*.egg-info
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.DS_Store,desktop.ini

" }}}


" 22 Executing External Commands
" ==============================
" {{{
if has('unix')
  set shell=bash
elseif has('win32')
  set shell=cmd.exe
endif

set shellslash              " WIN: use forward slash in paths
" }}}


" 26 multi-byte characters
" ========================
" {{{
set encoding=utf-8                            " encoding for displaying files
set fileencoding=utf-8                        " encoding for writing files
" }}}


" 27 various
" ==========
" {{{
set gdefault                             " Substitute globally by default
set sessionoptions-=help                 " Don't want to restore help buffers
set virtualedit=all                      " NOTE: testing
" }}}

" Autocommands
" ============
" {{{
" ts = number of spaces that <Tab> in file uses
" sts = number of spaces that <Tab> uses while editing
" sw = number of spaces to use for (auto)indent step
autocmd FileType litcoffee runtime ftplugin/coffee.vim
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Reload .vimrc on changes in any config file
augroup reload_vim_config
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
  autocmd BufWritePost $MYGVIMRC source $MYVIMRC
  autocmd BufWritePost $VIMBASE/*.vim source $MYVIMRC
augroup END

" Auto save on focus lost
autocmd FocusLost * :wa

" Resize splits on window resize
autocmd VimResized * exe "normal! \<c-w>="

" Switch to fold by marker in vim config files
augroup Vimfolding
  autocmd!
  autocmd Filetype vim setlocal foldmethod=marker
augroup END

" Python indent styles according to PEP8
au BufNewFile,BufRead *.py
      \ set tabstop=4
      \ set softtabstop=4
      \ set shiftwidth=4
      \ set textwidth=79
      \ set expandtab
      \ set autoindent
      \ set fileformat=unix


" Imports
" =======
" {{{
source $VIMBASE/keymappings.vim
source $VIMBASE/plugins.vim
" }}}

