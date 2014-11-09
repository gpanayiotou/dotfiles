" Ignore Lists for Vim and plugins
" ================================

" NERDTree
" --------
  let NERDTreeIgnore=[
    \ '\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
    \ '\.ropeproject', '\.o', '\.bzr', '\.ipynb_checkpoints', '__pycache__',
    \ '\.egg$', '\.egg-info$', '\.tox$', '\.idea$', '\.sass-cache',
    \ '\.env$', '\.env[0-9]$', '\.coverage$', '\.tmp$', '\.gitkeep$'
  \]

" Wildignore
" ----------
  set wildignore=*.o,*.obj,*~,*.pyc,*.exe,*.dll,*.manifest
  set wildignore+=*.aux,*.out,*.toc
  set wildignore+=.env
  set wildignore+=.env[0-9]+
  set wildignore+=.git,.gitkeep,.hg,.svn
  set wildignore+=.tmp
  set wildignore+=.coverage
  set wildignore+=*DS_Store*
  set wildignore+=.sass-cache/
  set wildignore+=__pycache__/
  set wildignore+=vendor/rails/**
  set wildignore+=vendor/cache/**
  set wildignore+=*.gem
  set wildignore+=log/**
  set wildignore+=tmp/**
  set wildignore+=.tox/**
  set wildignore+=.idea/**
  set wildignore+=*.egg,*.egg-info
  set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
  set wildignore+=*/.nx/**,*.app
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
  set wildignore+=*.DS_Store,desktop.ini

" netrw
" -----
  let g:netrw_list_hide='\.o,\.obj,*~,\.pyc,'
  let g:netrw_list_hide.='\.env,'
  let g:netrw_list_hide.='\.env[0-9].,'
  let g:netrw_list_hide.='\.git,'
  let g:netrw_list_hide.='\.gitkeep,'
  let g:netrw_list_hide.='\.tmp,'
  let g:netrw_list_hide.='\.coverage$,'
  let g:netrw_list_hide.='\.DS_Store,'
  let g:netrw_list_hide.='__pycache__,'
  let g:netrw_list_hide.='\.sass-cache/,'
  let g:netrw_list_hide.='\.ropeproject/,'
  let g:netrw_list_hide.='vendor/rails/,'
  let g:netrw_list_hide.='vendor/cache/,'
  let g:netrw_list_hide.='\.gem,'
  let g:netrw_list_hide.='\.ropeproject/,'
  let g:netrw_list_hide.='log/,'
  let g:netrw_list_hide.='tmp/,'
  let g:netrw_list_hide.='\.tox/,'
  let g:netrw_list_hide.='\.idea/,'
  let g:netrw_list_hide.='\.egg,\.egg-info,'
  let g:netrw_list_hide.='\.png,\.jpg,\.gif,'
  let g:netrw_list_hide.='\.so,\.swp,\.zip,/\.Trash/,\.pdf,\.dmg,/Library/,/\.rbenv/,'
  let g:netrw_list_hide.='*/\.nx/**,*\.app'

" Unite
" -----
  call unite#custom#source('buffer,file,file_rec/async,file_rec,file_mru,file,grep',
  \ 'ignore_pattern', join([
    \ '\.tmp/',
    \ '\.git/',
    \ '\.gitkeep',
    \ '\.hg/',
    \ '\.tox',
    \ '\.idea',
    \ '\.pyc',
    \ '\.o',
    \ '__pycache__',
    \ '.env',
    \ '.env*',
    \ '_build',
    \ 'dist',
    \ '*.tar.gz',
    \ '*.zip',
    \ 'node_modules',
    \ 'bower_components',
    \ '.*\.egg',
    \ '*.egg-info',
    \ '.*egg-info.*',
    \ 'git5/.*/review/',
    \ 'google/obj/',
    \ '\.sass-cache/',
  \ ], '\|'))
