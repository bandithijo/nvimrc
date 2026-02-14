vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "_posts/*/*.md",
    "_drafts/*/*.md",
    "*.md",
    "*.markdown",
  },
  callback = function()
    vim.bo.filetype = "markdown"
  end,
})
