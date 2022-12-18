require("gitsigns").setup {
  signs = {
    add          = {hl = "GitSignsAdd"   , text = "│", numhl="GitSignsAddNr"   , linehl="GitSignsAddLn"},
    change       = {hl = "GitSignsChange", text = "│", numhl="GitSignsChangeNr", linehl="GitSignsChangeLn"},
    changedelete = {hl = "GitSignsChange", text = "│", numhl="GitSignsChangeNr", linehl="GitSignsChangeLn"},
    delete       = {hl = "GitSignsDelete", text = "│", numhl="GitSignsDeleteNr", linehl="GitSignsDeleteLn"},
    topdelete    = {hl = "GitSignsDelete", text = "│", numhl="GitSignsDeleteNr", linehl="GitSignsDeleteLn"},
    untracked    = {hl = "GitSignsAdd"   , text = "│", numhl="GitSignsAddNr"   , linehl="GitSignsAddLn"},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

    ["n <leader>hs"] = "<cmd>lua require'gitsigns'.stage_hunk()<CR>",
    ["n <leader>hu"] = "<cmd>lua require'gitsigns'.undo_stage_hunk()<CR>",
    ["n <leader>hr"] = "<cmd>lua require'gitsigns'.reset_hunk()<CR>",
    ["n <leader>hR"] = "<cmd>lua require'gitsigns'.reset_buffer()<CR>",
    ["n <leader>hp"] = "<cmd>lua require'gitsigns'.preview_hunk()<CR>",
    ["n <leader>hb"] = "<cmd>lua require'gitsigns'.blame_line()<CR>",

    -- Text objects
    ["o ih"] = ":<C-U>lua require'gitsigns'.text_object()<CR>",
    ["x ih"] = ":<C-U>lua require'gitsigns'.text_object()<CR>"
  },
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
  diff_opts = {
    internal = true,   -- If luajit is present
  }
}
