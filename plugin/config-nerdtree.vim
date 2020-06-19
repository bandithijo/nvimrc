" NerdTree

let NERDTreeHijackNetrw = 0

" Disable arrow icons at the left side of folders for NERDTree.
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"

" Width
let g:NERDTreeWinSize=35

" SignColumn
autocmd FileType nerdtree setlocal signcolumn=no nocursorcolumn

" Disable NERDTree close when buffer delete
"autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>

" Open NERDTree when no files to open
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree when open a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

" let NERDTreeIgnore=['.aux', '.fdb_latexmk', '.log', '.lot', '.lof', '.out', '.toc', '.synctex.gz']
