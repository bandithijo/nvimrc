local status_ok, _ = pcall(require, "vimtex")
if not status_ok then
  return
end

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
-- vim.api.nvim_set_var('vimtex_view_method', 'zathura')
vim.g.vimtex_view_method = 'zathura'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
-- vim.api.nvim_set_var('vimtex_compiler_method', 'latexmk')
vim.g.vimtex_compiler_method = 'latexmk'
