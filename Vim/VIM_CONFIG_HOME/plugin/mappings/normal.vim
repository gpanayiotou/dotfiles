let mapleader = "\<Space>"
nnoremap / /\v

" Moving between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap Y y$
nnoremap D d$

" center on search results
nnoremap n nzzzv
nnoremap N Nzzzv

" No jumping to next result on * search
nnoremap * *<c-o>

" Reindent entire file
nnoremap == gg=G

" <C-a> taken by tmux
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

" Redraw screen, remove highlighting
nnoremap <silent> <C-l> :nohls<CR><C-l>

" Focus on current fold
nnoremap <Leader>z zMzvzz

" Toggle fold at current position.
nnoremap <Tab> za
