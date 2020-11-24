" g:tagalong_filetypes
" Example usage:
" let g:tagalong_filetypes = ['html']
" Default value:
" ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact']

" To add more filetypes, check out g:tagalong_additional_filetypes below.
" If you set it to an empty list, [], the plugin will not be automatically
" installed for any filetypes, but you can activate it yourself by calling the
" tagalong#Init() function in a particular buffer.
" g:tagalong_additional_filetypes
" Example usage:
" let g:tagalong_additional_filetypes = ['custom', 'another']
let g:tagalong_additional_filetypes = ['vue']
