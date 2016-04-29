" Plugins are loaded after this file.
" Plugin-specific keymappings go into plugins.vim


" General
" =======
" {{{
let g:mapleader = "\ "
noremap q: :q
nnoremap <Leader>qq :q<CR>
inoremap jj <ESC>:nohls<CR><ESC>
" Consider all special characters to have special meaning in searches
" aka 'Perl-like' or 'very magic' regex
nnoremap / /\v
" }}}


" Buffers and Windows
" ===================
" {{{
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>s <C-w>v<C-w>l
nnoremap <Leader>bn :bn<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Change PWD for active window
nnoremap <Leader>cd lcd %:h<CR>
" }}}


" File operations
" ===============
" {{{
nnoremap <Leader>w :w<CR>
" }}}


" Movement/Editing
" ================
" {{{
nnoremap , ;
noremap Y y$
nnoremap D d$

" center on search results
nnoremap n nzzzv
nnoremap N Nzzzv

" Jump to end of line in insert mode
inoremap <C-S-Return> <C-o>A

" no jumping to next result on * search
nnoremap * *<c-o>

" reindent entire file
nnoremap == gg=G
" }}}


" Display
" =======
" {{{
" Disable highlighting on ESC
nnoremap <silent> <ESC> :nohls<CR><ESC>

" toggle folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" focus on current fold
nnoremap <Leader>z zMzvzz

" Copy & paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
" }}}

