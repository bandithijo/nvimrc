require("mason").setup({})
require("mason-lspconfig").setup({})

require("lspconfig").sumneko_lua.setup({})
require("lspconfig").solargraph.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").yamlls.setup({})
require("lspconfig").bashls.setup({})
require("lspconfig").marksman.setup({})
require("lspconfig").jsonls.setup({})
require("lspconfig").html.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").emmet_ls.setup({
  filetypes = {
    "html",
    "css",
    "eruby",
    "liquid"
  },
})
