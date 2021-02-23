" codi.vim

" highlight CodiVirtualText guifg=cyan

let $SHELL = '/bin/zsh'

" A dictionary of user-defined interpreters. See |codi-interpreters| for the
" format specification
" let g:codi#interpreters = {
"       \ 'ruby': {
"           \ 'bin': 'irb',
"           \ 'prompt': '^> ',
"           \ },
"       \ }

" These will also register the insert mode variants.  "None" will
" make no autocommand trigger updates; use this if you only want
" updates to be manually triggered on `:CodiUpdate`.

" Default value is 'TextChanged' for async, 'CursorHold' for
" sync.
let g:codi#autocmd = 'TextChanged'


" Enable logging
let g:codi#log = '/tmp/codi.log'

let g:codi#rightalign = 1

let g:codi#virtual_text = 1

let g:codi#virtual_text_prefix = "❯ "
