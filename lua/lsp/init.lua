local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("lspconfig").lua_ls.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

require("lspconfig").solargraph.setup({
  on_attach = on_attach
})

require("lspconfig").clangd.setup({
  on_attach = on_attach
})

require("lspconfig").gopls.setup({
  on_attach = on_attach
})

require("lspconfig").tsserver.setup({
  on_attach = on_attach
})

require("lspconfig").yamlls.setup({
  on_attach = on_attach
})

require("lspconfig").bashls.setup({
  on_attach = on_attach
})

require("lspconfig").marksman.setup({
  on_attach = on_attach
})

require("lspconfig").jsonls.setup({
  on_attach = on_attach
})

require("lspconfig").html.setup({
  on_attach = on_attach
})

require("lspconfig").cssls.setup({
  on_attach = on_attach
})

require("lspconfig").emmet_ls.setup({
  on_attach = on_attach,
  filetypes = {
    "css", "ejs", "eruby", "html", "javascript", "javascriptreact", "less", "liquid", "sass", "scss", "svelte", "pug", "typescriptreact", "vue"
  }
})

require("lspconfig").texlab.setup({
  on_attach = on_attach
})
