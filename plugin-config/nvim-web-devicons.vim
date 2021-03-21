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
    rs = {
      icon = "",
      color = "#93A1A1",
      name = "Rust"
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
    ["c"] = {
      icon = "",
      color = "#93A1A1",
      name = "C"
    },
    ["c++"] = {
      icon = "",
      color = "#93A1A1",
      name = "CPlusPlus"
    },
    ["cp"] = {
      icon = "",
      color = "#93A1A1",
      name = "Cp",
    },
    ["cpp"] = {
      icon = "",
      color = "#93A1A1",
      name = "Cpp",
    },
    ["h"] = {
      icon = "",
      color = "#93A1A1",
      name = "H",
    },
    ["gif"] = {
      icon = "",
      color = "#93A1A1",
      name = "Gif",
    },
    ["jpg"] = {
      icon = "",
      color = "#93A1A1",
      name = "Jpg",
    },
    ["jpeg"] = {
      icon = "",
      color = "#93A1A1",
      name = "Jpeg",
    },
    ["pdf"] = {
      icon = "",
      color = "#93A1A1",
      name = "Pdf"
    },
    ["php"] = {
      icon = "",
      color = "#93A1A1",
      name = "Php"
    };
    ["go"] = {
      icon = "",
      color = "#93A1A1",
      name = "Go",
    },
    ["png"] = {
      icon = "",
      color = "#93A1A1",
      name = "Png"
    },
    ["py"] = {
      icon = "",
      color = "#93A1A1",
      name = "Py"
    },
    ["pyc"] = {
      icon = "",
      color = "#93A1A1",
      name = "Pyc"
    },
    ["svg"] = {
      icon = "",
      color = "#93A1A1",
      name = "Svg"
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
