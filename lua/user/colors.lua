vim.cmd.highlight('clear ModeMsg')
vim.cmd.highlight('clear SignColumn')

vim.api.nvim_set_hl(0, "ExtraWhitespace", { fg = "#1E1E1E", bg = "#F24646" })
vim.api.nvim_set_hl(0, "Folded", { fg = "#D4D4D4" })

-- highlight-yank-region
vim.api.nvim_set_hl(0, "HighlightedyankRegion", { fg = "none", bg = "#005F8F" })

-- blamer
vim.api.nvim_set_hl(0, "Blamer", { fg = "#608B4E", bg = "none" })

-- nvim-tree
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#3c3c3c", bg = "none" })

-- indent-blankline
vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3C3C3C", nocombine = 1 })

-- vim.api.nvim_set_hl(0, "StatusLine", { fg = "#262626", bg = "#262626" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#262626", bg = "#262626" })
-- vim.api.nvim_set_hl(0, "VertSplit", { fg = "#262626", bg = "#262626" })

-- telescope
vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#D4D4D4", bg = "#005F87", bold = 1 })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#D4D4D4", bg = "#005F87", bold = 1 })
vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { fg = "#D7BA7D" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#F24646" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#F24646" })

-- lsp
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#D16969" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#3C3C3C" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#3C3C3C" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#3C3C3C" })

-- vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#D7BA7D" })
-- vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#D7BA7D" })
-- vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#D7BA7D" })
-- vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#D7BA7D" })
--
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = "#D16969" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { fg = "#D16969" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { fg = "#D16969" })
-- vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { fg = "#D16969" })

vim.cmd.sign('define DiagnosticSignError text= linehl= texthl=DiagnosticSignError numhl=')
vim.cmd.sign('define DiagnosticSignWarn text= linehl= texthl=DiagnosticSignWarn numhl=')
vim.cmd.sign('define DiagnosticSignInfo text= linehl= texthl=DiagnosticSignInfo numhl=')
vim.cmd.sign('define DiagnosticSignHint text= linehl= texthl=DiagnosticSignHint numhl=')

-- vim-floaterm
vim.api.nvim_set_hl(0, "Floaterm", { bg = "#1E1E1E" })
vim.api.nvim_set_hl(0, "FloatermBorder", { fg = "#1E1E1E", bg = "#1E1E1E" })
