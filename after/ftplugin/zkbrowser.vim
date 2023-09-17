setlocal tagfunc=v:lua.zettelkasten.tagfunc
setlocal isfname+=-,:
setlocal iskeyword+=:,-
setlocal suffixesadd+=.md
setlocal keywordprg=:ZkHover\ -preview
setlocal completefunc=v:lua.zettelkasten.completefunc

setlocal nowrap
