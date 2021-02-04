" FileType

" Define your configuration for specific filetype below
autocmd FileType c          setlocal shiftwidth=4 tabstop=4 conceallevel=0
autocmd FileType cpp        setlocal shiftwidth=4 tabstop=4 conceallevel=0
autocmd FileType css        setlocal shiftwidth=2 tabstop=2
autocmd FileType csv        setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType dockerfile setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json       setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType liquid     setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType markdown   setlocal shiftwidth=2 tabstop=2 conceallevel=0 nofoldenable
autocmd FileType org        setlocal shiftwidth=2 tabstop=2 nowrap textwidth=0 foldmethod=expr
autocmd FileType python     setlocal shiftwidth=4 tabstop=4 wrap formatoptions+=t
autocmd FileType scss       setlocal shiftwidth=2 tabstop=2
autocmd FileType tex        setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType vim        setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType vue        setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType yaml       setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd BufRead,BufNewFile *.tex setlocal ft=tex

" For compatibilty bash to sh, because there is no bash filetype
let g:is_bash = 1

" Add filetype for terminal, the reason I'm doing this is for Lightline
autocmd TermOpen * setfiletype term

" Override html syntax color for solarized
hi htmlTag            guifg=#586e75 guibg=NONE gui=NONE   cterm=NONE
hi htmlEndTag         guifg=#586e75 guibg=NONE gui=NONE   cterm=NONE
hi htmlTagN           guifg=#93a1a1 guibg=NONE gui=bold   cterm=bold
hi htmlTagName        guifg=#268bd2 guibg=NONE gui=bold   cterm=bold
hi htmlSpecialTagName guifg=#268bd2 guibg=NONE gui=italic cterm=italic
hi htmlArg            guifg=#657b83 guibg=NONE gui=NONE   cterm=NONE
