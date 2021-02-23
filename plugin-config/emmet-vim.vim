" emmet-vim trigger key remap
" Default leader key is <c-y>,
let g:user_emmet_leader_key = '<C-n>'        " then press , (comma) to do magic !
let g:user_emmet_mode       = 'a'            "enable all function in all mode

" Centered the cursor on Emmet
inoremap <silent><expr> <cr> pumvisible() ?
      \ coc#_select_confirm() :
      \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
