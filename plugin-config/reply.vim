let g:reply_repls = {
\  'ruby': ['irb'],
\  'sh': ['bash']
\}

nnoremap <leader><space> :ReplSend<cr>
vnoremap <leader><space> :ReplSend<cr>
