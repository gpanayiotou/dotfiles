set fileencoding=utf-8
scriptencoding utf-8
set encoding=utf-8

source ~/plugins.vim
source ~/ignore.vim
source ~/keymappings.vim
source ~/autocommands.vim

" 1 important
" ===========
  set nocompatible                                        " always use vim mode


" 2 moving around, searching and patterns
" =======================================
  set incsearch                                     " enable incremental search
  set ignorecase                                 " use case insensitive search,
  set smartcase                             " except when using capital letters
  set startofline                      " jump commands go to first char in line
  set autochdir


" 4 displaying text
" =================
  set scrolloff=3            " number of screen lines to show around the cursor
  set nowrap
  set linebreak                   " wrap long lines at a character in 'breakat'
  set cmdheight=2
  set list                                         " show whitespace characters
  set listchars=tab:»\ ,trail:·,eol:¬
  set number
  set numberwidth=3
  set lines=120
  set columns=999
  set relativenumber                    " line numbers relative to current line


" 5 syntax, highlighting and spelling
" ===================================
  syntax on
  set hlsearch
  set cursorline
  let &colorcolumn="80,".join(range(120,999),",")  " line 80 and beyond warning
  set nospell
  filetype plugin indent on                       " identify syntax by filetype


" 6 multiple windows
" ==================
  set laststatus=2                                  " always show a status line
  set hidden           " don't unload a buffer when no longer shown in a window
  set winheight=5                                " set this before winminheight
  set winwidth=90                                    " width for active window
  set winminheight=5
  set winheight=999                                   " height of active window
  set splitright


" 7 Multiple Tab Pages
" ====================
  set showtabline=2


" 8 terminal
" ==========
  set t_Co=256                                         " 256 color console mode
  set title                                           " enable title in console


" 9 using the mouse
" =================
  set mouse=a
  set mousehide


" 11 messages and info
" =====================
  set showcmd                                " show typed commands in status line
  set ruler
  set showmode
  set confirm
  set visualbell                             " Use visual bell instead of beeping


" 14 editing text
" ===============
  set backspace=indent,eol,start           " Allow backspacing over autoindent,
                                       " line breaks and start of insert action
  set nrformats-=octal                        " no octal numbers with leading 0
  set showmatch                                     " highlight matching braces
  set textwidth=0                                 " don't force a max textwidth


" 15 tabs and indenting
" =====================
  set expandtab                                           " expand tabs to spaces
  set smartindent                                " smart indenten based on blocks
  set autoindent                  " autointend with '='; '=G' for the entire file
  set shiftwidth=2                       " number of spaces to replace a tab with
  set softtabstop=2                                      " tabsize in insert mode
  set tabstop=2                                      " width of the tab character
  set shiftround                    " round indentation to multiple of shiftwidth


" 16 folding
" ==========
  " set to indent while loading file and then to markers while editing
  " augroup vimrc
    " au BufReadPre * setlocal foldmethod=indent
    " au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=indent| endif
  " augroup END
  set foldmethod=indent
  set foldmarker=>>>,<<<
  set foldcolumn=2
  set foldlevel=1
  set foldlevelstart=1
  set foldnestmax=3


" 18 mapping
" ==========
  set notimeout ttimeout ttimeoutlen=50         " Quickly time out on keycodes,
                                               " but never time out on mappings


" 19 reading and writing file
" ===========================
  set backup                                        " backup before overwriting
  set backupdir=~\\Backup\\Files\\
  set autowriteall


" 20 the swap file
" ================
  set swapfile
  set directory=~\\vimfiles\\swap\\


" 21 command line editing
" =======================

  " see ignore.vim for wildignore settings
  set wildmenu                                   " Better command-line completion
  set wildmode=list:longest
  set wildignorecase                                   " ignore case in filenames
  set undodir=~\\vimfiles\\undo\\
  set history=100

" 22 executing external commands
" ==============================
  set shell=bash.exe
  set shellslash


" 26 multi-byte characters
" ========================
  set encoding=utf-8                              " encoding for displaying files
  set fileencoding=utf-8                             " encoding for writing files


" 27 various
" ==========
  set gdefault                                   " substitute globally by default
  set sessionoptions-=help                   " don't want to restore help buffers

