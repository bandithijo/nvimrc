local status_ok, _ = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all", -- Only use parses that are maintained

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "" },

  highlight = { -- enabel highlighting
    enable  = true, -- false will disable the whole extension
    disable = {},   -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },

  indent = {
    enable = false -- default is disabled anyways
  },

  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },

  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {"#D7BA7D"}, -- table of hex strings (codedark: '#b58900')
    -- termcolors = {} -- table of colour name strings
  },
}

require"nvim-treesitter.parsers".get_parser_configs().html.filetype_to_parsername = {"html", "liquid", "eruby"}
