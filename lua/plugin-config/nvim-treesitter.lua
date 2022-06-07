local configs = require('nvim-treesitter.configs')
configs.setup {
  ensure_installed = 'all', -- Only use parses that are maintained
  highlight = { -- enabel highlighting
    enable  = true, -- false will disable the whole extension
    disable = {},   -- list of language that will be disabled
  },
  indent = {
    enable = false -- default is disabled anyways
  }
}

require'nvim-treesitter.parsers'.get_parser_configs().html.filetype_to_parsername = {'html', 'liquid', 'eruby'}
