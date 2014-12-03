" Neobundle
" =========

  if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'

    " libraries
    NeoBundle 'MarcWeber/vim-addon-mw-utils'
    NeoBundle 'xolox/vim-misc'
    NeoBundle 'xolox/vim-shell'
    NeoBundle 'tomtom/tlib_vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/vimproc.vim'

    " Coding
    NeoBundle 'Raimondi/delimitMate'
    NeoBundle 'tpope/vim-obsession'
    NeoBundle 'tpope/vim-repeat'
    NeoBundle 'rdolgushin/gitignore.vim'
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'bling/vim-airline'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'tpope/vim-dispatch'
    NeoBundle 'Lokaltog/vim-easymotion'
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'garbas/vim-snipmate'
    NeoBundle 'vim-scripts/camelcasemotion'
    NeoBundle 'vim-scripts/argtextobj.vim'
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'vim-scripts/matchit.zip'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'AndrewRadev/splitjoin.vim'
    NeoBundle 'reedes/vim-pencil'
    NeoBundle 'ervandew/supertab'
    NeoBundle 'vim-scripts/gitignore'
    NeoBundle 'vim-scripts/vim-nfo'

    " HTML, CSS
    NeoBundle 'firegoby/SASS-Snippets'
    NeoBundle 'gabrielelana/vim-markdown'
    NeoBundle 'gorodinskiy/vim-coloresque'

    " Editor Enhancements
    NeoBundle 'junegunn/goyo.vim'
    NeoBundle 'junegunn/limelight.vim'
    NeoBundle 'bling/vim-bufferline'
    NeoBundle 'airoblade/vim-gitgutter'
    NeoBundle 'rking/ag.vim'
    NeoBundle 'haya14busa/incsearch.vim'

    " JavaScript, CoffeeScript
    NeoBundle 'mintplant/vim-literate-coffeescript'
    NeoBundle 'pangloss/vim-javascript'
    NeoBundle 'kchmck/vim-coffee-script'

    " Themes
    NeoBundle 'reedes/vim-thematic'
    NeoBundle 'chriskempson/base16-vim'
    NeoBundle 'reedes/vim-colors-pencil'
    NeoBundle 'DAddYE/soda.vim'
  call neobundle#end()

  filetype plugin indent on
  NeoBundleCheck

" Incsearch
" ---------
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
  let g:incsearch#consistent_n_direction = 1


" Unite
" -----
  let g:unite_enable_start_insert = 1
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

  " limit number of files shown in Ctrl-p mode
  let g:unite_source_rec_unit = 50

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
" ----
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
" ------------
  let g:thematic#defaults = {
    \   'fullscreen-background-color-fix': 1,
    \   'ruler': 1,
    \   'fullscreen': 1,
    \   'laststatus': 2,
    \   'linespace': 4,
    \   'font-size': 11,
    \   'typeface': 'inconsolata-dz for powerline',
  \ }

  let g:thematic#themes = {
    \   'ocean':{
    \     'colorscheme': 'base16-ocean',
    \     'background': 'dark',
    \     'airline-theme': 'base16'
    \   },
    \   'ashes':{
    \     'colorscheme': 'base16-ashes',
    \     'background': 'dark',
    \     'airline-theme': 'base16'
    \   },
    \   'eighties':{
    \     'colorscheme': 'base16-eighties',
    \     'background': 'dark',
    \     'airline-theme': 'base16'
    \   },
    \   'pencil':{
    \     'colorscheme': 'pencil',
    \     'background': 'light',
    \     'airline-theme': 'pencil',
    \   },
    \   'molokai':{
    \     'colorscheme': 'molokai',
    \     'background': 'dark',
    \     'airline-theme': 'molokai',
    \   },
    \   'jellybeans':{
    \     'colorscheme': 'jellybeans',
    \     'background': 'dark',
    \     'airline-theme': 'jellybeans',
    \   },
  \ }

  let g:thematic#theme_name = 'ocean'


" Emmet
" -----
  let g:user_emmet_install_global = 0                   " only use for html/css
  autocmd FileType html,css EmmetInstall
  " still needs a trailing comma ,
  let g:user_emmet_leader_key='<C-y>'

" Airline
" -------
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#whitespace#enabled = 1
  let g:airline#extensions#whitespace#symbol = '·'
  let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing' ]
  let g:Powerline_symbols = 'fancy'

" Markdown
" --------
  let g:markdown_enable_folding = 1

" Vim-Shell
" ---------
  let g:shell_fullscreen_always_on_top = 0

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

" TComment
" --------
  map <leader>c <c-_><c-_>

