lua <<EOF
require('nvim-biscuits').setup({
  default_config = {
    max_length      = 10,
    min_destance    = 10,
    prefix_string   = " "
  },
  language_config = {
    html = {
      prefix_string = " "
    },
    javascript = {
      prefix_string = " ",
      max_length    = 10
    }
  }
})
EOF

" global color
highlight BiscuitColor guifg=#303030

" language specific color
"highlight BiscuitColorRust guifg=#303030
