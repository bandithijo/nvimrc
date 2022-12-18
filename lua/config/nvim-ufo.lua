vim.o.foldcolumn = "1"
vim.o.foldlevel = 99 -- feel free to decrease the value
vim.o.foldenable = true
vim.o.foldlevelstart = -1
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- option 2: nvim lsp as LSP client
-- tell the sever the capability of foldingRange
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}
local language_servers = {} -- like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
    require("lspconfig")[ls].setup({
        capabilities = capabilities,
    })
end

-- require('ufo').setup()

local ftMap = {
  git = "",
  lua = "treesitter",
  markdown = "",
  python = {"treesitter", "indent"},
  ruby = "treesitter",
  vim = "indent",
  yaml = "",
}
require("ufo").setup({
  open_fold_hl_timeout = 150,
  close_fold_kinds = {"imports", "comment"},
  preview = {
    win_config = {
      border = {"", "─", "", "", "", "─", "", ""},
      winhighlight = "Normal:Folded",
      winblend = 0
    },
    mappings = {
      scrollU = "<C-u>",
      scrollD = "<C-d>"
    }
  },
  provider_selector = function(bufnr, filetype, buftype)
    -- return a string type use internal providers
    -- return a string in a table like a string type
    -- return empty string '' will disable any providers
    -- return `nil` will use default value {'lsp', 'indent'}

    -- if you prefer treesitter provider rather than lsp,
    -- return ftMap[filetype] or {'treesitter', 'indent'}
    return ftMap[filetype]
  end
})
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
vim.keymap.set("n", "zm", require("ufo").closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
