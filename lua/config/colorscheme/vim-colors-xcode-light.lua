vim.cmd.colorscheme("xcodelight")

vim.cmd([[
hi ColorColumn guifg=none guibg=none
hi StatusLine guibg=#e5e5e5
hi StatusLineNC guibg=#e5e5e6
hi VertSplit guifg=#f9f9fb guibg=#f9f9fb
hi WinSeparator guifg=#f9f9fb guibg=#f9f9fb
hi MsgArea guibg=none
hi ModeMsg guifg=#232323 gui=bold
hi Search guifg=#262626 guibg=#fef869
hi CurSearch guifg=#262626 guibg=#CCB17A
hi NormalFloat guibg=#ffffff

hi IndentBlanklineChar guifg=#e5e5e5 gui=nocombine

" diff
hi diffRemoved guibg=#fed1d9
hi diffAdded guibg=#d1ffe3

" plugin: nvim-treesitter-context
hi TreesitterContextSeparator guifg=#e5e5e5 gui=nocombine
hi link TreesitterContext NONE
hi TreesitterContext guibg=none

" plugin: nvim-tree
hi NvimTreeNormal guibg=#f9f9fb
hi NvimTreeNormalNC guibg=#f9f9fb
hi NvimTreeEndOfBuffer guibg=#f9f9fb
hi NvimTreeIndentMarker guifg=#e5e5e5 gui=nocombine
hi NvimTreeFolderIcon guifg=#5ea8e0
hi NvimTreeWindowPicker guibg=#e5e5e5 guifg=#232323 gui=bold
hi NvimTreeGitFolderNewHL guifg=#78492a gui=bold
hi NvimTreeGitFileNewHL guifg=#78492a gui=bold

" plugin: telescope
hi TelescopeMatching guifg=#d16969 gui=bold

" language: html
hi @string.special.url.html gui=none
hi @markup.link.label.html gui=none
hi htmlLink gui=none

" language: yaml
hi @property.yaml gui=none guifg=#3e8087

" language: markdown
hi link markdownCodeBlock String
hi link @markup.raw.block.markdown String
hi link @markup.raw.markdown_inline String
hi @markup.link.label.markdown_inline guifg=#4b21b0 gui=none
hi @markup.link.url.markdown_inline guifg=#4b21b0 gui=none
hi @markup.link.markdown_inline guifg=#4b21b0 gui=none
hi markdownCode guibg=none
hi markdownUrl gui=none
hi @keyword.directive.markdown gui=none
hi link markdownError Normal
]])
