" Defaults
let g:thematic#defaults = {
  \"fullscreen-background-color-fix": 1,
  \"ruler": 1,
  \"fullscreen": 1,
  \"laststatus": 2,
  \"linespace": 4,
  \"font-size": 11,
\}

" Themes
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
  \'papercolor': {
    \'colorscheme': 'PaperColor',
    \'background': 'light',
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

" Autocommands
augroup ThematicAutocommands
  autocmd!

  autocmd BufEnter *.md,*.nfo Thematic iawriter

  " Set custom hightlights for all colorschemes
  " NOTE: No setting in Thematic for this

  " Add custom highlights every time a theme is loaded
  autocmd colorscheme * highlight icursor guifg=#eff1f5 guibg=#a3be8c
  " WORKAROUND: Since the above doesn't work on VimEnter,
  "   hook the same thing into something else
  autocmd VimResized * highlight icursor guifg=#eff1f5 guibg=#a3be8c
augroup END

