" LightLine

" separator    :  
" subseparator :  

let g:lightline = {
\   'colorscheme': 'codedark_bandit',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly' ],
\             [ 'filename', 'modified' ]],
\    'right':[[ 'trailing' ],
\             [ 'lineinfo' ],
\             [ 'percent' ],
\             [ 'filetype', 'fileencoding', 'fileformat' ] ]
\   },
\   'tab': {
\     'active':   ['tabnum'],
\     'inactive': ['tabnum']
\   },
\   'tabline': {
\   'left':  [['buffers']],
\   'right': [['string1'], ['string2', 'smarttabs']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\   'left': '', 'right': ''
\   },
\   'component': {
\     'filename': '%<%f'
\   },
\   'component_function': {
\     'gitbranch':    'LightlineFugitive',
\     'readonly':     'LightlineReadonly',
\     'modified':     'LightlineModified',
\     'filename':     'LightlineFileName',
\     'fileformat':   'LightlineFileformat',
\     'filetype':     'LightlineFiletype',
\     'fileencoding': 'LightlineFileEncoding',
\     'lineinfo':     'LightlineLineInfo',
\     'percent':      'LightlinePercent',
\     'mode':         'LightlineMode',
\   },
\   'component_expand': {
\     'buffers':   'lightline#bufferline#buffers',
\     'string1':   'String1',
\     'string2':   'String2',
\     'smarttabs': 'SmartTabsIndicator',
\     'trailing':  'LightlineTrailingWhitespace',
\   },
\   'component_type': {
\   'buffers':  'tabsel',
\   'trailing': 'warning'
\   }
\}

function! LightlineModified()
  return &modified ? '' : ''
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if &filetype !=? 'defx'
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  if &filetype !=? 'defx'
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) . ' ' : ''
  else
    return ''
  endif
endfunction

function! LightlineFiletype()
  if &filetype !=? 'defx'
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  else
    return ''
  endif
endfunction

function! LightlineFileEncoding()
  if &filetype !=? 'defx'
    return &fileencoding
  else
    return ''
  endif
endfunction

function! LightlineLineInfo()
  if &filetype !=? 'defx'
    let current_line = printf('%3s', line('.'))
    let current_col  = printf('%-2s', col('.'))
    let lineinfo     = ' ' . current_line . ':' . current_col
    return lineinfo
  else
    return ''
  endif
endfunction

function! LightlinePercent()
  if &filetype !=? 'defx'
    return printf('%3s', (line('.') * 100 / line('$'))) . '%'
  else
    return ''
  endif
endfunction

function! LightlineFileName()
  let filename = expand('%')

  if &filetype !=? 'defx'

    if filename ==# ''
      return '[No Name]'
    endif

    let parts = split(filename, ':')

    " Show the shell with full path as filename
    if parts[0] ==# 'term'
      return parts[-1]
    endif

    return filename
  else
    return '[defx]'
  endif
endfunction

function! LightlineMode()
  return &filetype ==# 'defx' ?  'DEFX' : lightline#mode()
endfunction

function! String1()
  return ' BANDITHIJO.GITHUB.IO'
endfunction

function! String2()
  return 'BUFFERS'
endfunction

function! SmartTabsIndicator()
  let tabs = lightline#tab#tabnum(tabpagenr())
  let tab_total = tabpagenr('$')
  return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

function! LightlineTrailingWhitespace()
  if &filetype !=? 'defx'
    let status = lightline#trailing_whitespace#component()
    return status == 'trailing' ? '' : ''
  else
    return ''
  endif
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction
set showtabline=2  " Show tabline, 2 show, 1 hide
set guioptions-=e  " Don't use GUI tabline
set noshowmode
