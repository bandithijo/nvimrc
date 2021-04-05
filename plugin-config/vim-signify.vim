" Enable line highlighting in addition to using signs by default.
let g:signify_line_highlight = 0

" default updatetime 4000ms is not good for async update
set updatetime=100

" The sign to use if a line was added, deleted or changed or a combination of
" these.
" You can use Unicode characters, but signs must not take up more than two
" cells. Otherwise, |E239| is thrown.
let g:signify_sign_add               = '│'
let g:signify_sign_delete            = '│'
let g:signify_sign_delete_first_line = '│'
let g:signify_sign_change            = '│'

" Numbers indicator
let g:signify_sign_show_count        = 0
let g:signify_sign_show_text         = 1

" Colors
highlight SignifySignAdd    guifg=#569CD6 guibg=NONE gui=bold
highlight SignifySignChange guifg=#CCB17A guibg=NONE gui=bold
highlight SignifySignDelete guifg=#D16969 guibg=NONE gui=bold
