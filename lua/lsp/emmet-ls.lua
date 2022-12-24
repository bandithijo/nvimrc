local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
  capabilities = capabilities,
  filetypes = {
    "html",
    "css",
    "typescriptreact",
    "javascriptreact",
    "eruby",
    "liquid",
    "markdown"
  },
})
