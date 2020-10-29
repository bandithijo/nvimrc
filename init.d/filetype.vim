" FileType

" Define your configuration for specific filetype below
autocmd FileType c setlocal shiftwidth=4 tabstop=4 conceallevel=0
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 conceallevel=0
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType csv setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType liquid setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 conceallevel=0 nofoldenable
autocmd FileType org setlocal shiftwidth=2 tabstop=2 foldmethod=expr nowrap
autocmd FileType python setlocal shiftwidth=4 tabstop=4 wrap formatoptions+=t
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType tex setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType vim setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 conceallevel=0
autocmd BufRead,BufNewFile *.tex setlocal ft=tex

" For compatibilty bash to sh, because there is no bash filetype
let g:is_bash = 1
