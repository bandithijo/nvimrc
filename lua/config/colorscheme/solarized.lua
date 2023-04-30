-- local status_ok, _ = pcall(require, "solarized8")
-- if not status_ok then
--   return
-- end

vim.cmd([[
  colorscheme solarized8
  set termguicolors

  hi Comment gui=none
  hi VertSplit guifg=#073642 guibg=#002B36 gui=none
  hi StatusLine guifg=#073642 guibg=#002B36 gui=none
  hi StatusLineNc guifg=#073642 guibg=#002B36 gui=none
  hi SignColumn guibg=none
  hi FoldColumn guifg=#586E75 guibg=#002B36
  hi Folded guibg=none
  hi LineNr guibg=#002B36
  hi CursorLine guibg=none
  hi CursorLineNr guibg=#002B36 gui=none
  hi ColorColumn guifg=none guibg=none
  hi Visual guifg=#B58900
  hi VisualNOS guifg=#B58900

  " plugins: highlight-yank-region
  hi HighlightedyankRegion guifg=#002B36 guibg=#B58900

  " plugins: nvim-tree
  hi NvimTreeIndentMarker guifg=#073642
  hi NvimTreeRootFolder guifg=#B58900
  hi NvimTreeFolderIcon guifg=#B58900
  hi NvimTreeFolderName guifg=#B58900
  hi NvimTreeOpenedFolderName guifg=#B58900
  hi NvimTreeWindowPicker guifg=#002B36 guibg=#93A1A1 gui=bold
  hi NvimTreeCursorLine guibg=#073642 gui=bold
  " hi NvimTreeCursorLineNr guibg=#073642
  " hi NvimTreeSignColumn guibg=#073642
  " hi NvimTreeGitDirty guibg=#073642

  " plugins: indent-blankline
  hi IndentBlanklineChar guifg=#073642 gui=nocombine

  " plugins: telescope
  hi TelescopePromptPrefix guifg=#93A1A1
  hi TelescopeSelection gui=bold
  hi TelescopeMatching guifg=#B58900

  " plugins: lsp
  hi DiagnosticVirtualTextError guifg=#DC322F
  hi DiagnosticVirtualTextWarn guifg=#073642
  hi DiagnosticVirtualTextInfo guifg=#073642
  hi DiagnosticVirtualTextHint guifg=#073642

  hi DiagnosticSignError guifg=#DC322F guibg=#002B36
  hi DiagnosticSignWarn guifg=#B58900 guibg=#002B36
  hi DiagnosticSignInfo guifg=#268BD2 guibg=#002B36
  hi DiagnosticSignHint guifg=#268BD2 guibg=#002B36

  hi DiagnosticUnderlineError guisp=#CC241D gui=underline
  hi DiagnosticUnderlineWarn guisp=#B58900 gui=underline
  hi DiagnosticUnderlineInfo guisp=#073642 gui=underline
  hi DiagnosticUnderlineHint guisp=#073642 gui=underline

  " plugins: vim-floaterm
  hi Floaterm guibg=#002B36
  hi FloatermBorder guifg=#002B36 guibg=#002B36

  " plugins: gitsigns
  hi GitSignAdd guifg=#859900 guibg=#002B36
  hi GitSignChange guifg=#B58900 guibg=#002B36
  hi GitSignDelete guifg=#DC322F guibg=#002B36
  hi GitSignsAdd guifg=#859900 guibg=#002B36
  hi GitSignsChange guifg=#B58900 guibg=#002B36
  hi GitSignsDelete guifg=#DC322F guibg=#002B36

  " language
  hi @label guifg=#268BD2
  hi @number guifg=#D33682
  hi @parameter guifg=#93A1A1
  hi @function.call guifg=#CB4B16
  hi @type.qualifier guifg=#859900
  hi @string.regex guifg=#DC322F
  hi @text.literal guifg=#B58900
  hi @text.todo guifg=#FDF6E3 guibg=#DC322F gui=bold
  hi @text.note guifg=#FDF6E3 guibg=#B58900 gui=bold
]])

vim.cmd.sign("define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=")
