-- command
vim.cmd 'colorscheme codedark'

vim.opt.encoding = 'UTF-8'

-- backup, undo, swap
vim.opt.backup = true
vim.opt.backupdir = '~/.local/share/nvim/tmp/backup'
vim.opt.undofile = true
vim.opt.undodir = '~/.local/share/nvim/tmp/undo'
vim.opt.directory = '~/.local/share/nvim/tmp/swap'
vim.opt.viewdir = '~/.local/share/nvim/tmp/view'

-- mouse
vim.opt.mouse = 'n'

-- menu
vim.opt.wildmenu = true -- turn on command line completion wild style
vim.opt.wildmode = 'full'

vim.opt.gdefault = true -- global substitutions are default s/a/b/g
vim.opt.autoread = true -- make Esc work faster
vim.opt.modifiable = true

-- Splits open at the bottom and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- I love cursor with block shape very much!
-- Although, neovim change cursor to beam when on insert mode,
-- I want to keep with block shape =P
vim.opt.guicursor = 'n-v-c:block'

-- Redrawtime for LSP (default 2000)
-- Time in milliseconds for redrawing the display.
-- Applies to 'hlsearch', 'inccommand', :match highlighting and
-- syntax highlighting.
vim.opt.redrawtime = 2000

-- buffer options
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
