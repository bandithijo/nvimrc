vim.cmd.colorscheme("xcodedark")

vim.cmd([[
hi ColorColumn guifg=none guibg=none
hi StatusLine guifg=#f9f9fb guibg=#424452
hi StatusLineNC guifg=#f9f9fb guibg=#424452
hi VertSplit guifg=#292a30 guibg=#292a30
hi WinSeparator guifg=#292a30 guibg=#292a30
hi MsgArea guibg=none
hi ModeMsg guifg=#f9f9fb gui=bold
hi IncSearch guifg=#262626 guibg=#ffa14f
hi Search guifg=#262626 guibg=#ffa14f
hi CurSearch guifg=#262626 guibg=#CCB17A
hi NormalFloat guibg=#292a30
" hi Visual guifg=#262626 guibg=#ffa14f

hi IndentBlanklineChar guifg=#35383f gui=nocombine

" diff
" hi diffRemoved guibg=#fed1d9
" hi diffAdded guibg=#d1ffe3

" plugin: nvim-treesitter-context
hi TreesitterContextSeparator guifg=#424452 gui=nocombine
hi link TreesitterContext NONE
hi TreesitterContext guibg=none

" plugin: nvim-tree
hi NvimTreeNormal guibg=#24252b
hi NvimTreeNormalNC guibg=#24252b
hi NvimTreeEndOfBuffer guibg=#24252b
hi NvimTreeIndentMarker guifg=#35383f gui=nocombine
hi NvimTreeFolderIcon guifg=#5ea8e0
hi link NvimTreeFileIcon NvimTreeNormal
hi NvimTreeFileIcon guibg=none
hi NvimTreeWindowPicker guifg=#f9f9fb guibg=#424452 gui=bold
hi NvimTreeGitFolderNewHL guifg=#ffa14f gui=bold
hi NvimTreeGitFileNewHL guifg=#ffa14f gui=bold

" plugin: telescope
hi TelescopeMatching guifg=#d16969 gui=bold

" language: html
hi @string.special.url.html gui=none
hi @markup.link.label.html gui=none
hi htmlLink gui=none

" language: yaml
hi @property.yaml gui=none guifg=#78c2b3

" language: markdown
hi link markdownCodeBlock String
hi link @markup.raw.block.markdown String
hi link @markup.raw.markdown_inline String
hi @markup.link.label.markdown_inline guifg=#b281eb gui=none
hi @markup.link.url.markdown_inline guifg=#b281eb gui=none
hi @markup.link.markdown_inline guifg=#b281eb gui=none
hi markdownCode guibg=none
hi markdownUrl gui=none
hi @keyword.directive.markdown gui=none
hi link markdownError Normal
" hi @markup.heading.1.markdown guifg=#dabaff gui=bold
" hi @markup.heading.2.markdown guifg=#dabaff gui=bold
" hi @markup.heading.3.markdown guifg=#dabaff gui=bold
]])
