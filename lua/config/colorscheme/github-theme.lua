local status_ok, _ = pcall(require, "github-theme")
if not status_ok then
  return
end

-- Default options
require("github-theme").setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/github-theme",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
    hide_nc_statusline = false, -- Override the underline style for non-active statuslines
    transparent = false,       -- Disable setting background
    terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,      -- Non focused panes set to alternative background
    module_default = true,     -- Default enable value for modules
    styles = {                 -- Style to be applied to different syntax groups
      comments = "NONE",       -- Value is any valid attr-list value `:help attr-list`
      functions = "NONE",
      keywords = "NONE",
      variables = "NONE",
      conditionals = "NONE",
      constants = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
    },
    inverse = {                -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    darken = {                 -- Darken floating windows and sidebar-like windows
      floats = false,
      sidebars = {
        enable = true,
        list = {},             -- Apply dark background to specific windows
      },
    },
    modules = {                -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {
    all = {
      Normal = { bg = "NONE" }, -- #F6F8FA
      NormalNC = { bg = "NONE" }, -- #F6F8FA
      NormalFloat = { bg = "NONE" }, -- #F6F8FA
      CursorLine = { bg = "NONE" },
      StatusLine = { fg = "#F6F8FA", bg = "#4377B8" },
      StatusLineNC = { fg = "#F6F8FA", bg = "#4377B9" },
      VertSplit = { fg = "#D4D4D4", bg = "NONE" },
      ColorColumn = { bg = "NONE" },

      -- Comment = { fg = "#6E7781" },

      -- plugin: indent-blankline
      IndentBlanklineChar = { fg = "#444C56", nocombine = true },

      -- plugin: telescope
      -- TelescopeNormal = { fg = "#909DAB", bold = "NONE" },
      TelescopeSelection = { fg = "#444C56", bg = "#D7BA7D", bold = true },
      TelescopeSelectionCaret = { fg = "#444C56", bg = "#D7BA7D", bold = true },
      TelescopeMultiSelection = { fg = "#F47067" },
      -- TelescopeBorder = { fg = "#292E36" },
      -- TelescopeResultsBorder = { fg = "#292E36" },
      -- TelescopePreviewBorder = { fg = "#292E36" },
      -- TelescopePromptBorder = { fg = "#292E36" },
      -- TelescopePromptPrefix = { fg = "#ADBAC7" },
      -- TelescopePromptNormal = { fg = "#ADBAC7" },
      TelescopeMatching = { fg = "#F47067" },

      -- plugin: nvim-tree
      NvimTreeNormal = { bg = "NONE" },
      NvimTreeFileIcon = { bg = "NONE" },
      NvimTreeCursorLine = { bg = "#292E36"},
      NvimTreeIndentMarker = { fg = "#444C56" },
      NvimTreeFolderIcon = { fg = "#58B9ED" },
      NvimTreeWindowPicker = { fg = "#F6F8FA", bg = "#4377B8" },

      -- plugin: treesitter
      -- TreesitterContext = { bg = "#292E36" },

      -- language: markdown
    },
  },
})

-- setup must be called before loading
vim.cmd('colorscheme github_dark_dimmed')

vim.cmd([[
" general
" hi @text.literal guifg=#c69026 gui=none
" hi @text.uri.comment gui=none

" language:markdown
" hi link mkdLineBreak Normal
hi @markup.raw gui=none
hi link markdownError @spell

" language:ruby
hi rubyTodo guifg=#22272e guibg=#539bf5
]])
