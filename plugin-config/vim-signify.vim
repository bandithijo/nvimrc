" Enable line highlighting in addition to using signs by default.
let g:signify_line_highlight = 0

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
highlight SignifySignAdd    ctermfg=4 ctermbg=NONE cterm=bold
highlight SignifySignDelete ctermfg=1 ctermbg=NONE cterm=bold
highlight SignifySignChange ctermfg=3 ctermbg=NONE cterm=bold
