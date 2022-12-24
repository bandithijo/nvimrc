local status_ok, _ = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {}

  if server.name == "sumneko_lua" then
    opts = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim", "use" }
          },
          -- workspace = {
          --   -- Make the server aware of Neovim runtime files
          --   library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
          -- }
        }
      }
    }
  end

  server:setup(opts)
end)
