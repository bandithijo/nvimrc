lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,                 -- false will disable the whole extension
    disable = { },                 -- list of language that will be disabled
  },
}
EOF

lua <<EOF
require'nvim-treesitter.parsers'.get_parser_configs().html.used_by = {'html', 'liquid'}
EOF
