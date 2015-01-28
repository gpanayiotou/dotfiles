set encoding=utf-8         " Vim can not recognize the character code of .vimrc
                           " when scriptencoding is defined before set encoding
scriptencoding utf-8


" 0 variables
" ===========

  if has('win32')
    let $VIMBASE = $HOME . '/vimfiles'
  elseif has('unix')
    let $VIMBASE = $HOME . '/.vim'
  endif


" 1 important
" ===========

  set nocompatible
  set cpoptions+=$                      " Show boundaries of to be changed text


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
  set listchars=tab:↹\ ,trail:·,eol:¬
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

  set showcmd                              " Show typed commands in status line
  set ruler
  set showmode
  set confirm
  set visualbell                           " Use visual bell instead of beeping


" 14 editing text
" ===============

  set backspace=indent,eol,start       " Allow backspacing over autoindent,
                                       " Line breaks and start of insert action
  set nrformats-=octal                 " No octal numbers with leading 0
  set showmatch                        " Highlight matching braces
  set textwidth=0                      " Don't force a max textwidth
  " Complete in insert mode from:
  "   current, all windows, all other buffers, tags
  set complete=.,w,b,t


" 15 tabs and indenting
" =====================

  set expandtab                 " expand tabs to spaces
  set smartindent               " smart indenten based on blocks
  set autoindent                " autointend with '='; '=G' for the entire file
  set shiftwidth=2              " number of spaces to replace a tab with
  set softtabstop=2             " tabsize in insert mode
  set tabstop=2                 " width of the tab character
  set shiftround                " round indentation to multiple of shiftwidth


" 16 folding
" ==========

  set foldmethod=indent
  set foldmarker=>>>,<<<
  set foldcolumn=2
  set foldlevel=1
  set foldlevelstart=1
  set foldnestmax=3


" 18 mapping
" ==========

  set notimeout ttimeout ttimeoutlen=50        " Quickly time out on keycodes,
                                               " but never time out on mappings


" 19 reading and writing file
" ===========================

  set backup                                 " Backup before overwriting
  set backupdir=$HOME/Backup/Files/
  set autowriteall
  set modelines=0                            " Disable modeline vulnerabilities


" 20 the swap file
" ================

  set swapfile
  set directory=$VIMBASE/swap/


" 21 command line editing
" =======================

  " see ignore.vim for wildignore settings
  set wildmenu                                 " Better command-line completion
  set wildmode=list:longest
  set wildignorecase                                 " ignore case in filenames
  set undodir=$VIMBASE/undo
  set history=100


" 22 Executing External Commands
" ==============================

  " Set the shell
  if has('unix')
    set shell=bash
  elseif has('win32')
    set shell=cmd.exe
  endif

  set shellslash                              " WIN: use forward slash in paths


" 26 multi-byte characters
" ========================

  set encoding=utf-8                            " encoding for displaying files
  set fileencoding=utf-8                        " encoding for writing files


" 27 various
" ==========

  set gdefault                             " Substitute globally by default
  set sessionoptions-=help                 " Don't want to restore help buffers
  set virtualedit=all                      " NOTE: testing


" Imports
" =======

  source $VIMBASE/keymappings.vim
  source $VIMBASE/plugins.vim
  source $VIMBASE/autocommands.vim
  source $VIMBASE/themes.vim
  source $VIMBASE/ignore.vim

