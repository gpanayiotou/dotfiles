" <F5>          Purge cache
" <C-v>         Open in new vertical split
" <C-j>,<C-k>   Navigate the list

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_show_hidden = 1

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Use .git (r) folder as root dir identifier
" Otherwise use directory of current file (a)
let g:ctrlp_working_path_mode = 'ra'
" Other root markers than '.git'
let g:ctrlp_root_markers = ['package.json', 'pom.xml']

" Open already opened files in new pane instead of switching
" NOTE: do I want that?
let g:ctrlp_switch_buffer = 'et'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|idea|sass-cache)|(node_modules|dist|build))$',
  \ 'file': '\v\.(exe|so|dll|jpg|jpeg|png|bmp)$'
\ }

