" vim-seeing-is-believing
" source: https://github.com/hwartig/vim-seeing-is-believing

augroup seeingIsBelievingSettings
  autocmd!

  au FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  au FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  au FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  au FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  au FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  au FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  au FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)

  " for clean all the comments produce by vim-seeing-is-believing
  au FileType ruby nmap <buffer> <F6> :%s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :%s#\($\n\s*\)\+\%$##<CR>:nohl<cr>:<backspace>
  au FileType ruby xmap <buffer> <F6> :s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :'<,'>s#\($\n\s*\)\+\%$##<CR>:nohl<cr>:<backspace>
augroup END

