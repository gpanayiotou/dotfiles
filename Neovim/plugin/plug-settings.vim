if has('unix')
  call plug#begin('~/.config/nvim/plugged')
elseif has('win32')
  call plug#begin('~/AppData/Local/nvim/plugged')
endif

" Dependencies
Plug 'xolox/vim-misc'                    " Prerequisite for vim-shell
Plug 'tpope/vim-repeat'                  " Allow plugins to repeat command maps
Plug 'equalsraf/neovim-gui-shim'         " NeoVim-Qt gui shim

" Miscellaneous
Plug 'tpope/vim-fugitive'                " Git commands inside NVim
Plug 'neomake/neomake'                   " Asynchronous :make
Plug 'xolox/vim-shell'                   " Improved integration with shells

" File Editing
Plug 'tpope/vim-surround'          " Edit surrounding symbols like word objects
Plug 'scrooloose/syntastic'        " Syntax checker
Plug 'wellle/targets.vim'          " Provides additional text objects
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sirver/ultisnips'            " TextMate snippet features in Vim
Plug 'honza/vim-snippets'          " Snippets!
Plug 'qwertologe/nextval.vim'      " In-/Decrease additional number types
Plug 'reedes/vim-wheel'            " Screen-anchored scrolling
Plug 'Raimondi/delimitMate'        " Auto closing of quotes etc.
Plug 'vim-scripts/matchit.zip'     " Match more symbols with %

" File Navigation
Plug 'ctrlpvim/ctrlp.vim'          " Fuzzy file finder

" File type support
Plug 'tmux-plugins/vim-tmux'       " .tmux.conf syntax highlighting
Plug 'elzr/vim-json'               " Better JSON highlighting
Plug 'summivox/vim-nfo'            " Non-ASCII-character highlighting
Plug 'tpope/vim-haml'              " latest SASS support

" UI
Plug 'vim-airline/vim-airline'       " Status/Tabline
Plug 'mhinz/vim-startify'            " Startpage with MRUs
Plug 'airblade/vim-gitgutter'        " Git diff in the gutter
Plug 'wincent/loupe'                 " Enhanced in-file search
Plug 'wincent/terminus'              " GUI features in terminal (cursor, mouse)
Plug 'junegunn/goyo.vim'             " Centered text
Plug 'junegunn/limelight.vim'        " Highlight current scope
Plug 'chrisbra/Colorizer'            " Color hex codes and color ames
Plug 'kien/rainbow_parentheses.vim'  " "
Plug 'guiniol/vim-showspaces'

" Themes
Plug 'reedes/vim-thematic'               " Theme manager
Plug 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plug 'reedes/vim-colors-pencil'          " iA Writer-like theme
Plug 'NLKNguyen/papercolor-theme'        " Google Material-like theme
Plug 'chriskempson/base16-vim'           " Base16 <3

" Add plugins to &runtimepath
call plug#end()

