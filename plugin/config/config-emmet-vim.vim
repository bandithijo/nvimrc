" emmet-vim trigger key remap

" Default leader key is <c-y>,
"let g:user_emmet_leader_key='<C-space>' " then press , (comma) to do magic !
let g:user_emmet_mode='a'                "enable all function in all mode

" Membuat cursor di tengah pada Emmet
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"