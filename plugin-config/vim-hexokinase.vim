" Neovim default
let g:Hexokinase_highlighters = [ 'virtual' ]


" The text to display when using virtual text for the
" highlighting.
" Default value: >
" let g:Hexokinase_virtualText = '■'
let g:Hexokinase_virtualText = ' '

" Patterns to match for all filetypes
" Can be a comma separated string or a list of strings
" Default value:
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'

" Sample value, to keep default behaviour don't define this variable
let g:Hexokinase_ftEnabled = [
      \ 'css',
      \ 'eruby',
      \ 'html',
      \ 'javascript',
      \ 'python',
      \ 'scss',
      \ 'sh',
      \ 'vim',
      \ 'xdefaults',
      \]
