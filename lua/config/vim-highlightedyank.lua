-- Assign a number of time in milliseconds.
vim.g.highlightedyank_highlight_duration = 1000

-- If the highlight is not visible for some reason, you can redefine the
-- HighlightedyankRegion highlight group.
-- Note that the line should be located after :colorscheme command execution in
-- your vimrc.

vim.cmd 'hi HighlightedyankRegion guifg=NONE guibg=#005F8F'
