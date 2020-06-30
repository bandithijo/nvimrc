" =============================================================================
" Filename: autoload/lightline/colorscheme/dwm.vim
" Author: bandithijo
" License: MIT License
" Last Change: 2020/05/09 07:26:01
" =============================================================================

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ ['white', 'darkestblue', 'bold'], ['white', 'gray4'] ]
let s:p.normal.right    = [ ['gray3', 'gray10', 'bold'], ['gray2', 'gray10', 'bold'], ['gray9', 'gray4'] ]
let s:p.inactive.right  = [ ['gray1', 'gray4'] ]
let s:p.inactive.left   = [ ['gray1', 'gray4', 'bold'] ]
let s:p.inactive.middle = [ ['gray1', 'gray4'] ]
let s:p.insert.left     = [ ['blue', 'white', 'bold'], ['white', 'blue'] ]
let s:p.insert.right    = [ ['white', 'blue' ], [ 'white', 'darkblue' ], [ 'white', 'darkestblue'] ]
let s:p.replace.left    = [ ['white', 'red', 'bold'], ['white', 'gray4'] ]
let s:p.visual.left     = [ ['white', 'orange', 'bold'], ['white', 'gray4'] ]
let s:p.normal.middle   = [ ['gray7', 'gray2'] ]
let s:p.insert.middle   = [ ['white', 'darkestblue'] ]
let s:p.replace.middle  = s:p.normal.middle
let s:p.replace.right   = s:p.normal.right
let s:p.tabline.left    = [ ['gray9', 'gray4'] ]
let s:p.tabline.tabsel  = [ ['gray3', 'gray10', 'bold'] ]
let s:p.tabline.middle  = [ ['gray4', 'gray2'] ]
let s:p.tabline.right   = [ ['gray9', 'gray3', 'bold'] ]
let s:p.normal.error    = [ ['gray1', 'brightestred'] ]
let s:p.normal.warning  = [ ['white', 'orange'] ]

let g:lightline#colorscheme#dwm#palette = lightline#colorscheme#fill(s:p)
