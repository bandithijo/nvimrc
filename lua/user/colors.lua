function ColorschemeCodedark()
  vim.api.nvim_set_hl(0, "ExtraWhitespace", { fg = "#1E1E1E", bg = "#F24646" })
  vim.api.nvim_set_hl(0, "Folded", { fg = "#D4D4D4", bg = "none" })

  -- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#262626", bg = "#262626" })
  -- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#262626", bg = "#262626" })
  -- vim.api.nvim_set_hl(0, "VertSplit", { fg = "#262626", bg = "#262626" })

  vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#3c3c3c", bg = "none" })
  vim.api.nvim_set_hl(0, "Blamer", { fg = "#608B4E", bg = "#222222" })
  vim.api.nvim_set_hl(0, "HighlightedyankRegion", { fg = "none", bg = "#005F8F" })

  -- Telescope
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#F24646" })
  vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#D4D4D4", bg = "#005F87", bold = 1 })
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#D4D4D4", bg = "#005F87", bold = 1 })
  vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { fg = "#D7BA7D" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#D4D4D4" })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#D4D4D4" })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#D4D4D4" })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#D4D4D4" })
  vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#F24646" })
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#F24646" })
  vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3C3C3C", nocombine = 1 })


  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#D16969" })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#3C3C3C" })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#3C3C3C" })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#3C3C3C" })
end

ColorschemeCodedark()

vim.cmd [[
hi clear ModeMsg              " disable Color StatusLine on Insert Mode and Visual Mode
hi clear SignColumn

" For codedark colorscheme
"hi StatusLine              guifg=#262626 guibg=#262626
"hi StatusLineNC            guifg=#262626 guibg=#262626
"hi VertSplit               guifg=#262626 guibg=#262626 gui=NONE
" hi NvimTreeIndentMarker    guifg=#3c3c3c guibg=NONE
" hi Blamer                  guifg=#608B4E guibg=#222222
" hi HighlightedyankRegion   guifg=NONE    guibg=#005F8F

" hi TelescopeSelection      guifg=#D4D4D4 guibg=#005F87 gui=bold " selected item
" hi TelescopeSelectionCaret guifg=#D4D4D4 guibg=#005F87 gui=bold " selection caret
" hi TelescopeMultiSelection guifg=#D7BA7D " multisections
" hi TelescopeBorder         guifg=#D4D4D4
" hi TelescopePromptBorder   guifg=#D4D4D4
" hi TelescopeResultsBorder  guifg=#D4D4D4
" hi TelescopePreviewBorder  guifg=#D4D4D4
" hi TelescopeMatching       guifg=#F24646
" hi TelescopePromptPrefix   guifg=#F24646
" hi IndentBlanklineChar     guifg=#3C3C3C gui=nocombine

" hi DiagnosticVirtualTextError guifg=#D16969
" hi DiagnosticVirtualTextInfo  guifg=#3C3C3C
" hi DiagnosticVirtualTextWarn  guifg=#3C3C3C
" hi DiagnosticVirtualTextHint  guifg=#3C3C3C

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
