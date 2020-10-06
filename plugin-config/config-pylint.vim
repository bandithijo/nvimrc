" pylint

let g:syntastic_python_checkers = ['pylint']  "" or ['flake8', 'pylint', 'pylama'], etc
let g:syntastic_python_pylint_args = '-E'
" to show it accepts a string of args, also:
"let g:syntastic_python_pylint_args = '--rcfile=/path/to/rc -E'
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3.8'
