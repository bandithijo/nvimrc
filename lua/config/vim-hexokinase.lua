-- Neovim default
vim.g.Hexokinase_highlighters = { "virtual" }

-- The text to display when using virtual text for the
-- highlighting.
-- Default value: >
-- let g:Hexokinase_virtualText = "■"
-- vim.g.Hexokinase_virtualText = "■ "
vim.g.Hexokinase_virtualText = " "

-- Hex code to use when calculating alpha for `rgba` and `hsla`
-- functions.
--
-- Default value: >
--     g:Hexokinase_alpha_bg = ''
vim.g.Hexokinase_alpha_bg = ''

-- Patterns to match for all filetypes
-- Can be a comma separated string or a list of strings
-- Default value:
vim.g.Hexokinase_optInPatterns = "full_hex,rgb,rgba,hsl,hsla,colour_names"

-- Sample value, to keep default behaviour don't define this variable
vim.g.Hexokinase_ftEnabled = {
  "css",
  "eruby",
  "ruby",
  "html",
  "javascript",
  "lua",
  "python",
  "scss",
  "sh",
  "vim",
  "xdefaults",
}
