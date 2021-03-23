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
  \  ['TODO',       [':foreground #002b36', ':background #F24646', ':weight bold']],
  \  ['WAITING',    [':foreground #002b36', ':background #D7BA7D', ':weight bold']],
  \  ['DONE',       [':foreground #002b36', ':background #608B4E', ':weight bold']],
  \  ['REPORT',     [':foreground #002b36', ':background #D7BA7D', ':weight bold']],
  \  ['BUG',        [':foreground #002b36', ':background #D7BA7D', ':weight bold']],
  \  ['KNOWNCAUSE', [':foreground #002b36', ':background #D7BA7D', ':weight bold']],
  \  ['FIXED',      [':foreground #002b36', ':background #608B4E', ':weight bold']],
  \  ['CANCELED',   [':foreground #002b36', ':background #F24646', ':weight bold']]
  \  ]

" Custom color for vim-orgmode
function OrgmodeCustomColor()
  hi org_heading1  guifg=#E9E9E9 gui=bold
  hi org_heading2  guifg=#E9E9E9 gui=bold
  hi org_heading3  guifg=#E9E9E9 gui=bold
  hi org_heading4  guifg=#E9E9E9 gui=bold
  hi org_heading5  guifg=#E9E9E9 gui=bold
  hi org_heading6  guifg=#E9E9E9 gui=bold
  hi org_list_unordered guifg=#E9E9E9 gui=bold
  hi org_subtask_number_all guifg=#608B4E gui=bold
  hi org_underline gui=none
  hi hyperlink     guifg=#5395D4
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
