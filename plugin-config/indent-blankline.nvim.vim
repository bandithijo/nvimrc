" Please see :help indent_blankline.txtfor more details.

let g:indent_blankline_enabled                        = v:true

let g:indent_blankline_space_char                     = ' '
let g:indent_blankline_space_char_blankline           = ' '
let g:indent_blankline_char                           = '┊'
let g:indent_blankline_filetype_exclude               = ['help']
let g:indent_blankline_buftype_exclude                = ['terminal']

let g:indent_blankline_use_treesitter                 = v:true
let g:indent_blankline_indent_level                   = 10
let g:indent_blankline_show_first_indent_level        = v:true
let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_show_end_of_line               = v:true
let g:indent_blankline_filetype                       = []
let g:indent_blankline_bufname_exclude                = ['README.md', '.*\.py']

let g:indent_blankline_disable_warning_message        = v:false
let g:indent_blankline_debug                          = v:true

" highlight IndentBlanklineChar               guifg=#00FF00 gui=nocombine
" highlight IndentBlanklineSpaceChar          guifg=#00FF00 gui=nocombine
" highlight IndentBlanklineSpaceCharBlankline guifg=#00FF00 gui=nocombine
" highlight IndentBlanklineContextChar        guifg=#00FF00 gui=nocombine
