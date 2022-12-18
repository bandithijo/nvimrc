-- highlight ExtraWhitespace ctermbg=<desired_color>
-- let g:better_whitespace_guicolor='<desired_color>'

-- To enable highlighting and stripping whitespace on save by default, use respectively
vim.g.better_whitespace_enabled = 0
vim.g.strip_whitespace_on_save = 0

-- To enable/disable/toggle whitespace highlighting in a buffer, call one of:
-- :EnableWhitespace
-- :DisableWhitespace
-- :ToggleWhitespace

-- To disable the highlighting for specific file types, add the following to your ~/.vimrc:
-- let g:better_whitespace_filetypes_blacklist=['<filetype1>', '<filetype2>', '<etc>']
vim.g.better_whitespace_filetypes_blacklist = { "taskedit", "mail" }
