local status_ok, _ = pcall(require, "xcodedark")
if not status_ok then
  return
end

-- Default options
require("xcodedark").setup({
  -- New color scheme with your specifications
  transparent = false, -- or false if you prefer solid background
  integrations = {
    telescope = true,
    nvim_tree = true,
    gitsigns = true,
    bufferline = true,
    incline = true,
    lazygit = true,
    which_key = true,
    notify = true,
    snacks = true,
    blink = true,  -- blink.cmp completion menu
  },
  -- Font weight customization
  styles = {
    comments = { italic = false },
    keywords = { bold = true },
    functions = {},
    variables = {},
    strings = {},
    booleans = { bold = true },
    types = {},
    constants = {},
    operators = {},
    punctuation = {},
  },
  terminal_colors = true,
})
vim.cmd.colorscheme("xcodedark")

vim.cmd([[
hi IndentBlanklineChar guifg=#2C2C2C gui=nocombine
]])
