local status_ok, _ = pcall(require, "platformio")
if not status_ok then
  return
end

require("platformio").setup({
  lsp = "clangd", --default: ccls, other option: clangd
                  -- If you pick clangd, it also creates compile_commands.json
  menu_key = '<leader>p',
})
