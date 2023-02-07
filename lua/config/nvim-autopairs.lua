local status_ok, _ = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

local npairs = require('nvim-autopairs')

npairs.setup({
  disable_filetype = {
    "TelescopePrompt",
  },
})

npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
npairs.add_rules(require('nvim-autopairs.rules.endwise-lua'))
