local status_ok, _ = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "css",
    "diff",
    "dot",
    "gitignore",
    "go",
    "help",
    "html",
    "ini",
    "javascript",
    "jq",
    "json",
    "latex",
    "make",
    "markdown",
    "markdown_inline",
    "meson",
    "ninja",
    "perl",
    "python",
    "regex",
    "ruby",
    "rust",
    "scss",
    "sql",
    "sxhkdrc",
    "todotxt",
    "vim",
    "yaml",
  },

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

  autotag = {
  enable = true,
  filetypes = {
      "css",
      "html",
      "json",
      "javascript",
      "typescript",
      "xml",
    },
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
    disable = { "html" }, -- list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = { "#93A1A1" }, -- table of hex strings (codedark: '#D7BA7D', gruvbox: '#D79921', solarized: '#93A1A1')
    -- termcolors = {} -- table of colour name strings
  },
}

-- parser: html
require"nvim-treesitter.parsers".get_parser_configs().html.filetype_to_parsername = {
  "eruby",
  "html",
  "liquid",
}
