" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark_bandit.vim
" Author: artanikin
" Modificator: bandithijo
" License: MIT License
" Last Change: 2020/09/12 07:26:01
" =============================================================================

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ ['white', 'darkestblue', 'bold'], ['white', 'gray4'] ]
let s:p.normal.right    = [ ['gray3', 'gray10', 'bold'], ['gray2', 'gray10', 'bold'], ['gray9', 'gray4'] ]
let s:p.inactive.right  = [ ['gray6', 'gray2'] ]
let s:p.inactive.left   = [ ['gray6', 'gray2'] ]
let s:p.inactive.middle = [ ['gray6', 'gray2'] ]
let s:p.insert.left     = [ ['blue', 'white', 'bold'], ['white', 'darkblue'] ]
let s:p.insert.right    = [ ['blue', 'white'], ['blue', 'white', 'bold'], ['white', 'darkblue'], ['white', 'darkestblue'] ]
let s:p.replace.left    = [ ['white', 'red', 'bold'], ['white', 'gray4'] ]
let s:p.visual.left     = [ ['white', 'orange', 'bold'], ['white', 'gray4'] ]
let s:p.normal.middle   = [ ['gray7', 'gray2'] ]
let s:p.insert.middle   = [ ['white', 'darkestblue'] ]
let s:p.replace.middle  = s:p.normal.middle
let s:p.replace.right   = s:p.normal.right
let s:p.tabline.left    = [ ['gray9', 'gray4'] ]
let s:p.tabline.tabsel  = [ ['gray3', 'gray10', 'bold'] ]
let s:p.tabline.middle  = [ ['gray4', 'gray2'] ]
let s:p.tabline.right   = [ ['gray9', 'gray3', 'bold'], ['gray4', 'gray2'] ]
let s:p.normal.error    = [ ['gray1', 'brightestred'] ]
let s:p.normal.warning  = [ ['white', 'orange'] ]

let g:lightline#colorscheme#codedark_bandit#palette = lightline#colorscheme#fill(s:p)
