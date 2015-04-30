" Neobundle
" =========

  if has('vim_starting')
    set nocompatible
    set runtimepath+=$VIMBASE/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand($VIMBASE . "/bundle/"))
    NeoBundleFetch 'Shougo/neobundle.vim'

    " Libraries, Dependencies
    NeoBundle 'MarcWeber/vim-addon-mw-utils'
    NeoBundle 'xolox/vim-misc'
    NeoBundle 'xolox/vim-shell'
    NeoBundle 'tomtom/tlib_vim'
    NeoBundle 'Shougo/vimproc.vim'
    NeoBundle 'tpope/vim-dispatch'        " Run compiler (:make) asynchronously
    NeoBundle 'tpope/vim-repeat'         " Allow plugins to repeat command maps

    " Additional Language Support
    NeoBundle 'firegoby/SASS-Snippets'
    NeoBundle 'gabrielelana/vim-markdown' " MD support (use with colors-pencil)
    NeoBundle 'gorodinskiy/vim-coloresque'
    NeoBundle 'mintplant/vim-literate-coffeescript'
    NeoBundle 'pangloss/vim-javascript'
    NeoBundle 'kchmck/vim-coffee-script'
    NeoBundle 'vim-scripts/vim-nfo'
    NeoBundle 'othree/yajs.vim'

    " Functionality Enhancements
    NeoBundle 'msanders/snipmate.vim'
    NeoBundle 'tpope/vim-fugitive'                    " Git commands inside vim
    NeoBundle 'Lokaltog/vim-easymotion'           " Easier visual moving around
    NeoBundle 'rking/ag.vim'                            " Ag search integration
    NeoBundle 'scrooloose/nerdcommenter'                " Toggle comment blocks
    NeoBundle 'scrooloose/syntastic'                           " Syntax checker
    NeoBundle 'Raimondi/delimitMate'         " automatic closing of quotes, etc
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neocomplete.vim'                  " Autocompletion engine
    NeoBundle 'reedes/vim-lexical'            " enhances build in spell checker
    NeoBundle 'reedes/vim-wheel'                    " Screen-anchored scrolling
    NeoBundle 'vim-scripts/gitignore'                 " gitignore to wildignore
    NeoBundle 'tpope/vim-surround'                   " Edit surrounding symbols
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'vim-scripts/matchit.zip'             " Match more symbols with %
    NeoBundle 'vim-scripts/python_match.vim'       " Same as matchit for python

    " UI Enhancements
    NeoBundle 'bling/vim-airline'                      " status bar enhancement
    NeoBundle 'airblade/vim-gitgutter'                 " git status on sideline
    NeoBundle 'junegunn/limelight.vim'            " centered fullscreen editing
    NeoBundle 'junegunn/goyo.vim'
    NeoBundle 'bling/vim-bufferline'
    NeoBundle 'haya14busa/incsearch.vim'
    NeoBundle 'kien/rainbow_parentheses.vim'
    NeoBundle 'guiniol/vim-showspaces'

    " Themes
    NeoBundle 'reedes/vim-thematic'                        " Theme organisation
    NeoBundle 'reedes/vim-pencil'
    NeoBundle 'chriskempson/base16-vim'         " The mother of all colorthemes
    NeoBundle 'reedes/vim-colors-pencil'                 " iawriter colorscheme
    NeoBundle 'nanotech/jellybeans.vim'
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

  let g:unite_enable_start_insert = 0
  call unite#filters#matcher_default#use(['matcher_fuzzy'])

  " buffer switching
  nnoremap <Leader>bl :<C-u>Unite -buffer-name=Buffers -default-action=switch buffer<cr>

  " yank history like yankring
  let g:unite_source_history_yank_enable = 1
  nnoremap <Leader>r :<c-u>Unite history/yank<cr>

  " ctrlp replacement
  " <c-u> will remove any range before the command is called
  " -no-split if it should be in full screen mode
  nnoremap <C-p> :<C-u>Unite -default-action=vsplit -buffer-name=Files -start-insert file_rec:!<cr>

  let g:unite_source_rec_unit = 50 " Limit number of files shown in Ctrl-p mode

  " Use ag for grepping 
  " TODO: de-crapify this
  if executable('ag.exe')
    let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  elseif executable('ag')
    let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --hidden -g ""'
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif
  nnoremap <C-S-p> :<C-u>Unite -no-split grep:<cr>.<cr>


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

  nnoremap <s-F11> :Goyo<CR>
  let g:goyo_width=100
  let g:goyo_margin_top=0
  let g:goyo_margin_bottom=2
  let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]


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

  let g:airline_section_c = airline#section#create(['%{getcwd()}'])


" Markdown
" ========

  let g:markdown_enable_folding = 1


" Vim-Shell
" =========

  let g:shell_fullscreen_always_on_top = 0


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


" Neocomplete
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


" Rainbow Parenthesis
" ===================

  " Always on
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces


" Lexical
" =======

  let g:lexical#spelllang = ['en_us','de_de']
  let g:lexical#thesaurus = [$VIMBASE . '/thesaurus/mthesaur.txt',]

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


" Vim Showspaces
" ==============

  let b:showSpaces = 1
  let b:showSpacesConceal = 1
