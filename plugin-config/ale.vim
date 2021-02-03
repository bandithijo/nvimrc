" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax
" checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your
" text files, and acts as a Vim Language Server Protocol client.

" How can I use ALE and coc.nvim together?
let g:ale_disable_lsp  = 1

let g:ale_completion_enabled = 0

let g:ale_sign_error   = ''
let g:ale_sign_warning = ''

hi ALEErrorSign   ctermfg=196 guifg=#DC322F
hi ALEWarningSign ctermfg=214 guifg=#B58900
" hi clear ALEErrorSign
" hi clear ALEWarningSign

let g:ale_echo_msg_error_str   = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format      = '[%linter%] %s [%severity%]'

let g:ale_fix_on_save = 0

" If you don't want linters to run on opening a file
" default: 1
let g:ale_lint_on_enter = 1

" Navigate between errors quickly
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
\   'ruby'       : ['rubocop', 'sorbet'],
\   'python'     : ['pylint', 'flake8'],
\   'javascript' : ['eslint'],
\   'c'          : ['clangd'],
\   'cpp'        : ['clangd'],
\}

let g:ale_fixers = {
\   'ruby'       : ['rubocop', 'sorbet'],
\   'python'     : ['pylint', 'flake8'],
\   'javascript' : ['eslint'],
\}

" source: https://github.com/dense-analysis/ale/issues/371
let g:ale_pattern_options = {
\   'pythonbuff.py': {
\       'ale_enabled': 0
\   },
\}
