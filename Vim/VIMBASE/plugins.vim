" Neobundle
" =========

  if has('vim_starting')
    set nocompatible
    set runtimepath+=$VIMBASE/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand($VIMBASE . "/bundle/"))
    NeoBundleFetch 'Shougo/neobundle.vim'

    " libraries
    NeoBundle 'MarcWeber/vim-addon-mw-utils'
    NeoBundle 'xolox/vim-misc'
    NeoBundle 'xolox/vim-shell'
    NeoBundle 'tomtom/tlib_vim'
    NeoBundle 'Shougo/vimproc.vim'

    " Coding
    NeoBundle 'Raimondi/delimitMate'
    NeoBundle 'tpope/vim-obsession'
    NeoBundle 'tpope/vim-repeat'
    NeoBundle 'rdolgushin/gitignore.vim'
    NeoBundle 'tpope/vim-dispatch'
    NeoBundle 'Lokaltog/vim-easymotion'
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'garbas/vim-snipmate'
    NeoBundle 'vim-scripts/camelcasemotion'
    NeoBundle 'vim-scripts/argtextobj.vim'
    NeoBundle 'vim-scripts/matchit.zip'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'AndrewRadev/splitjoin.vim'
    NeoBundle 'vim-scripts/gitignore'
    NeoBundle 'vim-scripts/vim-nfo'

    " Additional Language Support
    NeoBundle 'firegoby/SASS-Snippets'
    NeoBundle 'gabrielelana/vim-markdown' " MD support (use with colors-pencil)
    NeoBundle 'gorodinskiy/vim-coloresque'
    NeoBundle 'mintplant/vim-literate-coffeescript'
    NeoBundle 'pangloss/vim-javascript'
    NeoBundle 'kchmck/vim-coffee-script'

    " Functionality Enhancements
    NeoBundle 'tpope/vim-fugitive'                    " Git commands inside vim
    NeoBundle 'rking/ag.vim'                            " Ag search integration
    NeoBundle 'scrooloose/nerdcommenter'                " Toggle comment blocks
    NeoBundle 'scrooloose/syntastic'                           " Syntax checker
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neocomplete.vim'                  " Autocompletion engine
    NeoBundle 'reedes/vim-lexical'
    NeoBundle 'reedes/vim-wheel'                    " Screen-anchored scrolling

    " UI Enhancements
    NeoBundle 'bling/vim-airline'                      " status bar enhancement
    NeoBundle 'airblade/vim-gitgutter'                 " git status on sideline
    NeoBundle 'junegunn/limelight.vim'            " centered fullscreen editing
    NeoBundle 'junegunn/goyo.vim'
    NeoBundle 'bling/vim-bufferline'
    NeoBundle 'haya14busa/incsearch.vim'
    NeoBundle 'kien/rainbow_parentheses.vim'

    " Themes
    NeoBundle 'reedes/vim-thematic'                        " Theme organisation
    NeoBundle 'reedes/vim-pencil'
    NeoBundle 'chriskempson/base16-vim'         " The mother of all colorthemes
    NeoBundle 'reedes/vim-colors-pencil'                 " iawriter colorscheme
    NeoBundle 'MaxSt/FlatColor'
  call neobundle#end()

  filetype plugin indent on
  NeoBundleCheck


" Incsearch
" =========
  map / <Plug>(incsearch-forward)
  map ? <Plug>(incsearch-backward)
  let g:incsearch#consistent_n_direction = 1


" Unite
" =====
  let g:unite_enable_start_insert = 1                    " start in insert mode
  call unite#filters#matcher_default#use(['matcher_fuzzy'])

  " buffer switching
  " <c-u> will remove any range before the command is called
  nnoremap <Leader>bu :<c-u>Unite -buffer-name=buffers -quick-match buffer<cr>

  " yank history like yankring
  let g:unite_source_history_yank_enable = 1
  nnoremap <Leader>y :<c-u>Unite history/yank<cr>

  " ctrlp replacement
  " <c-u> will remove any range before the command is called
  " -no-split if it should be in full screen mode
  nnoremap <C-p> :<c-u>Unite -default-action=vsplit -buffer-name=files -start-insert file_rec:!<cr>

  let g:unite_source_rec_unit = 50 " Limit number of files shown in Ctrl-p mode

  " Use ag for grepping
  if executable('ag.exe')
    let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif
  nmap <Leader>g :<C-u>Unite -no-split grep:<cr>.<cr>


" Ag.vim
" ======

  if has('win32')
    let g:agprg='ag.exe --column'
  elseif has('unix')
    let g:agprg='ag --column'
  endif

" Goyo
" ====

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

  nnoremap <c-s-F11> :Goyo<CR>
  let g:goyo_width=100
  let g:goyo_margin_top=0
  let g:goyo_margin_bottom=2
  let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]


" Vim-Thematic
" ============

  let g:thematic#defaults = {
    \ 'fullscreen-background-color-fix': 1,
    \ 'ruler': 1,
    \ 'fullscreen': 1,
    \ 'laststatus': 2,
    \ 'linespace': 4,
    \ 'font-size': 10,
    \ 'typeface': 'Inconsolata-g for Powerline',
  \ }

  let g:thematic#themes = {
    \ 'ocean_light': {
    \   'colorscheme': 'base16-ocean',
    \   'background': 'light',
    \   'airline-theme': 'base16'
    \ },
    \ 'ocean_dark': {
    \   'colorscheme': 'base16-ocean',
    \   'background': 'dark',
    \   'airline-theme': 'base16'
    \ },
    \ 'ashes': {
    \   'colorscheme': 'base16-ashes',
    \   'background': 'dark',
    \   'airline-theme': 'base16'
    \ },
    \ 'eighties': {
    \   'colorscheme': 'base16-eighties',
    \   'background': 'dark',
    \   'airline-theme': 'base16'
    \ },
    \ 'soda_light': {
    \   'colorscheme': 'base16-soda',
    \   'background': 'light',
    \   'airline-theme': 'light',
    \ },
    \ 'flatcolor_light': {
    \   'colorscheme': 'FlatColor',
    \   'background': 'light',
    \   'airline-theme': 'light',
    \  },
    \ 'flatcolor_dark': {
    \   'colorscheme': 'FlatColor',
    \   'background': 'dark',
    \   'airline-theme': 'dark',
    \  },
    \ 'iawriter': {
    \   'colorscheme': 'pencil',
    \   'background': 'light',
    \   'columns': 80,
    \   'font-size': 18,
    \   'fullscreen': 1,
    \   'laststatus': 0,
    \   'linespace': 8,
    \   'typeface': 'Cousine',
    \  },
    \ 'jellybeans': {
    \   'colorscheme': 'jellybeans',
    \   'background': 'dark',
    \   'airline-theme': 'jellybeans',
    \ },
  \ }

  let g:thematic#theme_name = 'ocean_dark'


" Emmet
" =====
  let g:user_emmet_install_global = 0                   " only use for html/css
  autocmd FileType html,css EmmetInstall
  let g:user_emmet_leader_key='<C-y>'          " still needs a trailing comma ,


" Airline
" =======

  let g:airline_powerline_fonts = 1
  let g:Powerline_symbols = 'fancy'

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'

  let g:airline#extensions#whitespace#enabled = 1
  let g:airline#extensions#whitespace#symbol = '·'
  let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]

  let g:bufferline_echo = 0

  let g:airline_section_b = airline#section#create(['hunks', 'branch', 'CWD: %{getcwd()}'])

" Markdown
" ========

  let g:markdown_enable_folding = 1


" Vim-Shell
" =========

  let g:shell_fullscreen_always_on_top = 0


" CamelCaseMotion
" ===============

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


" NERDCommenter
" =============

  map <leader>tc NERDComToggleComment


" Syntastic
" =========

  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0


" neocomplete
" ===========

  let g:acp_enableAtStartup = 0                          " Disable AutoComplPop
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
  \ }

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
  endfunction

  " <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y> neocomplete#close_popup()
  inoremap <expr><C-e> neocomplete#cancel_popup()


" FlatColor
" =========

  let g:flatcolor_asphaltbg = 0


" Rainbow Parenthesis
" ===================

  " Always on
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces


" Lexical
" =======

  let g:lexical#spelllang = ['en_us','de_DE']

  augroup lexical
    autocmd!
    autocmd FileType markdown,mkd call lexical#init()
    autocmd FileType textile call lexical#init()
    autocmd FileType text call lexical#init({ 'spell': 0 })
  augroup END


" Pencil
" ======

  augroup pencil
    autocmd!
    autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
    autocmd FileType latex        call pencil#init({'wrap': 'soft'})
    autocmd FileType text         call pencil#init({'wrap': 'soft'})
  augroup END


" Vim Wheel
" =========

  let g:wheel#map#up   = '<c-k>'
  let g:wheel#map#down = '<c-j>'

