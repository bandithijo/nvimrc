" netrw is a vim's default file explorer.
" I need to ricing this because if file explorer fallback to Netrw, it dosen't
" look so bad. (^_^)

let g:netrw_banner = 0

" CHANGING THE DIRECTORY VIEW IN NETRW
" The directory listing view can be modified to show more or less information
" on files and directories, change the sorting order and hiding certain files.
" With the directory browser open hit i to cycle through the view types. There
" are four different view types: thin, long, wide and tree.
let g:netrw_liststyle = 3


" CHANGING HOW FILES ARE OPENED
" By default files will be opened in the same window as the netrw directory
" browser.
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 0

" HIDE BY DEFAULT
" Make netrw start with dotfiles hidden. Press gh for toggle hide & show
let g:netrw_hide = 1
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
