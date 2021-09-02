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

" Turn on code completion support in the plugin
let g:pymode_rope_completion = 0

" Turn on code checking
let g:pymode_lint = 1

" Check code on every save (if file has been modified)
let g:pymode_lint_on_write = 1

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1


" Default code checkers (you could set several)
let g:pymode_lint_checkers = ['pep8', 'pyflakes']
" Values may be chosen from: `pylint`, `pep8`, `mccabe`, `pep257`, `pyflakes`.

" Skip errors and warnings
" E.g. ["W", "E2"] (Skip all Warnings and the Errors starting with E2) etc.
let g:pymode_lint_ignore = ["E722", "W391"]

" Select some error or warnings.
" By example you disable all warnings starting from 'W', but want to see warning
" 'W0011' and warning 'W430'
"let g:pymode_lint_select = ["E722", "W391"]

" Sort errors by relevance
" If not empty, errors will be sort by defined relevance
" E.g. let g:pymode_lint_sort = ['E', 'C', 'I']  " Errors first 'E',
" after them 'C' and ...
let g:pymode_lint_sort = []

" Auto open cwindow (quickfix) if any errors have been found
let g:pymode_lint_cwindow = 1

" Place error signs
let g:pymode_lint_signs = 1

" Definitions for signs
let g:pymode_lint_todo_symbol     = 'WW'
let g:pymode_lint_comment_symbol  = 'CC'
let g:pymode_lint_visual_symbol   = 'RR'
let g:pymode_lint_error_symbol    = 'EE'
let g:pymode_lint_info_symbol     = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'
