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

-- keep cursor in the middle when next/prev search
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

-- indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- printing ascii character under the cursor
keymap('n', 'g8', ':as<CR>', opts)

-- excape terminal mode
keymap('t', '<C-\\>', '<C-\\><C-N>', opts)

-- load view
keymap('n', '<leader>lv', ':loadview<CR>', opts)

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
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- vim-floaterm
vim.g.floaterm_keymap_new    = '<leader>ft'
vim.g.floaterm_keymap_prev   = '<leader>fn'
vim.g.floaterm_keymap_next   = '<leader>fp'
vim.g.floaterm_keymap_toggle = '<leader>fh'

-- lazygit
vim.cmd 'nnoremap <leader>lg :FloatermNew --title=─ --height=1.00 --width=1.00 --position=center lazygit<CR>'

-- tig
vim.cmd 'nnoremap <leader>lt :FloatermNew --title=─ --height=1.00 --width=1.00 --position=center tig<CR>'

-- vim-easy-align
-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.cmd 'xmap ga <Plug>(EasyAlign)'
-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.cmd 'nmap ga <Plug>(EasyAlign)'

-- vim-test
vim.cmd 'nmap <silent> <leader>t :TestNearest<CR>'
vim.cmd 'nmap <silent> <leader>T :TestFile<CR>'
vim.cmd 'nmap <silent> <leader>a :TestSuite<CR>'
vim.cmd 'nmap <silent> <leader>l :TestLast<CR>'
vim.cmd 'nmap <silent> <leader>g :TestVisit<CR>'
