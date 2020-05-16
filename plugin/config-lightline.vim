" LightLine

let g:lightline = {
\   'colorscheme': 'dwm',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly' ],
\             [ 'filename', 'modified' ]],
\    'right':[[ 'lineinfo' ],
\             [ 'percent' ],
\             [ 'filetype', 'fileencoding', 'fileformat' ] ]
\   },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\     'filename': '%<%f'
\   },
\   'component_function': {
\     'gitbranch': 'LightlineFugitive',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'fileformat': 'LightlineFileformat',
\     'filetype': 'LightlineFiletype',
\   }
\}
"  'left': '', 'right': ''
let g:lightline.separator = {
\   'left': '', 'right': ''
\}
"   'left': '', 'right': ''
let g:lightline.subseparator = {
\   'left': '│', 'right': '│'
\}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['string1'], ['string2']]
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}

function! LightlineModified()
  return &modified ? '●' : ''
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return fugitive#head()
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
 call lightline#init()
 call lightline#colorscheme()
 call lightline#update()
endfunction

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
