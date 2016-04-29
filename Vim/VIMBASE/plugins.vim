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
  NeoBundle 'tpope/vim-dispatch'       " Run compiler (:make) asynchronously
  NeoBundle 'tpope/vim-repeat'         " Allow plugins to repeat command maps
  " }}}

  " Additional Language Support
  " {{{

  " JavaScript
  NeoBundleLazy 'othree/yajs.vim',
        \ {'autoload': {'filetypes': ['javascript']}}      " ES6-syntax

  " Python
  NeoBundleLazy 'nvie/vim-flake8',
        \ {'autoload': {'filetypes': ['python']}} " PEP8 checking
  NeoBundleLazy 'tmhedberg/SimpylFold',
        \ {'autoload': {'filetypes': ['python']}} " Better folding for Python
  NeoBundleLazy 'vim-scripts/indentpython.vim',
        \ {'autoload': {'filetypes': ['python']}} " Better indenting for Python
  NeoBundleLazy 'vim-scripts/python_match.vim',
        \ {'autoload': {'filetypes': ['python']}} " Same as matchit for python

  " Miscellaneous
  NeoBundle 'firegoby/SASS-Snippets'
  NeoBundle 'gorodinskiy/vim-coloresque'
  NeoBundle 'vim-scripts/vim-nfo'
  " }}}

  " Functionality Enhancements
  " {{{
  NeoBundle 'kien/ctrlp.vim'               " Fuzzy file finder
  NeoBundle 'Shougo/vimshell.vim'
  NeoBundle 'Shougo/neocomplete.vim'       " Auto completion engine
  NeoBundle 'Shougo/neosnippet.vim'        " Snippet support
  NeoBundle 'Shougo/neosnippet-snippets'   " Preconfigure Snippets
  NeoBundle 'honza/vim-snippets'           " Additional snippets
  NeoBundle 'tpope/vim-fugitive'           " Git commands inside vim
  NeoBundle 'rking/ag.vim'                 " Ag search integration
  NeoBundle 'scrooloose/nerdcommenter'     " Toggle comment blocks
  NeoBundle 'scrooloose/syntastic'         " Syntax checker
  NeoBundle 'Raimondi/delimitMate'         " automatic closing of quotes, etc
  NeoBundle 'reedes/vim-wheel'             " Screen-anchored scrolling
  NeoBundle 'vim-scripts/gitignore'        " gitignore to wildignore
  NeoBundle 'tpope/vim-surround'           " Edit surrounding symbols
  NeoBundle 'vim-scripts/matchit.zip'      " Match more symbols with %
  NeoBundle 'Konfekt/FastFold'
  " }}}

  " UI Enhancements
  " {{{
  NeoBundle 'vim-airline/vim-airline'           " status bar enhancement
  NeoBundle 'vim-airline/vim-airline-themes'    " status bar themes
  NeoBundle 'airblade/vim-gitgutter'            " git status on sideline
  NeoBundle 'junegunn/limelight.vim'            " centered fullscreen editing
  NeoBundle 'junegunn/goyo.vim'
  NeoBundle 'bling/vim-bufferline'
  NeoBundle 'haya14busa/incsearch.vim'
  NeoBundle 'kien/rainbow_parentheses.vim'
  NeoBundle 'guiniol/vim-showspaces'
  NeoBundle 'mhinz/vim-startify'
  " }}}

  " Themes
  " {{{
  NeoBundle 'reedes/vim-thematic'             " Theme organisation
  NeoBundle 'reedes/vim-colors-pencil'        " iawriter colorscheme
  NeoBundle 'chriskempson/base16-vim'
  NeoBundle 'NLKNguyen/papercolor-theme'
  NeoBundle 'ajh17/Spacegray.vim'
  " }}}
call neobundle#end()

filetype plugin indent on
NeoBundleCheck
command! NBU NeoBundleUpdate
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


" Airline
" =======
" {{{
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1


let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '·'
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']

let g:airline_left_sep=' '
let g:airline_right_sep=' '

let g:airline_section_c = airline#section#create(['%{getcwd()}'])
" }}}


" Bufferline
" ==========
" {{{
let g:bufferline_echo = 0
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
" }}}


" Syntastic
" =========
" {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5

" Hide the error list (location-list) by default. Show it with :Error
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:synstastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
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


" Vim Wheel
" =========
" {{{
let g:wheel#map#up   = '<C-k>'
let g:wheel#map#down = '<C-j>'
" }}}


" Vim Showspaces
" ==============
" {{{
let b:showSpaces = 1
let b:showSpacesConceal = 1
" }}}


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
  \'typeface': 'Hack',
\}
" }}}

" Themes
" ------
" {{{
let g:thematic#themes = {
  \'ocean-dark': {
    \'colorscheme': 'base16-ocean',
    \'background': 'dark',
    \'airline-theme': 'base16'
  \},
  \'ocean-light': {
    \'colorscheme': 'base16-ocean',
    \'background': 'light',
    \'airline-theme': 'base16'
  \},
  \'railscast-light': {
    \'colorscheme': 'base16-railscast',
    \'background': 'light',
    \'airline-theme': 'base16'
  \},
  \'railscast-dark': {
    \'colorscheme': 'base16-railscast',
    \'background': 'dark',
    \'airline-theme': 'base16'
  \},
  \'papercolor': {
    \'colorscheme': 'PaperColor',
    \'background': 'light',
  \},
  \'flat-dark': {
    \'colorscheme': 'base16-flat',
    \'background': 'dark',
    \'airline-theme': 'base16',
  \},
  \'flat-light': {
    \'colorscheme': 'base16-flat',
    \'background': 'light',
    \'airline-theme': 'base16',
  \},
  \'pencil-dark': {
    \'colorscheme': 'pencil',
    \'background': 'dark',
    \'typeface': 'Cousine',
    \'airline-theme': 'pencil',
  \ },
  \'pencil-light': {
    \'colorscheme': 'pencil',
    \'background': 'light',
    \'typeface': 'Cousine',
    \'airline-theme': 'pencil',
  \ },
  \'iawriter': {
    \'colorscheme': 'pencil',
    \'background': 'light',
    \'columns': 85,
    \'font-size': 16,
    \'fullscreen': 1,
    \'laststatus': 0,
    \'linespace': 8,
    \'typeface': 'Cousine',
    \'airline-theme': 'pencil',
  \},
\}

let g:thematic#theme_name = 'ocean-dark'

" }}}

" Autocommands
" ------------
" {{{
autocmd BufEnter *.md,*.nfo Thematic iawriter

" Custom background color for text on column 80
highlight ColorColumn ctermbg=gray
autocmd BufRead * call matchadd('ColorColumn', '\%80v', 100)

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

" switch between light and dark versions based on time of day
function! SwitchColorVariant()
  let hour = strftime("%H")
  if 7 <= hour && hour <= 18
    set background=light
  else
    set background=dark
  endif
endfunction

"autocmd BufEnter * :call SwitchColorVariant()
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

let g:ctrlp_reuse_window = 'startify'
" }}}


" SimpylFold
" ==========
" {{{
let g:SimpylFold_docstring_preview=1
" }}}


" Neocomplete
" ===========
" {{{
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " don't insert <CR> key
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}}


" Neosnippet
" ==========
" {{{
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
  \ pumvisible() ? "\<C-n>" :
  \ neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

 " Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory=$VIMBASE.'/bundle/vim-snippets/snippets'
" }}}



