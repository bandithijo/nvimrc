local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
  return
end

-- options
require('options')

-- autocommands
require('autocmds')

-- remaps
require('remaps')

-- colors
require('colors')

-- lsp config
require('lsp.lsp-installer')
require('lsp.emmet-ls')

-- plugin config
require('plugin.blamer')
require('plugin.comment')
require('plugin.gitsigns')
require('plugin.feline')
require('plugin.friendly-snippets')
require('plugin.indent-blankline')
require('plugin.lexima')
require('plugin.markdown-preview')
require('plugin.neoformat')
require('plugin.nvim-cmp')
require('plugin.nvim-dap')
require('plugin.nvim-gps')
require('plugin.nvim-tree')
require('plugin.nvim-treesitter')
require('plugin.nvim-ufo')
require('plugin.nvim-web-devicons')
require('plugin.presence')
require('plugin.sgmlendtag')
require('plugin.stabilize')
require('plugin.startuptime')
require('plugin.telescope')
require('plugin.tagbar')
require('plugin.lspkind')
require('plugin.packer')
require('plugin.vim-better-whitespace')
require('plugin.vim-checkbox')
require('plugin.vim-easy-align')
require('plugin.vim-floaterm')
require('plugin.vim-fugitive')
require('plugin.vim-liquid')
require('plugin.vim-hexokinase')
require('plugin.vim-highlightedyank')
require('plugin.vim-markdown')
require('plugin.vim-rhubarb')
require('plugin.vim-ruby')
require('plugin.vim-surround')
require('plugin.vim-table-mode')
require('plugin.vim-test')
require('plugin.vim-vsnip')
require('plugin.wakatime')
