let g:goyo_width = 100       " In characters
let g:goyo_height = 90       " In percent
let g:goyo_linenr = 0

function! s:goyo_enter()
    silent Fullscreen
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    set noshowmode
    set noshowcmd
    set scrolloff=999
    Limelight
endfunction

function! s:goyo_leave()
    silent Fullscreen
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    set scrolloff=5
    Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

inoremap <F11> <C-o>:Goyo<CR>
nnoremap <F11> :Goyo<CR>

