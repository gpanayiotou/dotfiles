" Neobundle
" =========
" {{{
if has('vim_starting')
  set nocompatible
  set runtimepath+=$VIMBASE/bundle/neobundle.vim/
endif

call neobundle#begin(expand($VIMBASE . "/bundle/"))
  NeoBundleFetch 'Shougo/neobundle.vim'

  " Libraries, Dependencies
  " {{{
  NeoBundle 'MarcWeber/vim-addon-mw-utils'
  NeoBundle 'xolox/vim-misc'
  NeoBundle 'xolox/vim-shell'
  NeoBundle 'tomtom/tlib_vim'
  NeoBundle 'Shougo/vimproc.vim'
  NeoBundle 'tpope/vim-dispatch'        " Run compiler (:make) asynchronously
  NeoBundle 'tpope/vim-repeat'         " Allow plugins to repeat command maps
  " }}}

  " Additional Language Support
  " {{{

  " JavaScript
  NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
  NeoBundleLazy 'othree/javascript-libraries-syntax.vim', {'autoload':{'filetypes':['javascript']}}
  NeoBundleLazy 'walm/jshint.vim', {'autoload':{'filetypes':['javascript']}}
  NeoBundle 'jamescarr/snipmate-nodejs'
  NeoBundle 'mintplant/vim-literate-coffeescript'
  NeoBundle 'kchmck/vim-coffee-script'

  " Miscellaneous
  NeoBundle 'firegoby/SASS-Snippets'
  NeoBundle 'gabrielelana/vim-markdown'
  NeoBundle 'gorodinskiy/vim-coloresque'
  NeoBundle 'vim-scripts/vim-nfo'
  NeoBundle 'othree/yajs.vim'
  " }}}

  " Functionality Enhancements
  " {{{
  NeoBundle 'kien/ctrlp.vim'               " Fuzzy file finder
  NeoBundle 'Shougo/vimshell.vim'
  NeoBundle 'tpope/vim-fugitive'           " Git commands inside vim
  NeoBundle 'easymotion/vim-easymotion'    " Easier visual moving around
  NeoBundle 'rking/ag.vim'                 " Ag search integration
  NeoBundle 'scrooloose/nerdcommenter'     " Toggle comment blocks
  NeoBundle 'scrooloose/syntastic'         " Syntax checker
  NeoBundle 'Raimondi/delimitMate'         " automatic closing of quotes, etc
  NeoBundle 'reedes/vim-lexical'           " enhances build in spell checker
  NeoBundle 'reedes/vim-wheel'             " Screen-anchored scrolling
  NeoBundle 'vim-scripts/gitignore'        " gitignore to wildignore
  NeoBundle 'tpope/vim-surround'           " Edit surrounding symbols
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'vim-scripts/matchit.zip'      " Match more symbols with %
  NeoBundle 'vim-scripts/python_match.vim' " Same as matchit for python
  NeoBundle 'wikitopian/hardmode'          " Disable misleading keybindings
  NeoBundle 'tmhedberg/SimpylFold'          " Better folding for Python
  " }}}

  " UI Enhancements
  " {{{
  NeoBundle 'bling/vim-airline'                      " status bar enhancement
  NeoBundle 'airblade/vim-gitgutter'                 " git status on sideline
  NeoBundle 'junegunn/limelight.vim'            " centered fullscreen editing
  NeoBundle 'junegunn/goyo.vim'
  NeoBundle 'bling/vim-bufferline'
  NeoBundle 'haya14busa/incsearch.vim'
  NeoBundle 'kien/rainbow_parentheses.vim'
  NeoBundle 'guiniol/vim-showspaces'
  " }}}

  " Themes
  " {{{
  NeoBundle 'reedes/vim-thematic'                        " Theme organisation
  NeoBundle 'reedes/vim-pencil'
  NeoBundle 'chriskempson/base16-vim'         " The mother of all colorthemes
  NeoBundle 'reedes/vim-colors-pencil'                 " iawriter colorscheme
  NeoBundle 'NLKNguyen/papercolor-theme'
  " }}}
call neobundle#end()

filetype plugin indent on
NeoBundleCheck
" }}}


" Enhanced JavaScript Syntax
" ==========================
" {{{
" autocmd FileType javascript call JavaScriptFold()
" }}}

" Incsearch
" =========
" {{{
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
let g:incsearch#consistent_n_direction = 1
" }}}


" Ag.vim
" ======
" {{{
if has('win32')
  let g:agprg='ag.exe --column'
elseif has('unix')
  let g:agprg='ag --column'
endif
" }}}


" Goyo
" ====
" {{{
function! GoyoBefore()
  Limelight
  set number
  set relativenumber
endfunction

function! GoyoAfter()
  Limelight!
  set number
  set relativenumber
endfunction

nnoremap <s-F11> :Goyo<CR>
let g:goyo_width=100
let g:goyo_margin_top=0
let g:goyo_margin_bottom=2
let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]
" }}}


" Emmet
" =====
" {{{
let g:user_emmet_install_global = 0                   " only use for html/css
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-y>'          " still needs a trailing comma ,
" }}}


" Airline
" =======
" {{{
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '·'
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

let g:bufferline_echo = 0

let g:airline_section_c = airline#section#create(['%{getcwd()}'])
" }}}


" Markdown
" ========
" {{{
let g:markdown_enable_folding = 1
" }}}


" Vim-Shell
" =========
" {{{
let g:shell_fullscreen_always_on_top = 0
" }}}


" Vimshell
" ========
" {{{
let g:vimshell_enable_smart_case = 1
let g:vimshell_prompt = '➤  '
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_right_prompt = 'system("date")'
" }}}


" NERDCommenter
" =============
" {{{
map <leader>tc NERDComToggleComment
" }}}


" Syntastic
" =========
" {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}


" Rainbow Parenthesis
" ===================
" {{{
" Always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" }}}


" Lexical
" =======
" {{{
let g:lexical#spelllang = ['en_us','de_de']
let g:lexical#thesaurus = [$VIMBASE . '/thesaurus/mthesaur.txt',]

augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
" }}}


" Pencil
" ======
" {{{
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType latex        call pencil#init({'wrap': 'soft'})
  autocmd FileType text         call pencil#init({'wrap': 'soft'})
augroup END
" }}}


" Vim Wheel
" =========
" {{{
let g:wheel#map#up   = '<c-k>'
let g:wheel#map#down = '<c-j>'
" }}}


" Vim Showspaces
" ==============
" {{{
let b:showSpaces = 1
let b:showSpacesConceal = 1
" }}}


" easymotion
" ==========
" {{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" Vim-Thematic
" ============
" {{{

" Defaults
" --------
" {{{
let g:thematic#defaults = {
  \'fullscreen-background-color-fix': 1,
  \'ruler': 1,
  \'fullscreen': 1,
  \'laststatus': 2,
  \'linespace': 4,
  \'font-size': 10,
  \'typeface': 'hack',
\}
" }}}

" Themes
" ------
" {{{
let g:thematic#themes = {
  \'ocean': {
    \ 'colorscheme': 'base16-ocean',
    \ 'background': 'dark',
    \ 'airline-theme': 'base16'
  \},
  \'papercolor': {
    \ 'colorscheme': 'PaperColor',
    \ 'background': 'light',
  \},
  \'flat': {
    \ 'colorscheme': 'base16-flat',
    \ 'background': 'dark',
    \ 'airline-theme': 'base16',
  \},
  \'pencil': {
    \ 'colorscheme': 'pencil',
    \ 'background': 'light',
    \ 'typeface': 'Cousine',
    \ 'airline-theme': 'light',
  \ },
  \'iawriter': {
    \ 'colorscheme': 'pencil',
    \ 'background': 'light',
    \ 'columns': 85,
    \ 'font-size': 16,
    \ 'fullscreen': 1,
    \ 'laststatus': 0,
    \ 'linespace': 8,
    \ 'typeface': 'Cousine',
    \ 'airline-theme': 'light',
  \},
\}

let g:thematic#theme_name = 'ocean'
" }}}


" Autocommands
" ------------
" {{{
autocmd BufEnter *.js Thematic flat
autocmd BufEnter *.vim Thematic ocean
autocmd BufEnter *.md Thematic iawriter

" Set custom hightlights for all colorschemes
" NOTE: No setting in Thematic for this
augroup CursorColors
  autocmd!
  " Add custom highlights every time a theme is loaded
  autocmd colorscheme * highlight icursor guifg=#eff1f5 guibg=#a3be8c
  " WORKAROUND: Since the above doesn't work on VimEnter,
  "   hook the same thing into something else
  autocmd VimResized * highlight icursor guifg=#eff1f5 guibg=#a3be8c
augroup END
" }}}
" }}}


" CTRLP
" =====
" {{{
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|tmp|temp)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" SimpylFold
" ==========
" {{{
let g:SimpylFold_docstring_preview=1
" }}}

