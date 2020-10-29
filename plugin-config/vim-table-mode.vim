" vim-table-mode

" To start using the plugin in the on-the-fly mode use :TableModeToggle
" mapped to <Leader>tm by default (which means \ t m if you didn't override
" the by :let mapleader = ',' to have , t m).

" Corner separators are adjustable:
" For Markdown-compatible tables use
"let g:table_mode_corner='|'

" To get ReST-compatible tables use
"let g:table_mode_corner_corner='+'
"let g:table_mode_header_fillchar='='

" Tip : You can use the following to quickly enable / disable table mode
" in insert mode by using || or __ :
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" Corner separators are adjustable:
" For Markdown-compatible tables use
let g:table_mode_corner          = '|'

" To get ReST-compatible tables use
let g:table_mode_corner_corner   = '+'
let g:table_mode_header_fillchar = '='
