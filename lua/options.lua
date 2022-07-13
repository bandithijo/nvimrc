-- colorscheme
vim.api.nvim_command 'colorscheme codedark'
vim.opt.background = 'dark'

-- statusline
vim.opt.laststatus = 3

-- file encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = 'utf-8'
vim.opt.fileformat = 'unix'

-- backup, undo, swap, and view
vim.opt.writebackup = true
vim.opt.backup = true
vim.opt.backupdir = vim.fn.stdpath('config') .. '/tmp/backup//'
vim.opt.swapfile = true
vim.opt.directory = vim.fn.stdpath('config') .. '/tmp/swap//'
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('config') .. '/tmp/undo//'
vim.opt.viewdir = vim.fn.stdpath('config') .. '/tmp/view//'

-- backspace
vim.opt.backspace = 'indent,eol,start'

-- mouse
vim.opt.mouse = 'a'

-- menu
vim.opt.wildmenu = true -- turn on command line completion wild style
vim.opt.wildmode = 'full'
vim.opt.wildoptions = 'pum'

vim.opt.gdefault = true -- global substitutions are default s/a/b/g
vim.opt.autoread = true -- make Esc work faster
vim.opt.modifiable = true

-- search
vim.opt.incsearch = true -- incremental search aka search as you type
vim.opt.hlsearch = true -- highlight search matches

-- character case
vim.opt.ignorecase = true -- ignore case
vim.opt.smartcase = true -- but when the query starts with upper character be case sensitive

-- list chars
vim.opt.list = true -- no show traling listchars
vim.opt.listchars = { tab = '  ', trail = '·'}

-- splits open at the bottom and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- i love cursor with block shape very much!
-- although, neovim change cursor to beam when on insert mode,
-- i want to keep with block shape =P
vim.opt.guicursor = 'n-v-c:block'

-- redrawtime for LSP (default 2000)
-- time in milliseconds for redrawing the display.
-- applies to 'hlsearch', 'inccommand', :match highlighting and
-- syntax highlighting.
vim.opt.redrawtime = 2000

-- folding
vim.opt.foldlevel = 0
vim.opt.foldmethod = 'manual'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- pump window
vim.opt.pumblend = 0
vim.opt.pumheight = 10

-- line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1

-- sign column
vim.opt.signcolumn = 'yes'

-- color column
vim.opt.colorcolumn = '80'

-- tab line
vim.opt.showtabline = 0

-- python host path
vim.g.python3_host_prog = '/usr/bin/python3'

-- buffer options
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.binary = true
vim.opt.bomb = true
vim.opt.compatible = false
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.conceallevel = 0
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.errorbells = false
vim.opt.expandtab = true
vim.opt.fillchars = { eob = ' ', vert = '│' }
vim.opt.lazyredraw = true
vim.opt.startofline = false
vim.opt.visualbell = false
vim.opt.shortmess = 'aAtToO'
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.report = 2
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.formatoptions = 'cqt'
vim.opt.infercase = true
vim.opt.expandtab = true
vim.opt.linespace = 0
vim.opt.scrolloff = 0
vim.opt.sidescrolloff = 0
vim.opt.title = true
vim.opt.timeoutlen = 500
vim.opt.winblend = 0
