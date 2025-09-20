require("lsp/diagnostics")

-- util helper dari lspconfig
local util_ok, util = pcall(require, "lspconfig.util")
if not util_ok then
  return
end

-- common on_attach
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
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

-- capabilities (cmp_nvim_lsp kalau ada)
local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- daftar server
local servers = {
  lua_ls = {
    cmd = { "lua-language-server" }, -- pastikan ini sesuai dengan `which`
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = { globals = { "vim" } },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  },
  arduino_language_server = {},
  ruby_lsp = {
    cmd = { "ruby-lsp" },
    init_options = {
      formatter = "standard",
      linters = { "standard" },
      addonSettings = {
        rails = true,
        rspec = true,
      },
    },
  },
  clangd = {
    cmd = {
      "clangd",
      "--compile-commands-dir=.",
      "--query-driver=/home/*/.platformio/packages/toolchain-xtensa-esp32/bin/xtensa-esp32-elf-*",
    },
  },
  gopls = {},
  ts_ls = {},
  eslint = {},
  yamlls = {},
  bashls = {},
  marksman = {},
  jsonls = {},
  html = {},
  cssls = {},
  tailwindcss = {
    cmd = { "tailwindcss-language-server", "--stdio" },
    filetypes = {
      "html", "javascript", "eruby", "erb", "ejs", "liquid", "htmldjango",
    },
    root_dir = util.root_pattern(
      "tailwind.config.js",
      "tailwind.config.cjs",
      "postcss.config.js",
      ".git"
    ),
  },
  emmet_ls = {
    cmd = { "emmet-language-server", "--stdio" },
    filetypes = {
      "css", "ejs", "erb", "eruby", "html", "javascript", "javascriptreact",
      "less", "liquid", "htmldjango", "sass", "scss", "svelte", "pug",
      "typescriptreact", "vue", "mustache", "xml",
    },
  },
  texlab = {},
  sqlls = {},
  pylsp = {},
  intelephense = {
    filetypes = { "php", "blade" },
  },
}

-- register ke vim.lsp.config + autostart per filetype
for server, config in pairs(servers) do
  vim.lsp.config[server] = vim.tbl_deep_extend("force", {
    on_attach = on_attach,
    capabilities = capabilities,
  }, config)

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
      local ft = vim.bo.filetype
      if vim.lsp.config[server].filetypes == nil
        or vim.tbl_contains(vim.lsp.config[server].filetypes, ft)
      then
        vim.lsp.start(vim.lsp.config[server])
      end
    end,
  })
end
