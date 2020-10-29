" vimtex

" Default keybindings: https://github.com/lervag/vimtex/wiki/usage
" https://github.com/lervag/vimtex/wiki/introduction
let g:vimtex_compiler_progname  = 'nvr'

let g:vimtex_latexmk_enabled    = 1
let g:vimtex_latexmk_continuous = 1

let g:vimtex_compiler_latexmk = {
\  'executable' : 'latexmk',
\  'options' : [
\    '-xelatex',
\    '-file-line-error',
\    '-synctex=1',
\    '-interaction=nonstopmode',
\  ],
\}

let g:vimtex_quickfix_mode                       = 2
let g:vimtex_quickfix_open_on_warning            = 0
let g:vimtex_quickfix_autoclose_after_keystrokes = 1
let g:vimtex_quickfix_latexlog = {
\  'default'       : 1,
\  'general'       : 1,
\  'references'    : 1,
\  'overfull'      : 1,
\  'underfull'     : 1,
\  'font'          : 1,
\  'packages' : {
\    'default'     : 1,
\    'general'     : 1,
\    'babel'       : 1,
\    'biblatex'    : 1,
\    'fixltx2e'    : 1,
\    'hyperref'    : 1,
\    'natbib'      : 1,
\    'scrreprt'    : 1,
\    'titlesec'    : 1,
\  },
\}

let g:tex_flavor = "latex"
