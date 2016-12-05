call plug#begin('$VIM_CONFIG_HOME/pack/plugged/start')

" Libraries, Dependencies
" {{{
Plug 'xolox/vim-misc'      " Prerequisite for vim-shell
Plug 'xolox/vim-shell'     " Fullscreen, open URL, background command execution
Plug 'tpope/vim-repeat'    " Allow plugins to repeat command maps
Plug 'Shougo/vimproc.vim', {'do' : 'make'} " Asynchronous execution library
" }}}

" Syntax and file formats
" {{{
Plug 'gko/vim-coloresque'            " CSS/less/sass/html color preview for vim
Plug 'summivox/vim-nfo'              " Highlights non-ASCII characters
" }}}

" Functionality Enhancements
" {{{
Plug 'kien/ctrlp.vim'                        " Fuzzy file finder
Plug 'Shougo/vimshell.vim'                   " Shell implemented in Vim
Plug 'Shougo/neocomplete.vim'                " Auto completion engine
Plug 'Shougo/neosnippet.vim'                 " Snippet support
Plug 'Shougo/neosnippet-snippets'            " Preconfigure Snippets
Plug 'honza/vim-snippets'                    " Additional snippets
Plug 'tpope/vim-fugitive'                    " Git commands inside vim
Plug 'scrooloose/nerdcommenter'              " Toggle comment blocks
Plug 'scrooloose/syntastic'                  " Syntax checker
Plug 'Raimondi/delimitMate'                  " Automatic closing of quotes, etc
Plug 'reedes/vim-wheel'                      " Screen-anchored scrolling
Plug 'tpope/vim-surround'                    " Edit surrounding symbols
Plug 'vim-scripts/matchit.zip'               " Match more symbols with %
Plug 'airblade/vim-gitgutter'                " Git diff in left gutter
Plug 'wellle/targets.vim'                    " Provide additional text objects
" }}}

" UI Enhancements
" {{{
Plug 'vim-airline/vim-airline'           " status bar enhancement
Plug 'vim-airline/vim-airline-themes'    " status bar themes
Plug 'junegunn/limelight.vim'            " centered fullscreen editing
Plug 'junegunn/goyo.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'guiniol/vim-showspaces'
Plug 'mhinz/vim-startify'
" }}}

" Themes
" {{{
Plug 'reedes/vim-thematic'             " Theme organisation
Plug 'reedes/vim-colors-pencil'        " iawriter colorscheme
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
" }}}


" Add plugins to &runtimepath
" Note: Should be done by Vim 8 automatically via packages (It doesn't)
call plug#end()
