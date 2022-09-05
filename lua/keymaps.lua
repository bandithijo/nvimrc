-- Modes
--   normal_mode       = 'n'
--   insert_mode       = 'i'
--   visual_mode       = 'v'
--   visual_block_mode = 'x'
--   term_mode         = 't'
--   command_mode      = 'c'

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- define opts
local opts = { noremap = true, silent = true }

-- remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- save
keymap('n', '<C-s>', ':w<CR>', opts)

-- explorer
keymap('n', '<F12>', ':NvimTreeToggle<CR>', opts)

-- tagbar
keymap('n', '<F11>', ':TagbarToggle<CR>', opts)

-- move text on row up and down
keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv', opts)
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv', opts)

-- resize window
keymap('n', '<C-Left>',  ':vertical resize +5<CR>', opts)
keymap('n', '<C-Up>',    ':resize -5<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize -5<CR>', opts)
keymap('n', '<C-Down>',  ':resize +5<CR>', opts)

-- page up & down still on center
keymap('n', '<C-u', '<C-u>zz', opts)
keymap('n', '<C-d', '<C-d>zz', opts)

-- indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- printing ascii character under the cursor
keymap('n', 'g8', ':as<CR>', opts)

-- excape terminal mode
keymap('t', '<C-\\>', '<C-\\><C-N>', opts)

-- load view
keymap('n', '<Leader>lv', ':loadview<CR>', opts)

-- lsp
local function nkeymap(key, map)
  keymap('n', key, map, opts)
end

nkeymap('gd',         ':lua vim.lsp.buf.definition()<CR>')
nkeymap('gD',         ':lua vim.lsp.buf.declaration()<CR>')
nkeymap('gi',         ':lua vim.lsp.buf.implementation()<CR>')
nkeymap('gw',         ':lua vim.lsp.buf.document_symbol()<CR>')
nkeymap('gW',         ':lua vim.lsp.buf.workspace_symbol()<CR>')
nkeymap('gr',         ':lua vim.lsp.buf.references()<CR>')
nkeymap('gt',         ':lua vim.lsp.buf.type_definition()<CR>')
nkeymap('K',          ':lua vim.lsp.buf.hover()<CR>')
nkeymap('<C-k>',      ':lua vim.lsp.buf.signature_help()<CR>')
nkeymap('<Leader>af', ':lua vim.lsp.buf.code_action()<CR>')
nkeymap('<Leader>rn', ':lua vim.lsp.buf.rename()<CR>')
