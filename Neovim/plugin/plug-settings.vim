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
Plug 'neomake/neomake'                   " Asynchronous :make
Plug 'xolox/vim-shell'                   " Improved integration with shells
Plug 'benmills/vimux'                     " Tmux interaction

" File Editing
Plug 'tpope/vim-surround'          " Edit surrounding symbols like word objects
Plug 'scrooloose/syntastic'        " Syntax checker
Plug 'wellle/targets.vim'          " Provides additional text objects
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" File Navigation
Plug 'ctrlpvim/ctrlp.vim'            " Fuzzy file finder
Plug 'tpope/vim-eunuch'              " File moving/renaming

" File type support
Plug 'summivox/vim-nfo'              " Non-ASCII-character highlighting
Plug 'pangloss/vim-javascript'       " Better JavaScript syntax

" UI
Plug 'vim-airline/vim-airline'       " Statusline
Plug 'wincent/loupe'                 " Enhanced in-file search (Highlighting)
Plug 'wincent/terminus'              " GUI features in terminal (cursor, mouse)
Plug 'chrisbra/Colorizer'            " Color hex codes and color names

" Themes
Plug 'reedes/vim-thematic'               " Theme manager
Plug 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plug 'reedes/vim-colors-pencil'          " iA Writer-like theme
Plug 'NLKNguyen/papercolor-theme'        " Google Material-like theme
Plug 'chriskempson/base16-vim'           " Base16 <3

" Add plugins to &runtimepath
call plug#end()

