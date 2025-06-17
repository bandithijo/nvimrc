require("lsp/diagnostics")

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  local keymap = vim.keymap.set

  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "gi", vim.lsp.buf.implementation, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
  keymap("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lspconfig.arduino_language_server.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.solargraph.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--compile-commands-dir=.",
    "--query-driver=/home/*/.platformio/packages/toolchain-xtensa-esp32/bin/xtensa-esp32-elf-*"
  }
})

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.ts_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.yamlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.marksman.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tailwindcss.setup({
  cmd = { "tailwindcss-language-server", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "html", "javascript", "eruby", "erb", "ejs", "liquid", "htmldjango"
  },
  root_dir = util.root_pattern("tailwind.config.js", "tailwind.config.cjs", "postcss.config.js", ".git"),
})

lspconfig.emmet_ls.setup({
  cmd = { "emmet-language-server", "--stdio" },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css", "ejs", "erb", "eruby", "html", "javascript", "javascriptreact", "less", "liquid", "htmldjango", "sass", "scss", "svelte", "pug", "typescriptreact", "vue", "mustache", "xml"
  }
})

lspconfig.texlab.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.sqlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
