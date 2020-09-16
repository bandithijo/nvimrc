" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax
" checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your
" text files, and acts as a Vim Language Server Protocol client.

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '

hi clear ALEErrorSign
hi clear ALEWarningSign

let g:ale_fix_on_save = 0

let g:ale_linters = {
\   'ruby': ['rubocop'],
\   'python': ['pylint', 'flake8'],
\   'javascript': ['eslint'],
\   'c': ['ccls'],
\   'cpp': ['ccls'],
\}

let g:ale_fixers = {
\   'ruby': ['rubocop'],
\   'python': ['pylint', 'flake8'],
\   'javascript': ['eslint'],
\}
