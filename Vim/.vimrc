set fileencoding=utf-8
scriptencoding utf-8
set encoding=utf-8

source ~/.vimplugins

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
  set wildmenu                                   " Better command-line completion
  set wildmode=list:longest
  set wildignorecase                                   " ignore case in filenames
  set wildignore+=.hg,.git,.svn                                 " Version control
  set wildignore+=*.aux,*.out,*.toc                    " LaTeX intermediate files
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg                  " binary images
  set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest        " compiled object files
  set wildignore+=*.sw?                                          " Vim swap files
  set wildignore+=*.DS_Store,desktop.ini                  " OS bullshit
  set wildignore+=*.luac                                          " Lua byte code
  set wildignore+=*.pyc                                        " Python byte code
  set undofile
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


" Keyboard Mappings
" =================

  let mapleader = "\ "
  noremap q: :q
  nnoremap <Leader>w :w<CR>
  nnoremap <Leader>bd :bd<CR>
  noremap Y y$
  nmap <C-V> "+gP
  imap <C-V> <ESC><C-V>
  vmap <C-C> "+yy$
  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>
  " disable highlighting on ESC and Ctrl-L
  nnoremap <silent> <C-L> :nohls<CR><C-L>
  nnoremap <silent> <ESC> :nohls<CR><ESC>
  " toggle folding
  inoremap <F9> <C-O>za
  nnoremap <F9> za
  onoremap <F9> <C-C>za
  vnoremap <F9> zf
  " Copy & paste to system clipboard with <Space>p and <Space>y:
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P
  " use python style regex instead of weirdo vim ones
  "nnoremap / /\v
  "vnoremap / /\v
  " delete til end of line
  nnoremap D d$
  " center on search results
  nnoremap n nzzzv
  nnoremap N Nzzzv
  " no jumping to next result on *
  nnoremap * *<c-o>
  " L and H to jump to b/eol
  noremap H ^
  noremap L g_
  " jump to b/eol in insert mode
  inoremap <c-a> <esc>I
  inoremap <c-e> <esc>A
  " focus on current fold
  nnoremap <leader>z zMzvzz
  " show yankring
  nnoremap <silent> <F6> :YRShow<cr>
  " formatting
  noremap Q gqip
  noremap <leader>bd :bd<cr>


" Autocommands
" ============

  augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
  augroup END " }

  augroup reload_gvimrc " {
    autocmd!
    autocmd BufWritePost $MYGVIMRC source $MYVIMRC
  augroup END " }

  autocmd FocusLost * :wa                             " auto save on focus lost

  " resize splits on window resize
  au VimResized * exe "normal! \<c-w>="


" Language Specific
" =================

  " ts = number of spaces that <Tab> in file uses
  " sts = number of spaces that <Tab> uses while editing
  " sw = number of spaces to use for (auto)indent step

  " CoffeeScript
  autocmd FileType litcoffee runtime ftplugin/coffee.vim
  autocmd Filetype coffee setlocal ts=2 sts=2 sw=2

  " HTML
  autocmd Filetype html setlocal ts=4 sts=4 sw=4

  " Ruby
  autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

  " JavaScript
  autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
