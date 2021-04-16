" =============================================================================
" Filename: autoload/lightline/colorscheme/codedark.vim
" Author: artanikin
" Modificator: bandithijo
" License: MIT License
" Last Change: 2021/03/22 07:26:01
" =============================================================================

let s:base00 = '#1E1E1E'
let s:base01 = '#262626'
let s:base02 = '#303030'
let s:base03 = '#3C3C3C'
let s:base04 = '#808080'
let s:base05 = '#D4D4D4'
let s:base06 = '#E9E9E9'
let s:base07 = '#FFFFFF'
let s:base08 = '#F24646'
let s:base09 = '#CC9077'
let s:base0A = '#D7BA7D'
let s:base0B = '#608B4E'
let s:base0C = '#9CDCFE'
let s:base0D = '#5395D4'
let s:base0E = '#BB80C5'
let s:base0F = '#636594'
let s:status = '#005AA3'

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [s:base07, s:status, 'bold'], [s:base07, s:status] ]
let s:p.normal.right    = [ [s:base07, s:status, 'bold'], [s:base07, s:status, 'bold'], [s:base07, s:status] ]
let s:p.normal.middle   = [ [s:base07, s:status] ]
let s:p.normal.error    = [ [s:base01, s:base08] ]
let s:p.normal.warning  = [ [s:base01, s:base0A] ]
let s:p.inactive.left   = [ [s:base05, s:status] ]
let s:p.inactive.right  = [ [s:base05, s:status] ]
let s:p.inactive.middle = [ [s:base05, s:status] ]
let s:p.insert.left     = [ [s:base01, s:base0A, 'bold'], [s:base01, s:base0A] ]
let s:p.insert.right    = [ [s:base01, s:base0A], [s:base01, s:base0A, 'bold'], [s:base01, s:base0A], [s:base01, s:base0A] ]
let s:p.insert.middle   = [ [s:base01, s:base0A] ]
let s:p.replace.left    = [ [s:base01, s:base08, 'bold'], [s:base01, s:base08] ]
let s:p.replace.right   = [ [s:base01, s:base08, 'bold'], [s:base01, s:base08] ]
let s:p.replace.middle  = [ [s:base01, s:base08] ]
let s:p.visual.left     = [ [s:base01, s:base0D, 'bold'], [s:base01, s:base0D] ]
let s:p.visual.right    = [ [s:base01, s:base0D, 'bold'], [s:base01, s:base0D] ]
let s:p.visual.middle   = [ [s:base01, s:base0D] ]
let s:p.tabline.left    = [ [s:base04, s:base00] ]
let s:p.tabline.right   = [ [s:base05, s:base00, 'bold'], [s:base05, s:base00] ]
let s:p.tabline.middle  = [ [s:base04, s:base00] ]
let s:p.tabline.tabsel  = [ [s:base05, s:base00, 'bold'] ]

let g:lightline#colorscheme#codedark#palette = lightline#colorscheme#fill(s:p)
