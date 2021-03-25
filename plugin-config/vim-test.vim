let test#strategy = {
\  'nearest': 'floaterm',
\  'file'   : 'floaterm',
\  'suite'  : 'floaterm',
\}

" for neovim
let test#neovim#term_position = "bot 20"

" these 'Ctrl mappings' work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
