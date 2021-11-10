lua << EOF
-- vim:ft=lua
-- source: https://github.com/kyazdani42/nvim-web-devicons/blob/master/lua/nvim-web-devicons.lua

require'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    default_icon = {
      icon = "",
      color = "#D4D4D4",
      name = "Default",
    };
    ["diff"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Diff",
    };
    rs = {
      icon = "",
      color = "#D4D4D4",
      name = "Rust"
    };
    ["ini"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Ini",
    };
    rb = {
      icon = "",
      color = "#D4D4D4",
      name = "Ruby"
    };
    ["erb"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Erb",
    };
    ["conf"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Conf",
    };
    ["config.ru"] = {
      icon = "",
      color = "#D4D4D4",
      name = "ConfigRu"
    };
    js = {
      icon = "",
      color = "#D4D4D4",
      name = "Javascript"
    };
    json = {
      icon = "",
      color = "#D4D4D4",
      name = "JSON"
    };
    md = {
      icon = "",
      color = "#D4D4D4",
      name = "Md"
    };
    markdown = {
      icon = "",
      color = "#D4D4D4",
      name = "Markdown"
    };
    ["_erb"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Erb"
    };
    [".html.erb"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Erb"
    };
    yml = {
      icon = "",
      color = "#D4D4D4",
      name = "Yml"
    };
    enc = {
      icon = "",
      color = "#D4D4D4",
      name = ""
    };
    ["html"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Html",
    };
    ["c"] = {
      icon = "",
      color = "#D4D4D4",
      name = "C"
    };
    ["c++"] = {
      icon = "",
      color = "#D4D4D4",
      name = "CPlusPlus"
    };
    ["cp"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Cp",
    };
    ["cpp"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Cpp",
    };
    ["h"] = {
      icon = "",
      color = "#D4D4D4",
      name = "H",
    };
    ["gif"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Gif",
    };
    ["jpg"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Jpg",
    };
    ["jpeg"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Jpeg",
    };
    ["pdf"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Pdf"
    };
    ["php"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Php"
    };
    ["go"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Go",
    };
    ["png"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Png"
    };
    ["py"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Py"
    };
    ["pyc"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Pyc"
    };
    ["svg"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Svg"
    };
    ["favicon.ico"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Favicon",
    };
    key = {
      icon = "",
      color = "#D4D4D4",
      name = ""
    };
    sqlite3 = {
      icon = "",
      color = "#D4D4D4",
      name = ""
    };
    zsh = {
      icon = "",
      color = "#D4D4D4",
      name = "Zsh"
    };
    ["sh"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Sh"
    };
    ["license"] = {
      icon = "",
      color = "#D4D4D4",
      name = "License"
    };
    ["LICENSE"] = {
      icon = "",
      color = "#D4D4D4",
      name = "License"
    };
    ["README.md"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Readme"
    };
    ["rake"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Rake"
    };
    ["coffee"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Coffee",
    };
    ["css"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Css"
    };
    ["scss"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Scss"
    };
    ["vue"] = {
      icon = "﵂",
      color = "#D4D4D4",
      name = "Vue"
    };
    ["vim"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Vim"
    };
    [".gitignore"] = {
      icon = "",
      color = "#D4D4D4",
      name = "GitIgnore"
    };
    [".gitattributes"] = {
      icon = "",
      color = "#D4D4D4",
      name = "GitAttributes"
    };
    ["gemspec"] = {
      icon = "",
      color = "#D4D4D4",
      name = "Gemspec",
    };
    ["desktop"] = {
      icon = "",
      name = "DesktopEntry"
    };
    ["xml"] = {
      icon = "謹",
      color = "#D4D4D4",
      name = "Xml",
    };
  };
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true;
}
EOF
