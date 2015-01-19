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

    " UI Enhancements
    NeoBundle 'bling/vim-airline'                      " status bar enhancement
    NeoBundle 'airblade/vim-gitgutter'                 " git status on sideline
    NeoBundle 'junegunn/limelight.vim'            " centered fullscreen editing
    NeoBundle 'junegunn/goyo.vim'
    NeoBundle 'bling/vim-bufferline'
    NeoBundle 'haya14busa/incsearch.vim'

    " Themes
    NeoBundle 'reedes/vim-thematic'                        " Theme organisation
    NeoBundle 'reedes/vim-pencil'
    NeoBundle 'chriskempson/base16-vim'         " The mother of all colorthemes
    NeoBundle 'reedes/vim-colors-pencil'
  call neobundle#end()

  filetype plugin indent on
  NeoBundleCheck


" Incsearch
" =========
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
  let g:incsearch#consistent_n_direction = 1


" Unite
" =====
  let g:unite_enable_start_insert = 1                    " start in insert mode
  call unite#filters#matcher_default#use(['matcher_fuzzy'])

  " buffer switching
  " <c-u> will remove any range before the command is called
  nnoremap <leader>bu :<c-u>Unite -buffer-name=buffers -quick-match buffer<cr>

  " yank history like yankring
  let g:unite_source_history_yank_enable = 1
  nnoremap <space>y :<c-u>Unite history/yank<cr>

  " ctrlp replacement
  " <c-u> will remove any range before the command is called
  " -no-split if it should be in full screen mode
  nnoremap <C-p> :<c-u>Unite -default-action=vsplit -buffer-name=files -start-insert file_rec:!<cr>

  let g:unite_source_rec_unit = 50 " Limit number of files shown in Ctrl-p mode

  " Use ag for grepping
  if executable('ag')
    let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif
  nnoremap <leader>g :<C-u>Unite -no-split grep:.<cr>


" Ag.vim
" ------
  let g:agprg='ag.exe --column'


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
    \'fullscreen-background-color-fix': 1,
    \'ruler': 1,
    \'fullscreen': 1,
    \'laststatus': 2,
    \'linespace': 4,
    \'font-size': 10,
    \'typeface': 'inconsolata-g for powerline',
  \}

  let g:thematic#themes = {
    \'oceanl':{
    \  'colorscheme': 'base16-ocean',
    \  'background': 'light',
    \  'airline-theme': 'base16'
    \},
    \'oceand':{
    \  'colorscheme': 'base16-ocean',
    \  'background': 'dark',
    \  'airline-theme': 'base16'
    \},
    \'ashes':{
    \  'colorscheme': 'base16-ashes',
    \  'background': 'dark',
    \  'airline-theme': 'base16'
    \},
    \'eighties':{
    \  'colorscheme': 'base16-eighties',
    \  'background': 'dark',
    \  'airline-theme': 'base16'
    \},
    \'pencil':{
    \  'colorscheme': 'pencil',
    \  'background': 'light',
    \  'airline-theme': 'pencil',
    \},
    \'sodal':{
    \  'colorscheme': 'base16-soda',
    \  'background': 'light',
    \  'airline-theme': 'base16',
    \},
    \'jellybeans':{
    \  'colorscheme': 'jellybeans',
    \  'background': 'dark',
    \  'airline-theme': 'jellybeans',
    \},
  \}

  let g:thematic#theme_name = 'oceand'


" Emmet
" =====
  let g:user_emmet_install_global = 0                   " only use for html/css
  autocmd FileType html,css EmmetInstall
  let g:user_emmet_leader_key='<C-y>'          " still needs a trailing comma ,


" Airline
" =======
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline#extensions#whitespace#symbol = '·'
  let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]
  let g:Powerline_symbols = 'fancy'


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

