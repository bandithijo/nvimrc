" Enabled
" Enables blamer on (neo)vim startup.
" You can toggle blamer on/off with the :BlamerToggle command.
" If the current directory is not a git repository the blamer will be
" automatically disabled.
" Default: 0
let g:blamer_enabled = 0

" Delay
" The delay in milliseconds for the blame message to show. Setting this too
" low may cause performance issues.
" Default: 1000
let g:blamer_delay = 500

" Prefix
" The prefix that will be added to the template.
" Default: ' '
let g:blamer_prefix = '  '

" Template
" The template for the blame message that will be shown.
" Default: '<committer>, <committer-time> • <summary>'
" Available options: <author>, <author-mail>, <author-time>, <committer>,
" <committer-mail>, <committer-time>, <summary>, <commit-short>,
" <commit-long>.
let g:blamer_template = '<committer>, <committer-time> • <summary>'

" Relative time
" Shows commit date in relative format
" Default: 0
let g:blamer_relative_time = 1

" Show in visual modes
" Enables / disables blamer in visual modes.
" Default: 1
let g:blamer_show_in_visual_modes = 0

" Show in insert modes
" Enables / disables blamer in insert modes.
" Default: 1
let g:blamer_show_in_insert_modes = 0

" Highlight
" The color of the blame message.
" Default: link Blamer Comment
