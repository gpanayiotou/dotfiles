" Vim-Thematic
" ============

  let g:thematic#defaults = {
    \ 'fullscreen-background-color-fix': 1,
    \ 'ruler': 1,
    \ 'fullscreen': 1,
    \ 'laststatus': 2,
    \ 'linespace': 4,
    \ 'font-size': 10,
    \ 'typeface': 'Inconsolata-g for PowerLine',
  \ }

  let g:thematic#themes = {
    \ 'ocean_light': {
      \ 'colorscheme': 'base16-ocean',
      \ 'background': 'light',
      \ 'airline-theme': 'base16'
    \ },
    \ 'ocean_dark': {
      \ 'colorscheme': 'base16-ocean',
      \ 'background': 'dark',
      \ 'airline-theme': 'base16'
    \ },
    \ 'flat_light': {
      \ 'colorscheme': 'base16-flat',
      \ 'background': 'light',
      \ 'airline-theme': 'base16',
    \ },
    \ 'flat_dark': {
      \ 'colorscheme': 'base16-flat',
      \ 'background': 'dark',
      \ 'airline-theme': 'base16',
    \ },
    \ 'railscast_light': {
      \ 'colorscheme': 'base16-railscast',
      \ 'background': 'light',
      \ 'airline-theme': 'base16',
    \ },
    \ 'railscast_dark': {
      \ 'colorscheme': 'base16-railscast',
      \ 'background': 'dark',
      \ 'airline-theme': 'base16',
    \ },
    \ 'pencil_light': {
      \ 'colorscheme': 'pencil',
      \ 'background': 'light',
      \ 'typeface': 'Cousine',
      \ 'airline-theme': 'light',
    \ },
    \ 'iawriter': {
      \ 'colorscheme': 'pencil',
      \ 'background': 'light',
      \ 'columns': 85,
      \ 'font-size': 18,
      \ 'fullscreen': 1,
      \ 'laststatus': 0,
      \ 'linespace': 8,
      \ 'typeface': 'Cousine',
      \ 'airline-theme': 'light',
    \  },
  \ }

  " Set default theme
  let g:thematic#theme_name = 'ocean_dark'
