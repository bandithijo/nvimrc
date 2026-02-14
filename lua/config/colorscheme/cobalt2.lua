local status_ok, _ = pcall(require, "colorbuddy")
if not status_ok then
  return
end

-- Default options
require("colorbuddy").colorscheme("cobalt2")

vim.cmd([[
hi IndentBlanklineChar guifg=#2C2C2C gui=nocombine
]])
