" General
" =======

  let g:mapleader = "\ "
  noremap q: :q
  nnoremap <Leader>qq :q<CR>
  inoremap jj <ESC>


" Buffers and Windows
" ===================
  nnoremap <Leader>bd :bd<CR>
  nnoremap <Leader>s <C-w>v<C-w>l

" File operations
" ===============

  nnoremap <Leader>w :w<CR>
  nnoremap ; :


" Movement
" ========
  noremap Y y$
  nnoremap D d$

  " center on search results
  nnoremap n nzzzv
  nnoremap N Nzzzv

  " L and H to jump to b/eol
  noremap H ^
  noremap L g_

  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

" Display
" =======
  " Disable highlighting on ESC and Ctrl-L
  nnoremap <silent> <C-L> :nohls<CR><C-L>
  nnoremap <silent> <ESC> :nohls<CR><ESC>

  " toggle folding
  inoremap <F9> <C-O>za
  nnoremap <F9> za
  onoremap <F9> <C-C>za
  vnoremap <F9> zf

  " focus on current fold
  nnoremap <Leader>z zMzvzz


  " Miscellaneous
  " =============
  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>

  " no jumping to next result on * search
  nnoremap * *<c-o>

  " Copy & paste to system clipboard
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P
  nmap <C-V> "+gP
  imap <C-V> <ESC><C-V>

