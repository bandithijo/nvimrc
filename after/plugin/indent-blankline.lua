-- Please see :help indent_blankline.txtfor more details.

require('indent_blankline').setup {
  show_current_context = false,
  show_current_context_start = false,

  indent_blankline_enabled = true
}

-- vim.g.indent_blankline_enabled                        = true

vim.g.indent_blankline_space_char                     = ' '
vim.g.indent_blankline_space_char_blankline           = ' '
vim.g.indent_blankline_char                           = '│'
vim.g.indent_blankline_filetype_exclude               = { 'help' }
vim.g.indent_blankline_buftype_exclude                = { 'terminal' }

vim.g.indent_blankline_use_treesitter                 = true
vim.g.indent_blankline_indent_level                   = 30
vim.g.indent_blankline_show_first_indent_level        = true
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_end_of_line               = true
vim.g.indent_blankline_filetype                       = {}
vim.g.indent_blankline_bufname_exclude                = { 'README.md', '__Tagbar__.*' }

vim.g.indent_blankline_disable_warning_message        = false
vim.g.indent_blankline_debug                          = true

vim.cmd 'hi IndentBlanklineChar guifg=#3C3C3C gui=nocombine'
