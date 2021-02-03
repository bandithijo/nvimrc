" Assign a number of time in milliseconds.
let g:highlightedyank_highlight_duration = 1000

" If the highlight is not visible for some reason, you can redefine the
" HighlightedyankRegion highlight group.
" Note that the line should be located after :colorscheme command execution in
" your vimrc.
hi HighlightedyankRegion ctermfg=8 ctermbg=9 guifg=#002b36 guibg=#cb4b16
