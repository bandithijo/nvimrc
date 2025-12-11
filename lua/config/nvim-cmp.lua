local status_ok, _ = pcall(require, "cmp")
if not status_ok then
  return
end

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.event:on("documentation_opened", function(window)
  local win = window.win
  -- set conceallevel untuk floating window docs
  vim.api.nvim_win_set_option(win, "conceallevel", 2)
end)

cmp.setup({
  window = {
    completion = {
      winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:Visual,Search:None",
      border = "rounded",
    },
    documentation = {
      winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpDocBorder",
      border = "rounded",
      max_width = 60,
      max_height = 20,
    },
  },
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end
  },
  mapping = {
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
    ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" }, -- For vsnip users.
    { name = "buffer" },
    { name = "path" },
  }),
  -- luakind.nvim config
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = lspkind.cmp_format({
      mode = "symbol_text", -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      menu = {
        buffer = "[Buf]",
        nvim_lsp = "[LSP]",
        path = "[Path]",
        vsnip = "[Snip]",
      },
      symbol_map = {
        Text = " ",
        Method = " ",
        Function = " ",
        Constructor = " ",
        Field = "ﰠ ",
        Variable = " ",
        Class = "ﴯ ",
        Interface = " ",
        Module = " ",
        Property = "ﰠ ",
        Unit = "塞",
        Value = " ",
        Enum = " ",
        Keyword = " ",
        Snippet = " ",
        Color = " ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = " ",
        Constant = " ",
        Struct = "פּ ",
        Event = " ",
        Operator = " ",
        TypeParameter = ""
      },

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      -- before = function (entry, vim_item)
      --   return vim_item
      -- end
    })
  }
})

-- Set configuration for specific filetype.
-- cmp.setup.filetype("gitcommit", {
--   sources = cmp.config.sources({
--     { name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
--   })
-- })

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline("/", {
--   sources = {
--   { name = "buffer" }
--   }
-- })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(":", {
--   sources = cmp.config.sources({
--   { name = "path" }
--   }, {
--     { name = "cmdline" }
--     })
-- })

-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.cmd([[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]])
