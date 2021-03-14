" vim-orgmode

let g:org_indent                      = 1
let g:org_aggressive_conceal          = 0
let g:org_heading_highlight_colors    = [
  \  'Title',   'Constant', 'Identifier', 'Statement',
  \  'PreProc', 'Type',     'Special']
let g:org_heading_highlight_levels    = len(g:org_heading_highlight_colors)
let g:org_heading_shade_leading_stars = 0
let g:org_agenda_files                = ['~/org/index.org']

let g:org_todo_keywords               = [
  \  ['TODO(t)',   'WAITING(w)', 'DONE(d)'],
  \  ['REPORT(r)', 'BUG(b)',     'KNOWNCAUSE(k)', 'FIXED(f)'],
  \  ['CANCELED(c)']
  \  ]
let g:org_todo_keyword_faces          = [
  \  ['TODO',       [':foreground #002b36', ':background #DC322F', ':weight bold']],
  \  ['WAITING',    [':foreground #002b36', ':background #B58900', ':weight bold']],
  \  ['DONE',       [':foreground #002b36', ':background #859900', ':weight bold']],
  \  ['REPORT',     [':foreground #002b36', ':background #B58900', ':weight bold']],
  \  ['BUG',        [':foreground #002b36', ':background #B58900', ':weight bold']],
  \  ['KNOWNCAUSE', [':foreground #002b36', ':background #B58900', ':weight bold']],
  \  ['FIXED',      [':foreground #002b36', ':background #859900', ':weight bold']],
  \  ['CANCELED',   [':foreground #002b36', ':background #DC322F', ':weight bold']]
  \  ]

" Custom color for vim-orgmode
function OrgmodeCustomColor()
  hi org_heading1  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_heading2  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_heading3  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_heading4  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_heading5  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_heading6  ctermfg=255 cterm=bold guifg=#EEEEEE gui=bold
  hi org_underline cterm=none  gui=none
  hi hyperlink     ctermfg=4   guifg=#3D8FD1
endfunction

" Custom key for vim-orgmode
"" For set TODO label
function OrgmodeCustomKey()
  nmap <leader>d <Plug>OrgTodoToggleInteractive
endfunction

augroup OrgmodeCustomColor
  au!
  au FileType org call OrgmodeCustomColor()
augroup END

"" For go to previous link
au FileType org nmap <silent> gp :OrgHyperlinkPreviousLink<cr>

autocmd BufWinLeave *.org mkview!

" NOTE: DO NOT ENABLE THIS! STILL ON MY EXPERIMENT
" Custom conceal for vim-orgmode
"function CustomVimOrgModeConcealChar()
"  syntax match org_list_checkbox '\[\ \]' conceal cchar = 
"  syntax match org_list_checkbox '\[X\]'  conceal cchar = 
"  syntax match org_heading_shade_leading_stars '\*' conceal cchar = 
"  syntax match org_heading_shade_leading_stars '*\*' conceal cchar = 
"  syntax match org_heading_shade_leading_stars '*\*\*' conceal cchar = 
"endfunction

"augroup CustomVimOrgModeConcealChar
"  au!
"  au FileType org call CustomVimOrgModeConcealChar()
"augroup END
