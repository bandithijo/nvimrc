" vimtex

" Default keybindings: https://github.com/lervag/vimtex/wiki/usage
" https://github.com/lervag/vimtex/wiki/introduction
let g:vimtex_compiler_progname  = 'nvr'

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

let g:tex_flavor = "latex"
