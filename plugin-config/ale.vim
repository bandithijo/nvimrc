" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax
" checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your
" text files, and acts as a Vim Language Server Protocol client.

" How can I use ALE and coc.nvim together?
let g:ale_disable_lsp  = 1

let g:ale_completion_enabled = 0

let g:ale_sign_error   = ''
let g:ale_sign_warning = ''

hi ALEErrorSign   guifg=#F24646
hi ALEWarningSign guifg=#D7BA7D
" hi clear ALEErrorSign
" hi clear ALEWarningSign

let g:ale_set_highlights = 0

let g:ale_echo_msg_error_str   = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format      = '[%linter%] %s [%severity%]'

let g:ale_fix_on_save = 0

" If you don't want linters to run on opening a file
" default: 1
let g:ale_lint_on_enter = 1

" Floating preview
"let g:ale_floating_preview           = 1
"let g:ale_hover_to_floating_preview  = 1
"let g:ale_detail_to_floating_preview = 1
"let g:ale_close_preview_on_insert    = 1
"let g:float_preview#docked           = 0
"let g:ale_cursor_detail              = 1

" ALE VirtualText
let g:ale_virtualtext_cursor          = 1
let g:ale_virtualtext_prefix          = '<- '
hi ALEVirtualTextError   guifg=#F24646
hi ALEVirtualTextWarning guifg=#608B4E

" Navigate between errors quickly
nmap <silent> <A-k> <Plug>(ale_previous_wrap)
nmap <silent> <A-j> <Plug>(ale_next_wrap)

let g:ale_linters = {
\   'ruby'       : ['standardrb'],
\   'python'     : ['pylint', 'flake8'],
\   'javascript' : ['eslint'],
\   'yaml'       : ['yamllint'],
\   'c'          : ['clangd'],
\   'cpp'        : ['clangd'],
\}

let g:ale_fixers = {
\   'ruby'       : ['standardrb'],
\   'python'     : ['pylint', 'flake8'],
\   'javascript' : ['eslint'],
\   'yaml'       : ['yamllint'],
\}

" source: https://github.com/dense-analysis/ale/issues/371
let g:ale_pattern_options = {
\   'pythonbuff.py': {
\       'ale_enabled': 0
\   },
\}
