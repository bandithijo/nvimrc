vim.diagnostic.config({
  virtual_text = {
    -- WARN, INFO, HINT
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.WARN
    },
  },
  virtual_lines = {
    -- Only ERROR
    severity = {
      min = vim.diagnostic.severity.ERROR,
      max = vim.diagnostic.severity.ERROR
    },
  },
})
