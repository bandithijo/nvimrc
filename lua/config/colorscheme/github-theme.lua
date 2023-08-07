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
    hide_nc_statusline = true, -- Override the underline style for non-active statuslines
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
      CursorLine = { bg = "none" },
    },
  },
})

-- setup must be called before loading
vim.cmd('colorscheme github_dark_dimmed')

vim.cmd[[
hi @text.literal guifg=#adbac7 gui=none
hi @text.uri.comment gui=none
hi TreesitterContext guibg=#292E36
hi @text.literal guifg=#c69026
hi link mkdLineBreak Normal
]]
