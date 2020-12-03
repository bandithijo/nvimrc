" pylint

let g:syntastic_python_checkers    = ['pylint']  "" or ['flake8', 'pylama'], etc
let g:syntastic_python_pylint_args = '-E'
let g:python_host_prog             = '/usr/bin/python2'
let g:python3_host_prog            = '/usr/bin/python3'
