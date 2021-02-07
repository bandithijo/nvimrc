" FZF

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Define FZF default command
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --ignore-file ".gitignore" '

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']

" Default fzf layout
" - down / up / left / right
"let g:fzf_layout = { 'down': '~50%' }
" Required:
" - width [float]
" - height [float]
"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
" Optional:
" - highlight [string default 'Comment']: Highlight group for border
" - rounded [boolean default v:true]: Use rounded border
"let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95, 'highlight': 'Comment', 'rounded': v:false } }
let g:fzf_layout = { 'window': { 'width': 1.00, 'height': 0.30, 'xoffset': 0.80, 'yoffset': 1.00, 'highlight': 'Comment', 'rounded': v:false } }

" Hide status line
" autocmd! FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
" \   'bg':      ['bg', 'Normal'],
" \   'hl':      ['fg', 'Comment'],
" \   'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
" \   'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
" \   'hl+':     ['fg', 'Statement'],
" \   'info':    ['fg', 'PreProc'],
" \   'border':  ['fg', 'Ignore'],
" \   'prompt':  ['fg', 'Conditional'],
" \   'pointer': ['fg', 'Exception'],
" \   'marker':  ['fg', 'Keyword'],
" \   'spinner': ['fg', 'Label'],
" \   'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
"let g:fzf_history_dir = '~/.local/share/fzf-history'

" Custom statusline
"function! s:fzf_statusline()
"  " Override statusline as you like
"  highlight fzf1 ctermfg=0 ctermbg=15
"  highlight fzf2 ctermfg=0 ctermbg=15
"  highlight fzf3 ctermfg=0 ctermbg=15
"  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
"endfunction

"autocmd! User FzfStatusLine call <SID>fzf_statusline()
