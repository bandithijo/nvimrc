" Text Formating
set wrap " wrap text
"set textwidth=80 " to 80 characters
set colorcolumn=80 " and warn me if my line gets over 85 characters
set formatoptions=cqt " see :help fo-table
set infercase " case inferred by default
set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, n    ot 5)
set expandtab " no real tabs please!
set shiftwidth=4 " auto-indent amount when using >> <<
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see e    xpandtab)
set tabstop=4 " real tabs should be 4, and they will show with set list on
set autoindent
"set smartindent
set conceallevel=0
" match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Highlight VCS conflict markers"

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright
