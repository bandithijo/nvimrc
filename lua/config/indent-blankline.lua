local status_ok, _ = pcall(require, "ibl")
if not status_ok then
  return
end

-- Please see :help indent_blankline.txtfor more details.

require("ibl").update {
  enabled = true,
}

require("ibl").overwrite {
  debounce = 100,
  scope = { enabled = false },
  indent = {
    char = "│",
    highlight = { "IndentBlanklineChar" },
  },
  exclude = {
    filetypes = {
      "help", "man", "mail", "markdown", "tex", "packer", "dbout", "fugitive", "lspinfo", "packer", "checkhealth",
      "gitcommit", "git", "TelescopePrompt", "TelescopeResults", ""
    },
    buftypes = { "terminal", "nofile", "quickfix", "prompt" },
    buffnames = { "README.md", "__Tagbar__.*" }
  }
}

vim.g.indent_blankline_space_char                     = " "
vim.g.indent_blankline_space_char_blankline           = " "

vim.g.indent_blankline_use_treesitter                 = true
vim.g.indent_blankline_indent_level                   = 30
vim.g.indent_blankline_show_first_indent_level        = false
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_end_of_line               = true

vim.g.indent_blankline_disable_warning_message        = false
vim.g.indent_blankline_debug                          = true
