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

    StatusLine = { fg = "NONE", bg = "#303030" },
    StatusLineNC = { fg = "NONE", bg = "#303031" },
    VertSplit = { fg = "#262626", bg = "NONE" },

    -- diff
    diffRemoved = { fg = '#D0D0D0', bg = '#5E0101' },
    diffAdded = { fg = '#D0D0D0', bg = '#015E01' },

    -- plugin: highlight-yank-region
    HighlightedyankRegion = { fg = "NONE", bg = "#005F8F" },

    -- plugin: blamer
    Blamer = { fg = "#608B4E", bg = "NONE" },

    -- plugin: indent-blankline
    IndentBlanklineChar = { fg = "#3C3C3C", nocombine = 1 },

    -- plugin: telescope
    TelescopeSelection = { fg = "#D4D4D4", bg = "#005F87", bold = 1 },
    TelescopeSelectionCaret = { fg = "#D4D4D4", bg = "#005F87", bold = 1 },
    TelescopeMultiSelection = { fg = "#D7BA7D" },
    TelescopeBorder = { fg = "#3C3C3C" },
    TelescopeResultsBorder = { fg = "#3C3C3C" },
    TelescopePreviewBorder = { fg = "#3C3C3C" },
    TelescopePromptBorder = { fg = "#3C3C3C" },
    TelescopePromptPrefix = { fg = "#D4D4D4" },
    TelescopeMatching = { fg = "#F24646" },

    -- plugin: lsp
    DiagnosticVirtualTextError = { fg = "#D16969" },
    DiagnosticVirtualTextWarn = { fg = "#3C3C3C" },
    DiagnosticVirtualTextInfo = { fg = "#3C3C3C" },
    DiagnosticVirtualTextHint = { fg = "#3C3C3C" },

    DiagnosticSignError = { fg = "#F24646" },
    DiagnosticSignWarn = { fg = "#CCB17A" },
    DiagnosticSignInfo = { fg = "#569CD6" },
    DiagnosticSignHint = { fg = "#569cd6" },

    DiagnosticUnderlineError = { undercurl = true, sp = "#D16969" },
    DiagnosticUnderlineWarn = { undercurl = true, sp = "#3C3C3C" },
    DiagnosticUnderlineInfo = { undercurl = true, sp = "#3C3C3C" },
    DiagnosticUnderlineHint = { undercurl = true, sp = "#3C3C3C" },

    -- plugin: vim-floaterm
    Floaterm = { bg = "#1E1E1E" },
    FloatermBorder = { fg = "#1E1E1E", bg = "#1E1E1E" },

    -- plugin: gitsigns
    GitSignsAdd = { fg = "#569CD6", bg = "NONE" },
    GitSignsChange = { fg = "#CCB17A", bg = "NONE" },
    GitSignsDelete = { fg = "#D16969", bg = "NONE" },
  }
})

vim.cmd.sign("define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=")


vim.cmd([[
colorscheme vscode
set termguicolors
]])

-- language
vim.cmd([[
hi clear ModeMsg
hi clear MoreMsg
hi clear CursorLine
hi @text.title guifg=#D7BA7D gui=bold
hi @text.literal guifg=#CE9178
hi @punctuation.special guifg=#569CD6 gui=bold
hi ejsTag guifg=#D16969
hi link @keyword.function.ruby Define
hi @function.ruby guifg=#DCDCAA gui=bold
hi link mkdHeading @text.title
hi link htmlH1 @text.title
hi link mkdLineBreak Normal
hi netrwTreeBar guifg=#3C3C3C
]])
