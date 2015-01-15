" Keymappings for Vim and plugins
" ===============================

let g:mapleader = "\ "

noremap q: :q
nnoremap <Leader>w :w<CR>
nnoremap <Leader>bd :bd<CR>
noremap Y y$
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>
vmap <C-C> "+yy$
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" disable highlighting on ESC and Ctrl-L
nnoremap <silent> <C-L> :nohls<CR><C-L>
nnoremap <silent> <ESC> :nohls<CR><ESC>

" toggle folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" use python style regex instead of weirdo vim ones
" NOTE: Using incsearch for now
" TODO: combine these into incsearch
"nnoremap / /\v
"vnoremap / /\v

" delete til end of line
nnoremap D d$

" center on search results
nnoremap n nzzzv
nnoremap N Nzzzv

" no jumping to next result on *
nnoremap * *<c-o>

" L and H to jump to b/eol
noremap H ^
noremap L g_

" jump to b/eol in insert mode
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" focus on current fold
nnoremap <leader>z zMzvzz

" show yankring
nnoremap <silent> <F6> :YRShow<cr>

" formatting
noremap Q gqip
noremap <leader>bd :bd<cr>

