let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

" Please add below in your vimrc
"call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'latex'})
"call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'latex'})
"call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'latex'})
