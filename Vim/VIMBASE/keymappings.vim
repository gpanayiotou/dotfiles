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

" <C-a> taken by tmux
:nnoremap <A-a> <C-a>
:nnoremap <A-x> <C-x>
" }}}


" Display
" =======
" {{{
" Disable highlighting on ESC
nnoremap <silent> <ESC> :nohls<CR><ESC>

" Toggle folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Focus on current fold
nnoremap <Leader>z zMzvzz

" Copy & paste to/from system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P

" Increase/Decrease font size in GVim
" http://vi.stackexchange.com/a/3104
if has("gui_gtk2")
  function! FontSizePlus ()
    let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole + 1
    let l:new_font_size = ' '.l:gf_size_whole
    let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
  endfunction

  function! FontSizeMinus ()
    let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole - 1
    let l:new_font_size = ' '.l:gf_size_whole
    let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
  endfunction
else
  function! FontSizePlus ()
    let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole + 1
    let l:new_font_size = ':h'.l:gf_size_whole
    let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
  endfunction

  function! FontSizeMinus ()
    let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
    let l:gf_size_whole = l:gf_size_whole - 1
    let l:new_font_size = ':h'.l:gf_size_whole
    let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
  endfunction
endif

if has("gui_running")
  nmap <C-kMinus> :call FontSizeMinus()<CR>
  nmap <C-kPlus> :call FontSizePlus()<CR>
endif
" }}}

