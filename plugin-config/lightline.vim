" LightLine

" separator    : \ue0b0 \ue0b2
" subseparator : \ue0b1 \ue0b3
" \   'left': '\u2502', 'right': '\u2502'

let g:lightline = {
\   'colorscheme': 'solarized8_bandit',
\   'active': {
\    'left' : [[ 'mode', 'paste' ],
\              [ 'gitbranch' ],
\              [ 'filename' ]],
\    'right': [[ 'trailing' ],
\              [ 'percent' ],
\              [ 'lineinfo' ],
\              [ 'filetype', 'fileencoding', 'fileformat' ] ]
\   },
\   'inactive': {
\    'left' : [[ 'filename' ]],
\    'right': [[ 'percent' ],
\              [ 'lineinfo' ] ]
\   },
\   'tab': {
\     'active'   : ['tabnum'],
\     'inactive' : ['tabnum']
\   },
\   'tabline': {
\   'left'  : [['buffers']],
\   'right' : [['linter_checking', 'linter_info','linter_warnings', 'linter_errors'], ['cocstatus', 'string2', 'smarttabs']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\   'left': '', 'right': ''
\   },
\   'component': {
\     'filename': '%<%{LightlineFileName()}'
\   },
\   'component_function': {
\     'gitbranch'    : 'LightlineFugitive',
\     'readonly'     : 'LightlineReadonly',
\     'fileformat'   : 'LightlineFileformat',
\     'filetype'     : 'LightlineFiletype',
\     'fileencoding' : 'LightlineFileEncoding',
\     'lineinfo'     : 'LightlineLineInfo',
\     'percent'      : 'LightlinePercent',
\     'mode'         : 'LightlineMode',
\   },
\   'component_expand': {
\     'buffers'   : 'lightline#bufferline#buffers',
\     'string1'   : 'String1',
\     'string2'   : 'String2',
\     'smarttabs' : 'SmartTabsIndicator',
\     'trailing'  : 'LightlineTrailingWhitespace',
\     'cocstatus' : 'LightLineCoc',
\     'linter_checking': 'lightline#ale#checking',
\     'linter_infos': 'lightline#ale#infos',
\     'linter_warnings': 'lightline#ale#warnings',
\     'linter_errors': 'lightline#ale#errors',
\     'linter_ok': 'lightline#ale#ok',
\   },
\   'component_type': {
\   'buffers'  : 'tabsel',
\   'trailing' : 'error',
\   },
\   'mode_map': {
\     'n'      : ' N0RMAL',
\     'i'      : ' INSERT',
\     'R'      : ' REPLACE',
\     'v'      : ' VISUAL',
\     'V'      : ' V-LINE',
\     "\<C-v>" : ' V-BL0CK',
\     'c'      : ' COMMAND',
\     's'      : ' SELECT',
\     'S'      : ' S-LINE',
\     "\<C-s>" : ' S-BL0CK',
\     't'      : ' TERMINAL',
\   }
\}

function! LightlineFugitive()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    if exists('*fugitive#head')
      let branch = fugitive#head()
      return branch !=# '' ? ' ' . branch : ''
    endif
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    return winwidth(0) > 70 ?
         \ (tolower(&fileformat) . ' ' . WebDevIconsGetFileFormatSymbol()) . ' ' :
         \ ''
  else
    return ''
  endif
endfunction

function! LightlineFiletype()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'term' && &filetype !=? 'vista'
    return strlen(&filetype) ?
         \ '[' . &shiftwidth . '] ' . &filetype . ' ' . WebDevIconsGetFileTypeSymbol() :
         \ 'no ft'
  else
    return ''
  endif
endfunction

function! LightlineFileEncoding()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    return winwidth(0) > 70 ? tolower(&fileencoding) : ''
  else
    return ''
  endif
endfunction

function! LightlineLineInfo()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    let current_line = printf('%3s', line('.'))
    let current_col  = printf('%-2s', col('.'))
    let lineinfo     = ' ' . current_line . ':' . current_col
    return &filetype !=? 'term' ? lineinfo : 'TERMINAL'
  else
    return ''
  endif
endfunction

function! LightlinePercent()
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    return printf('%2s', (line('.') * 100 / line('$'))) . '%  '
  else
    return ''
  endif
endfunction

function! LightlineFileName()
  let filename = expand('%')
  let modified = &modified ? '' : ''
  let readonly = &readonly
  if &filetype !=? 'NvimTree' && &filetype !=? 'tagbar' &&
  \  &filetype !=? 'taglist' && &filetype !=? 'vista'
    if filename ==# ''
      return '[No Name]'
    endif

    let terms = split(filename, ':')
    if terms[0] ==# 'term'
      return '[' . terms[-1] . ']'
    endif

    return filename . ' ' . (readonly ? '' : modified)
  else
    return expand('%:t') ==# '__Tagbar__.1' ? '[tagbar]'  :
         \ expand('%:t') ==# '__Tag_List__' ? '[taglist]' :
         \ expand('%:t') ==# '__vista__'    ? '[vista]' :
         \ &filetype ==# 'NvimTree' ?  '[nvimtree]' :
         \ ''
  endif
endfunction

function! LightlineMode()
  return expand('%:t') ==# '__Tagbar__.1' ? ' TAGBAR'  :
       \ expand('%:t') ==# '__Tag_List__' ? ' TAGLIST' :
       \ expand('%:t') ==# '__vista__'    ? ' VISTA' :
       \ &filetype ==# 'NvimTree' ?  ' EXPLORER' :
       \ lightline#mode()
endfunction

function! String1()
  return ' '
endfunction

function! String2()
  return 'BUFFERS'
endfunction

function! SmartTabsIndicator()
  let tabs = lightline#tab#tabnum(tabpagenr())
  let tab_total = tabpagenr('$')
  return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

function! LightlineTrailingWhitespace()
  if &filetype !=? 'NvimTree'
    let status = lightline#trailing_whitespace#component()
    return status == 'trailing' ? '!' : ''
  else
    return ''
  endif
endfunction

function! LightLineCoc()
  if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {}))
    return ''
  endif
  return trim(coc#status())
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

set showtabline=2  " Show tabline, 2 show, 1 hide when only 1 buffer, 0 hide
set guioptions-=e  " Don't use GUI tabline

let lightline#ale#indicator_checking   = ' '
let g:lightline#ale#indicator_warnings = ' '
let g:lightline#ale#indicator_errors   = ' '
let g:lightline#ale#indicator_ok       = ' '
let g:lightline#ale#indicator_infos    = ' '
