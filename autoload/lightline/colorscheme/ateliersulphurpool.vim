" =============================================================================
" Filename: autoload/lightline/colorscheme/ateliersulphurpool.vim
" Author: atelierbram
" License: MIT License
" Last Change: 2021/03/14 12:26:00
" =============================================================================

let s:base00 = '#202746'
let s:base01 = '#293256'
let s:base02 = '#5e6687'
let s:base03 = '#6b7394'
let s:base04 = '#898ea4'
let s:base05 = '#979db4'
let s:base06 = '#dfe2f1'
let s:base07 = '#f5f7ff'
let s:base08 = '#c94922'
let s:base09 = '#c76b29'
let s:base0A = '#c08b30'
let s:base0B = '#8CAC39'
let s:base0C = '#22a2c9'
let s:base0D = '#3d8fd1'
let s:base0E = '#6679cc'
let s:base0F = '#9c637a'

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:base00, s:base05, 'bold' ], [ s:base00, s:base05 ] ]
let s:p.normal.middle   = [ [ s:base01, s:base05 ] ]
let s:p.normal.right    = [ [ s:base00, s:base05, 'bold' ], [ s:base00, s:base05, 'bold' ], [ s:base00, s:base05, 'bold' ]  ]
let s:p.inactive.right  = [ [ s:base01, s:base05 ], [ s:base01, s:base05 ] ]
let s:p.inactive.left   = [ [ s:base01, s:base05 ], [ s:base01, s:base05 ] ]
let s:p.insert.left     = [ [ s:base00, s:base09, 'bold' ], [ s:base00, s:base09 ] ]
let s:p.insert.middle   = [ [ s:base00, s:base09 ], [ s:base00, s:base09 ] ]
let s:p.insert.right    = [ [ s:base00, s:base09, 'bold' ], [ s:base00, s:base09 ] ]
let s:p.replace.left    = [ [ s:base00, s:base08, 'bold' ], [ s:base00, s:base08 ] ]
let s:p.replace.middle  = [ [ s:base00, s:base08 ], [ s:base00, s:base08 ] ]
let s:p.replace.right   = [ [ s:base00, s:base08 ], [ s:base00, s:base08 ] ]
let s:p.visual.left     = [ [ s:base00, s:base09, 'bold' ], [ s:base00, s:base09 ] ]
let s:p.visual.middle   = [ [ s:base00, s:base09 ] ]
let s:p.visual.right    = [ [ s:base00, s:base09 ], [ s:base00, s:base09 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base05 ] ]
let s:p.tabline.left    = [ [ s:base05,  '' ] ]
let s:p.tabline.tabsel  = [ [ s:base05,  '', 'bold' ] ]
let s:p.tabline.middle  = [ [ s:base05,  '' ] ]
let s:p.tabline.right   = [ [ s:base05,  '' ], [ s:base05, '' ] ]
let s:p.normal.error    = [ [ s:base00, s:base08, 'bold' ] ]
let s:p.normal.warning  = [ [ s:base00, s:base0A, 'bold' ] ]

let g:lightline#colorscheme#ateliersulphurpool#palette = lightline#colorscheme#fill(s:p)
