" Turn on the whole plugin.
let g:pymode = 1

" Turn off plugin's warnings.
let g:pymode_warnings = 0

" Pymode supports PEP8-compatible python indent.
" Enable pymode indentation
let g:pymode_indent = 1

" Enable automatic virtualenv detection
let g:pymode_virtualenv = 1

" :PymodeRun* -- Run current buffer or selection
" Turn on the run code script
let g:pymode_run = 1

" Binds keys to run python code
let g:pymode_run_bind = '<leader>r'

" Turn on code checking
let g:pymode_lint = 1

" Turn on code completion support in the plugin
let g:pymode_rope_completion = 0


" Place error signs
let g:pymode_lint_signs = 1

" Definitions for signs
let g:pymode_lint_todo_symbol     = 'WW'
let g:pymode_lint_comment_symbol  = 'CC'
let g:pymode_lint_visual_symbol   = 'RR'
let g:pymode_lint_error_symbol    = 'EE'
let g:pymode_lint_info_symbol     = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'
