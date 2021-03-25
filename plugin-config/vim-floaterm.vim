" Set floaterm window's title
let g:floaterm_title = '─[  $1:$2 ]─'

" Type String. 8 characters of the floating window border (top, right, bottom,
" left, topleft, topright, botright, botleft).
let g:floaterm_borderchars = '─│─│┌┐┘└'

" Set floaterm window's background to black
hi Floaterm guibg=NONE
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=NONE guifg=#D4D4D4

" Mapping
let g:floaterm_keymap_new    = '<Leader>ft'
let g:floaterm_keymap_prev   = '<Leader>fn'
let g:floaterm_keymap_next   = '<Leader>fp'
let g:floaterm_keymap_toggle = '<Leader>fh'
