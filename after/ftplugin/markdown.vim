setlocal tabstop=2
setlocal shiftwidth=2
setlocal conceallevel=2
setlocal concealcursor=nc

" for zettelkasten.nvim
if v:lua.require("zettelkasten").contains(expand("%"))
  setlocal tagfunc=v:lua.zettelkasten.tagfunc
  setlocal isfname+=-,:
  setlocal iskeyword+=:,-
  setlocal suffixesadd+=.md
  setlocal keywordprg=:ZkHover
  setlocal completefunc=v:lua.zettelkasten.completefunc
endif

let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

syntax match mkdListItemCheckbox "\[\ \]" conceal cchar=
syntax match mkdListItemCheckbox "\[x\]" conceal cchar=

syntax match mkdListItem /^\s*\*\ze\s\+/ conceal cchar=⬤ contains=mkdListItemText
syntax match mkdListItemText /\*\s\+\zs.\+/ contained
