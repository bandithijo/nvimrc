" Enable line highlighting in addition to using signs by default.
let g:signify_line_highlight = 0

" The sign to use if a line was added, deleted or changed or a combination of
" these.
" You can use Unicode characters, but signs must not take up more than two
" cells. Otherwise, |E239| is thrown.
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Colors
highlight SignifySignAdd    ctermfg=46  ctermbg=NONE
highlight SignifySignDelete ctermfg=196    ctermbg=NONE
highlight SignifySignChange ctermfg=214 ctermbg=NONE
