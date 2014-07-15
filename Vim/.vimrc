scriptencoding utf-8
set encoding=utf-8

" 0 plugins
" =========

call pathogen#infect()
colorscheme base16-ocean

" NERDTree
" --------

let NERDTreeShowHidden=0
let NERDTreeShowBookmarks=1

" Emmet
" -----

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" CtrlP
" -----

" nearest ancestor that contains: .git .hg .svn .bzr _darcs 
let g:ctrlp_working_path_mode = 'r' 
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/]\.(git|hg|svn)$
\ |(Desktop|Libary|Music|Videos|Pictures)',
\ 'file': '\v\.(jpg|png|gif|psd|jpeg
\ |exe|so|o|dat|dmg|nib|xib|bat|egg|cer|DS_Store|pkg
\ |tar|bz|gz|zip|rar|iso|cdr|bz2
\ |mp3|mp4|mov|avi|flv|torrent|wmv
\ |pdf|epub|mobi|chm|doc|docx|lit|gdoc)$'
\ }


" 1 important
" ===========

set nocompatible                                          " Always use vim mode


" 2 moving around, searching and patterns
" =======================================

set incsearch                                       " enable incremental search
set ignorecase                                  " Use case insensitive search,
set smartcase                               " except when using capital letters
set startofline                        " jump commands go to first char in line

" 4 displaying text
" =================

set scrolloff=1              " number of screen lines to show around the cursor
set nowrap
set linebreak                     " wrap long lines at a character in 'breakat'
set cmdheight=2
set list                                           " show whitespace characters
set listchars=tab:»\ ,eol:¬,trail:·
set number
set numberwidth=2
set lines=120
set columns=999


" 5 syntax, highlighting and spelling
" ===================================

syntax on
set hlsearch                                         " Highlight search results
set background=dark
set cursorline                                         " highlight current line
let &colorcolumn="80,".join(range(120,999),",")    " line 80 and beyond warning
set nospell
filetype plugin indent on                         " identify syntax by filetype

highlight ColorColumn ctermbg=235 guibg=#343d46
highlight Cursor gui=reverse guifg=NONE guibg=NONE
highlight iCursor guifg=#eff1f5 guibg=#a3be8c


" 6 multiple windows
" ==================

set laststatus=2                                    " always show a status line
set statusline=file:\ %t\ %y%h%m%r%=line:%l/%L\ col:%c
set hidden             " don't unload a buffer when no longer shown in a window
set winheight=5                                  " set this before winminheight
set winwidth=100                                      " width for active window
set winminheight=5
set winheight=999                                     " height of active window
set splitright


" 8 terminal
" ==========

set t_Co=256                                           " 256 color console mode
set guicursor=n-v-c:Cursor-blinkon0
set guicursor+=i-ci:ver10-iCursor-blinkwait500-blinkon800-blinkoff400
set guicursor+=r-cr:hor5-iCursor-blinkwait500-blinkon800-blinkoff400
set title                                             " enable title in console


" 9 using the mouse
" =================

set mouse=a
set mousehide


" 10 gui
" ======

set guioptions-=m                                              "remove menu bar
set guioptions-=T                                               "remove toolbar
set guioptions-=r                                 "remove right-hand scroll bar
set guioptions-=L                                  "remove left-hand scroll bar
set guiheadroom=0                                " extra space for gui elements
set guifont=consolas:h14                                    " graphical font
set linespace=2


" 11 messages and info
" ====================

set showcmd                                " show typed commands in status line
set ruler
set showmode
set confirm
set visualbell                             " Use visual bell instead of beeping


" 14 editing text
" ===============

set backspace=indent,eol,start            " Allow backspacing over autoindent,
                                       " line breaks and start of insert action
set nrformats-=octal                          " no octal numbers with leading 0
set showmatch                                       " highlight matching braces
set textwidth=0                                   " don't force a max textwidth


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

set foldmethod=manual
set foldmarker={{{,}}}


" 18 mapping
" ==========

set notimeout ttimeout ttimeoutlen=200         " Quickly time out on keycodes,
                                               " but never time out on mappings


" 19 reading and writing file
" ===========================

set backup                                          " backup before overwriting
if &backupdir =~# '^\.,'
  let &backupdir = "d:\Backup\Vim," . &backupdir
endif

"set endofline
set autowriteall


" 20 the swap file
" ================

set swapfile
if &directory =~# '^\.,'
  let &directory = "c:\users\geo\vimfiles\swap," . &directory
endif


" 21 command line editing
" =======================

set wildmenu                                   " Better command-line completion
set wildmode=longest:full,full
set wildignorecase                                   " ignore case in filenames
set undofile
if &undodir =~# '^\.\%(,\|$\)'
  let &undodir = "c:\users\geo\vimfiles\undo," . &undodir
endif


" 22 executing external commands
" =============================

set shell=\"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe\"


" 25 multi-byte characters
" ========================

set encoding=utf-8                              " encoding for displaying files
set fileencoding=utf-8                             " encoding for writing files

" 26 various
" ==========

set gdefault                                   " substitute globally by default


" uncategorized
" =============


if &term =~ "xterm\\|rxvt"
  " use a green cursor in insert mode
  let &t_SI = "\<Esc>]12;#90a959\x7"
  " use a white cursor otherwise
  let &t_EI = "\<Esc>]12;#dfe1e8\x7"
  silent !echo -ne "\033]12;\#ac414\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

set wildignore+=*\\tmp\\*,*.swp,*.exe,
set wildignore+=*.rar,*.7z,*.zip
set wildignore+=*.jpg,*.bmp,*.gif
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip                              " Linux


" custom mappings
" ===============

let mapleader = ","
map Y y$
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>
vmap <C-C> "+yy$
nnoremap <C-L> :nohl<CR><C-L>
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" TComment
" --------

map <leader>c <c-_><c-_>

" emmet
" -----

let g:user_emmet_leader_key='<C-y>'


" CamelCaseMotion
" ---------------

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie


" autocommands
" ============

augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }


" Language Specific
" =================

" CoffeeScript
" ------------

autocmd FileType litcoffee runtime ftplugin/coffee.vim

" C#
" --

" Folding : http://vim.wikia.com/wiki/Syntax-based_folding, see comment 
" by Ostrygen: 
au FileType cs set omnifunc=syntaxcomplete#Complete
au FileType cs set foldmethod=marker
au FileType cs set foldmarker={,}
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
au FileType cs set foldlevelstart=2  

