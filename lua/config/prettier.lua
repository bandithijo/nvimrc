local status_ok, _ = pcall(require, "prettier")
if not status_ok then
  return
end

require("prettier").setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  cli_options = {
    -- arrow_parens = "always",
    -- bracket_spacing = true,
    -- bracket_same_line = false,
    -- embedded_language_formatting = "auto",
    -- end_of_line = "lf",
    -- html_whitespace_sensitivity = "css",
    -- -- jsx_bracket_same_line = false,
    -- jsx_single_quote = false,
    -- print_width = 80,
    -- prose_wrap = "preserve",
    -- quote_props = "as-needed",
    -- semi = true,
    -- single_attribute_per_line = false,
    -- single_quote = false,
    -- tab_width = 2,
    -- trailing_comma = "es5",
    -- use_tabs = false,
    -- vue_indent_script_and_style = false,
  },
})
