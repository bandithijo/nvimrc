vim.cmd [[
hi clear ModeMsg              " disable Color StatusLine on Insert Mode and Visual Mode
hi clear SignColumn

" For codedark colorscheme
hi ExtraWhitespace         guifg=#1E1E1E guibg=#F24646
"hi StatusLine              guifg=#262626 guibg=#262626
"hi StatusLineNC            guifg=#262626 guibg=#262626
"hi VertSplit               guifg=#262626 guibg=#262626 gui=NONE
hi Folded                  guifg=#D4D4D4 gui=NONE
hi NvimTreeIndentMarker    guifg=#3c3c3c guibg=NONE
hi Blamer                  guifg=#608B4E guibg=#222222
hi HighlightedyankRegion   guifg=NONE    guibg=#005F8F
hi TelescopeSelection      guifg=#D4D4D4 guibg=#005F87 gui=bold " selected item
hi TelescopeSelectionCaret guifg=#D4D4D4 guibg=#005F87 gui=bold " selection caret
hi TelescopeMultiSelection guifg=#D7BA7D " multisections
hi TelescopeBorder         guifg=#D4D4D4
hi TelescopePromptBorder   guifg=#D4D4D4
hi TelescopeResultsBorder  guifg=#D4D4D4
hi TelescopePreviewBorder  guifg=#D4D4D4
hi TelescopeMatching       guifg=#F24646
hi TelescopePromptPrefix   guifg=#F24646
hi IndentBlanklineChar     guifg=#3C3C3C gui=nocombine

hi DiagnosticVirtualTextError guifg=#D16969
hi DiagnosticVirtualTextInfo  guifg=#3C3C3C
hi DiagnosticVirtualTextWarn  guifg=#3C3C3C
hi DiagnosticVirtualTextHint  guifg=#3C3C3C

" hi DiagnosticSignError        guifg=#D7BA7D
" hi DiagnosticSignInfo         guifg=#D7BA7D
" hi DiagnosticSignWarn         guifg=#D7BA7D
" hi DiagnosticSignHint         guifg=#D7BA7D

" hi DiagnosticUnderlineError   guifg=#D16969
" hi DiagnosticUnderlineInfo    guifg=#D16969
" hi DiagnosticUnderlineWarn    guifg=#D16969
" hi DiagnosticUnderlineHint    guifg=#D16969

sign define DiagnosticSignError text= linehl= texthl=DiagnosticSignError numhl=
sign define DiagnosticSignWarn  text= linehl= texthl=DiagnosticSignWarn  numhl=
sign define DiagnosticSignInfo  text= linehl= texthl=DiagnosticSignInfo  numhl=
sign define DiagnosticSignHint  text= linehl= texthl=DiagnosticSignHint  numhl=
]]
