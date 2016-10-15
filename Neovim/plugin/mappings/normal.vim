let mapleader = " "
noremap <Esc> <Esc>:nohl<CR><Esc>

" Folding
nnoremap <Tab> za

" Editing
nmap == gg=G
noremap Y y$
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Navigation
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

" Bloody accidental macros
nmap Q q

