" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark.vim
" Author: artanikin
" License: MIT License
" Last Change: 2019/12/05 12:26:00
" =============================================================================

let s:base03  = '#002b36'
let s:base02  = '#073642'
let s:base01  = '#586e75'
let s:base00  = '#657b83'
let s:base0   = '#839496'
let s:base1   = '#93a1a1'
let s:base2   = '#eee8d5'
let s:base3   = '#fdf6e3'
let s:yellow  = '#b58900'
let s:orange  = '#cb4b16'
let s:red     = '#dc322f'
let s:magenta = '#d33682'
let s:violet  = '#6c71c4'
let s:blue    = '#268bd2'
let s:cyan    = '#2aa198'
let s:green   = '#859900'

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02 ] ]
let s:p.normal.middle   = [ [ s:base1,  s:base02 ] ]
let s:p.normal.right    = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02, 'bold' ], [ s:base1, s:base02, 'bold' ] ]
let s:p.inactive.right  = [ [ s:base01, s:base02 ], [ s:base01, s:base02 ] ]
let s:p.inactive.left   = [ [ s:base01, s:base02 ], [ s:base01, s:base02 ] ]
let s:p.insert.left     = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02 ] ]
let s:p.insert.middle   = [ [ s:base1,  s:base02 ], [ s:base1, s:base02 ] ]
let s:p.insert.right    = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02 ] ]
let s:p.replace.left    = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02 ] ]
let s:p.replace.middle  = [ [ s:base1,  s:base02 ], [ s:base1, s:base02 ] ]
let s:p.replace.right   = [ [ s:base1,  s:base02 ], [ s:base1, s:base02 ] ]
let s:p.visual.left     = [ [ s:base1,  s:base02, 'bold' ], [ s:base1, s:base02 ] ]
let s:p.visual.middle   = [ [ s:base1,  s:base02 ] ]
let s:p.visual.right    = [ [ s:base1,  s:base02 ], [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base1,  s:base02 ] ]
let s:p.tabline.left    = [ [ s:base0,  s:base02 ] ]
let s:p.tabline.tabsel  = [ [ s:base1,  s:base02, 'bold' ] ]
let s:p.tabline.middle  = [ [ s:base0,  s:base02 ] ]
let s:p.tabline.right   = [ [ s:base0,  s:base02 ], [ s:base0, s:base02 ] ]
let s:p.normal.error    = [ [ s:base03, s:red, 'bold' ] ]
let s:p.normal.warning  = [ [ s:base03, s:yellow, 'bold' ] ]

let g:lightline#colorscheme#solarized8_bandit#palette = lightline#colorscheme#fill(s:p)
