-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- define opts
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- save
keymap('n', '<C-s>', ':w<CR>', opts)

-- explorer
keymap('n', '<F12>', ':NvimTreeToggle<CR>', opts)

-- better window focus navigation
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- move text on row up and down
keymap('n', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
keymap("n", "<A-k>", '<Esc>:m .-2<CR>==gi', opts)
keymap("v", "<A-j>", ':m .+1<CR>==', opts)
keymap("v", "<A-k>", ':m .-2<CR>==', opts)

-- indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

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
