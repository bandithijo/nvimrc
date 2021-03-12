lua << EOF
-- vim:ft=lua
-- source: https://github.com/kyazdani42/nvim-web-devicons/blob/master/lua/nvim-web-devicons.lua

require'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    default_icon = {
      icon = "",
      color = "#6d8086",
      name = "Default",
    },
    rb = {
      icon = "",
      color = "#93A1A1",
      name = "Ruby"
    },
    ["config.ru"] = {
      icon = "",
      color = "#93A1A1",
      name = "ConfigRu"
    },
    js = {
      icon = "",
      color = "#93A1A1",
      name = "Javascript"
    },
    json = {
      icon = "",
      color = "#93A1A1",
      name = "JSON"
    },
    md = {
      icon = "",
      color = "#93A1A1",
      name = "Md"
    },
    markdown = {
      icon = "",
      color = "#93A1A1",
      name = "Markdown"
    },
    ["_erb"] = {
      icon = "",
      color = "#93A1A1",
      name = "Erb"
    },
    [".html.erb"] = {
      icon = "",
      color = "#93A1A1",
      name = "Erb"
    },
    yml = {
      icon = "",
      color = "#93A1A1",
      name = "Yml"
    },
    enc = {
      icon = "",
      color = "#93A1A1",
      name = ""
    },
    ["html"] = {
      icon = "",
      color = "#93A1A1",
      name = "Html",
    },
    ["png"] = {
      icon = "",
      color = "#93A1A1",
      name = "Png"
    },
    ["favicon.ico"] = {
      icon = "",
      color = "#93A1A1",
      name = "Favicon",
    },
    key = {
      icon = "",
      color = "#93A1A1",
      name = ""
    },
    sqlite3 = {
      icon = "",
      color = "#93A1A1",
      name = ""
    },
    zsh = {
      icon = "",
      color = "#93A1A1",
      name = "Zsh"
    },
    ["sh"] = {
      icon = "",
      color = "#93A1A1",
      name = "Sh"
    },
    ["license"] = {
      icon = "",
      color = "#93A1A1",
      name = "License"
    },
    ["LICENSE"] = {
      icon = "",
      color = "#93A1A1",
      name = "License"
    },
    ["README.md"] = {
      icon = "",
      color = "#93A1A1",
      name = "Readme"
    },
    ["rake"] = {
      icon = "",
      color = "#93A1A1",
      name = "Rake"
    },
    ["coffee"] = {
      icon = "",
      color = "#93A1A1",
      name = "Coffee",
    },
    ["css"] = {
      icon = "",
      color = "#93A1A1",
      name = "Css"
    },
    ["scss"] = {
      icon = "",
      color = "#93A1A1",
      name = "Scss"
    },
    ["vue"] = {
      icon = "﵂",
      color = "#93A1A1",
      name = "Vue"
    },
    ["vim"] = {
      icon = "",
      color = "#93A1A1",
      name = "Vim"
    },
  };
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = false;
}
EOF
