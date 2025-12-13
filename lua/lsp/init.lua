require("lsp/diagnostics")

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider or client.server_capabilities.documentRangeFormattingProvider then
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, { noremap = true, silent = true, buffer = bufnr })
  end

  local opts = { noremap = true, silent = true, buffer = bufnr }
  local keymap = vim.keymap.set

  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "gi", vim.lsp.buf.implementation, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_ok then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- Helper function untuk root_pattern
local function root_pattern(...)
  local patterns = {...}
  return function(fname)
    for _, pattern in ipairs(patterns) do
      local found = vim.fs.find(pattern, {
        upward = true,
        path = vim.fs.dirname(fname),
      })[1]
      if found then
        return vim.fs.dirname(found)
      end
    end
  end
end

local servers = {
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = "LuaJIT" },
        diagnostics = { globals = { "vim" } },
        workspace = {
          library = vim.list_extend({ vim.fn.stdpath("data") .. "/lsp/meta/3rd/love2d" }, vim.api.nvim_get_runtime_file("", true)),
          checkThirdParty = false,
        },
        telemetry = { enable = false },
      },
    },
  },

  arduino_language_server = {
    cmd = { "arduino-language-server" },
    root_dir = root_pattern(".git"),
    filetypes = { "arduino" },
  },

  ruby_lsp = {
    init_options = {
      formatter = "standard",
      linters = { "standard" },
      addonSettings = {
        rails = true,
        rspec = true,
      },
    },
  },

  clangd = {},
  gopls = {},

  ts_ls = {
    filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
    root_dir = root_pattern("package.json", "tsconfig.json", ".git"),
    cmd = { "typescript-language-server", "--stdio" },
  },

  eslint = {
    cmd = { "vscode-eslint-language-server", "--stdio" },
    root_dir = root_pattern(".eslintrc.json", ".eslintrc.js", ".git"),
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },

  yamlls = {},

  bashls = {},

  marksman = {},

  jsonls = {},

  html = {
    filetypes = { "html" },
    -- root_dir = root_pattern("index.html", ".html", ".git"),
  },

  cssls = {},

  tailwindcss = {
    filetypes = {
      "html",
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
    },
    -- root_dir = root_pattern(
    --   "tailwind.config.js",
    --   "tailwind.config.cjs",
    --   "tailwind.config.ts",
    --   "postcss.config.js",
    --   "package.json",
    --   ".git"
    -- ),
  },

  emmet_ls = {
    cmd = { "emmet-language-server", "--stdio" },
    -- root_dir = root_pattern(".git"),
    filetypes = {
      "html", "css", "javascriptreact",
      "typescriptreact", "svelte", "vue", "xml", "erb"
    },
  },

  texlab = {},

  sqlls = {
    cmd = { "sql-language-server", "up", "--method", "stdio" },
    root_dir = root_pattern(".git", "*.sql"),
    filetypes = { "sql" },
  },

  pylsp = {},

  intelephense = {
    cmd = { "intelephense", "--stdio" },
    root_dir = root_pattern("composer.json", ".git", "*.php"),
    filetypes = { "php", "blade" },
  },
}

-- Register LSP servers tanpa langsung enable
for name, config in pairs(servers) do
  local full_config = vim.tbl_deep_extend("force", {
    on_attach = on_attach,
    capabilities = capabilities,
  }, config)

  vim.lsp.config(name, full_config)
end

-- Mapping filetype ke LSP server
local filetype_to_servers = {
  lua = { "lua_ls" },
  arduino = { "arduino_language_server" },
  ruby = { "ruby_lsp" },
  c = { "clangd" },
  cpp = { "clangd" },
  go = { "gopls" },
  typescript = { "ts_ls", "eslint" },
  javascript = { "ts_ls", "eslint" },
  typescriptreact = { "ts_ls", "eslint" },
  javascriptreact = { "ts_ls", "eslint" },
  yaml = { "yamlls" },
  sh = { "bashls" },
  bash = { "bashls" },
  -- markdown = { "marksman" },
  json = { "jsonls" },
  html = { "html", "emmet_ls", "tailwindcss" },
  css = { "cssls", "emmet_ls", "tailwindcss" },
  tex = { "texlab" },
  sql = { "sqlls" },
  python = { "pylsp" },
  php = { "intelephense" },
  blade = { "intelephense" },
  svelte = { "emmet_ls" },
  vue = { "emmet_ls" },
  xml = { "emmet_ls" },
  erb = { "emmet_ls" },
}

-- Enable LSP berdasarkan filetype
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local servers_for_ft = filetype_to_servers[args.match]
    if servers_for_ft then
      for _, server in ipairs(servers_for_ft) do
        vim.lsp.enable(server)
      end
    end
  end,
})
