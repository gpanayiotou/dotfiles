" General {{{
let mapleader = "\<Space>"
noremap <Esc> <Esc>:nohl<CR><Esc>
" }}}

" Folding {{{
nnoremap <Leader><Tab> za
" }}}

" Editing {{{

" Reindent ALL the things
nmap == gg=G

" Yank to the end
noremap Y y$

" Yank\Paste to system clipboard
map <leader>y "*y
map <leader>p "*p

" Move through quickfixes
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Remap in-/decrease number
" NOTE: Avoids conflict with tmux
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

" <Enter> repeats last macro
nnoremap <Enter> @@
"   ...but only in a normal buffer
nnoremap <silent> <expr> <CR> empty(&buftype) ? '@@' : '<CR>'
" }}}

" Navigation {{{
nmap <Leader>bn :bn<Cr>
nmap <Leader>bd :bd<Cr>
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <Leader>o :only<Cr>

" Toggle between last open buffers
nnoremap <Leader><Leader> <C-^>

" Store relative line number jumps in jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

" Opening splits
noremap <Leader><Bar> :vsplit<CR>
noremap <Leader>- :split<CR>
" }}}

" File Management {{{
map <leader>m :call RenameFile()<cr>
" }}}

