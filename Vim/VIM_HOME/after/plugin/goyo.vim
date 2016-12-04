function! GoyoBefore()
  Limelight
  set number
  set relativenumber
endfunction

function! GoyoAfter()
  Limelight!
  set number
  set relativenumber
endfunction

nnoremap <S-F11> :Goyo<CR>
let g:goyo_width=100
let g:goyo_margin_top=0
let g:goyo_margin_bottom=2
let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

