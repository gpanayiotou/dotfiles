" Jump to beginning and end
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Use <Tab> and <S-Tab> to move between incremental search matches
" Nore: 'wildcharm' must be set to <C-z>
cnoremap <expr> <Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>/<C-r>/' : '<C-z>'
cnoremap <expr> <S-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>?<C-r>/' : '<S-Tab>'

" Insert current files directory into command line (DSA)
cnoremap %% <C-R>=expand('%:p:h').'/'<cr>
map <leader>e :edit %%

