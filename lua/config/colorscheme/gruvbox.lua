local status_ok, _ = pcall(require, "gruvbox")
if not status_ok then
  return
end

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {
    -- general
    SignColumn = { bg = "NONE" },
    FoldColumn = { bg = "NONE"},
    Folded = { italic = 0 },
    Comment = { italic = 0 },
    Operator = { italic = 0 },
    String = { italic = 0 },
    Todo = { italic = 0 },
    ExtraWhitespace = { fg = "NONE", bg = "#F24646" },
    Cursor = { fg = "#D79921" },
    CursorLine = { bg = "NONE" },
    CursorLineNr = { fg="#D79921", bg = "NONE" },
    ColorColumn = { bg = "NONE" },

    -- StatusLine = { fg = "#262626", bg = "#262626" },
    -- StatusLineNC = { fg = "#262626", bg = "#262626" },
    -- VertSplit = { fg = "#262626", bg = "#262626" },

    -- language
    htmlLink = { fg = "#458588", underline = 1 },


    -- diff
    diffRemoved = { fg = '#EBDBB2', bg = '#CC241D' },
    diffAdded = { fg = '#EBDBB2', bg = '#608B4E' },

    -- plugin: highlight-yank-region
    HighlightedyankRegion = { fg = "#282828", bg = "#D79921" },

    -- plugin: blamer
    Blamer = { fg = "#928374", bg = "NONE" },

    -- plugin: nvim-tree
    NvimTreeRootFolder = { fg = "#D79921", bg = "NONE" },
    NvimTreeFolderIcon = { fg = "#D79921", bg = "NONE" },
    NvimTreeFolderName = { fg = "#D79921", bg = "NONE" },
    NvimTreeOpenedFolderName = { fg = "#D79921", bg = "NONE" },
    NvimTreeIndentMarker = { fg = "#3C3836", bg = "NONE" },
    NvimTreeGitDirty = { fg = "#D79921", bg = "NONE" },
    NvimTreeGitStaged = { fg = "#D79921", bg = "NONE" },
    NvimTreeGitMerge = { fg = "#D79921", bg = "NONE" },
    NvimTreeGitRenamed = { fg = "#D79921", bg = "NONE" },
    NvimTreeGitNew = { fg = "#D79921", bg = "NONE" },
    NvimTreeWindowPicker = { fg = "#EBDBB2", bg = "#3C3836" },

    -- plugin: indent-blankline
    IndentBlanklineChar = { fg = "#3C3836", nocombine = 1 },

    -- plugin: telescope
    TelescopeSelection = { fg = "#F2E5BC", bg = "#CC241D", bold = 1 },
    TelescopeSelectionCaret = { fg = "#F2E5BC", bg = "#CC241D", bold = 1 },
    TelescopeMultiSelection = { fg = "#CC241D" },
    TelescopeBorder = { fg = "#EBDBB2" },
    TelescopeResultsBorder = { fg = "#EBDBB2" },
    TelescopePreviewBorder = { fg = "#EBDBB2" },
    TelescopePromptBorder = { fg = "#EBDBB2" },
    TelescopePromptPrefix = { fg = "#EBDBB2" },
    TelescopeMatching = { fg = "#D79921", bold = 1 },

    -- plugin: lsp
    DiagnosticVirtualTextError = { fg = "#CC241D" },
    DiagnosticVirtualTextWarn = { fg = "#3C3836" },
    DiagnosticVirtualTextInfo = { fg = "#3C3836" },
    DiagnosticVirtualTextHint = { fg = "#3C3836" },

    DiagnosticSignError = { fg = "#CC241D" },
    DiagnosticSignWarn = { fg = "#D79921" },
    DiagnosticSignInfo = { fg = "#458588" },
    DiagnosticSignHint = { fg = "#458588" },

    DiagnosticUnderlineError = { underline = 1, sp = "#CC241D" },
    DiagnosticUnderlineWarn = { underline = 1, sp = "#D79921" },
    DiagnosticUnderlineInfo = { underline = 1, sp = "#458588" },
    DiagnosticUnderlineHint = { underline = 1, sp = "#458588" },

    -- plugin: vim-floaterm
    Floaterm = { bg = "#282828" },
    FloatermBorder = { fg = "#282828", bg = "#282828" },

    -- plugin: gitsigns
    GitSignsAdd = { fg = "#458588", bg = "NONE" },
    GitSignsChange = { fg = "#D79921", bg = "NONE" },
    GitSignsDelete = { fg = "#CC241D", bg = "NONE" },
  },
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

vim.cmd.sign("define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=")

-- language
vim.cmd([[
" hi @text.title guifg=#D7BA7D gui=bold
" hi @text.literal guifg=#CE9178
" hi @punctuation.special guifg=#569CD6 gui=bold
hi @text.todo.checked gui=none
hi @text.todo.unchecked gui=none
hi @text.todo guifg=#F2E5BC guibg=#CC241D gui=bold
hi @text.note guifg=#F2E5BC guibg=#D79921 gui=bold
]])
