-- Modes
--   normal_mode       = 'n'
--   insert_mode       = 'i'
--   visual_mode       = 'v'
--   visual_block_mode = 'x'
--   term_mode         = 't'
--   command_mode      = 'c'

-- define opts
local opts = { noremap = true, silent = false }

-- remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)

-- explorer
-- vim.api.nvim_set_keymap("n", "<F12>", ":NvimTreeToggle<CR>", opts)

-- tagbar
vim.api.nvim_set_keymap("n", "<F11>", ":TagbarToggle<CR>", opts)

-- move text on row up and down
vim.api.nvim_set_keymap("v", "<A-j>", ":m \'>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "<A-k>", ":m \'<-2<CR>gv=gv", opts)

-- resize window
vim.api.nvim_set_keymap("n", "<C-Left>",  ":vertical resize +5<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Up>",    ":resize -5<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -5<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>",  ":resize +5<CR>", opts)

-- page up & down still on center
vim.api.nvim_set_keymap("n", "<C-u", "<C-u>zz", opts)
vim.api.nvim_set_keymap("n", "<C-d", "<C-d>zz", opts)

-- keep cursor in the middle when next/prev search
vim.api.nvim_set_keymap("n", "n", "nzzzv", opts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", opts)

-- indent
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

-- printing ascii character under the cursor
vim.api.nvim_set_keymap("n", "g8", ":as<CR>", opts)

-- excape terminal mode
vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-N>", opts)

-- lsp
local function nkeymap(key, map)
  vim.api.nvim_set_keymap("n", key, map, opts)
end

nkeymap("gd",         ":lua vim.lsp.buf.definition()<CR>")
nkeymap("gD",         ":lua vim.lsp.buf.declaration()<CR>")
nkeymap("gi",         ":lua vim.lsp.buf.implementation()<CR>")
nkeymap("gw",         ":lua vim.lsp.buf.document_symbol()<CR>")
nkeymap("gW",         ":lua vim.lsp.buf.workspace_symbol()<CR>")
nkeymap("gr",         ":lua vim.lsp.buf.references()<CR>")
nkeymap("gt",         ":lua vim.lsp.buf.type_definition()<CR>")
nkeymap("K",          ":lua vim.lsp.buf.hover()<CR>")
nkeymap("<C-k>",      ":lua vim.lsp.buf.signature_help()<CR>")
nkeymap("<leader>af", ":lua vim.lsp.buf.code_action()<CR>")
nkeymap("<leader>rn", ":lua vim.lsp.buf.rename()<CR>")

-- vim-easy-align
vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", opts)
vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", opts)

-- telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files hidden=true<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-g>", ":Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-h>", ":Telescope oldfiles<CR>", opts)

-- encrypt with .gpg extension
vim.api.nvim_set_keymap("n", "<leader>en", ":WriteEncrypted %.gpg<CR> | :e %.gpg", opts)

-- vim-test
vim.api.nvim_set_keymap("n", "<leader>t", ":TestNearest<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>T", ":TestFile<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>a", ":TestSuite<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>l", ":TestLast<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>g", ":TestVisit<CR>", opts)

-- yank filename & path on active buffer
vim.api.nvim_set_keymap("n", "<leader>yp", ":let @+=@%<CR>", opts)
