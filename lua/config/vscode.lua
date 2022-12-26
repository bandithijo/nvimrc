local status_ok, _ = pcall(require, "vscode")
if not status_ok then
  return
end

-- For dark theme (neovim's default)
vim.o.background = "dark"
-- For light theme
-- vim.o.background = "light"

-- local c = require("vscode.colors")
require("vscode").setup({
  -- Enable transparent background
  transparent = false,

  -- Enable italic comment
  italic_comments = false,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = true,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    -- vscLineNumber = "#FFFFFF",
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    ExtraWhitespace = { fg = "#1E1E1E", bg = "#F24646" },
    Folded = { fg = "#D4D4D4" },

    -- StatusLine = { fg = "#262626", bg = "#262626" },
    -- StatusLineNC = { fg = "#262626", bg = "#262626" },
    -- VertSplit = { fg = "#262626", bg = "#262626" },

    -- plugin: highlight-yank-region
    HighlightedyankRegion = { fg = "NONE", bg = "#005F8F" },

    -- plugin: blamer
    Blamer = { fg = "#608B4E", bg = "NONE" },

    -- plugin: nvim-tree
    NvimTreeRootFolder = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeFolderIcon = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeIndentMarker = { fg = "#3C3C3C", bg = "NONE" },
    NvimTreeGitDirty = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeGitStaged = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeGitMerge = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeGitRenamed = { fg = "#CCB17A", bg = "NONE" },
    NvimTreeGitNew = { fg = "#CCB17A", bg = "NONE" },

    -- plugin: indent-blankline
    IndentBlanklineChar = { fg = "#3C3C3C", nocombine = 1 },

    -- plugin: telescope
    TelescopeSelection = { fg = "#D4D4D4", bg = "#005F87", bold = 1 },
    TelescopeSelectionCaret = { fg = "#D4D4D4", bg = "#005F87", bold = 1 },
    TelescopeMultiSelection = { fg = "#D7BA7D" },
    TelescopeBorder = { fg = "#D4D4D4" },
    TelescopePromptBorder = { fg = "#D4D4D4" },
    TelescopeResultsBorder = { fg = "#D4D4D4" },
    TelescopePreviewBorder = { fg = "#D4D4D4" },
    TelescopeMatching = { fg = "#F24646" },
    TelescopePromptPrefix = { fg = "#F24646" },

    -- plugin: lsp
    DiagnosticVirtualTextError = { fg = "#D16969" },
    DiagnosticVirtualTextInfo = { fg = "#3C3C3C" },
    DiagnosticVirtualTextWarn = { fg = "#3C3C3C" },
    DiagnosticVirtualTextHint = { fg = "#3C3C3C" },

    -- DiagnosticSignError = { fg = "#D7BA7D" },
    -- DiagnosticSignInfo = { fg = "#D7BA7D" },
    -- DiagnosticSignWarn = { fg = "#D7BA7D" },
    -- DiagnosticSignHint = { fg = "#D7BA7D" },
    --
    -- DiagnosticUnderlineError = { fg = "#D16969" },
    -- DiagnosticUnderlineInfo = { fg = "#D16969" },
    -- DiagnosticUnderlineWarn = { fg = "#D16969" },
    -- DiagnosticUnderlineHint = { fg = "#D16969" },

    -- plugin: vim-floaterm
    Floaterm = { bg = "#1E1E1E" },
    FloatermBorder = { fg = "#1E1E1E", bg = "#1E1E1E" },

    -- plugin: gitsigns
    GitSignsAdd = { fg = "#569CD6", bg = "NONE" },
    GitSignsChange = { fg = "#CCB17A", bg = "NONE" },
    GitSignsDelete = { fg = "#D16969", bg = "NONE" },
  }
})

vim.cmd.sign("define DiagnosticSignError text= linehl= texthl=DiagnosticSignError numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= linehl= texthl=DiagnosticSignWarn  numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= linehl= texthl=DiagnosticSignInfo  numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= linehl= texthl=DiagnosticSignHint  numhl=")
