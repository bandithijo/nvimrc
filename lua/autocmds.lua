vim.cmd [[
" restore cursor position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" disable relative number on Terminal
autocmd TermOpen * setlocal nonumber norelativenumber scl=no

" auto update trigger when cursor stops moving
autocmd CursorHold,CursorHoldI * checktime

" auto update trigger on buffer change or terminal focus
autocmd FocusGained,BufEnter * checktime
]]
