-- Set floaterm window's title
vim.g.floaterm_title = '─[  $1:$2 ]─'

-- Type String. 8 characters of the floating window border (top, right, bottom,
-- left, topleft, topright, botright, botleft).
vim.g.floaterm_borderchars = '─│─│┌┐┘└'

-- Type Number (number of lines) or Float (between 0 and 1). If Float, the
-- height is relative to &lines.
vim.g.floaterm_width = 0.9

-- Type Number (number of lines) or Float (between 0 and 1). If Float, the
-- height is relative to &lines.
vim.g.floaterm_height = 0.9

-- Set floaterm window's background to black
vim.cmd 'hi Floaterm guibg=NONE'
-- Set floating window border line color to cyan, and background to orange
vim.cmd 'hi FloatermBorder guibg=NONE guifg=#D4D4D4'

-- Mapping
vim.g.floaterm_keymap_new    = '<Leader>ft'
vim.g.floaterm_keymap_prev   = '<Leader>fn'
vim.g.floaterm_keymap_next   = '<Leader>fp'
vim.g.floaterm_keymap_toggle = '<Leader>fh'

-- lazygit
vim.cmd 'nnoremap <leader>lg :FloatermNew --title=─ --height=0.99 --width=0.99 --position=center lazygit<CR>'

-- tig
vim.cmd 'nnoremap <leader>lt :FloatermNew --title=─ --height=0.99 --width=0.99 --position=center tig<CR>'
