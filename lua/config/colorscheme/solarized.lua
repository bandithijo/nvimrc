-- local status_ok, _ = pcall(require, "solarized8")
-- if not status_ok then
--   return
-- end

vim.cmd[[
  colorscheme solarized8
  set termguicolors

  hi Comment gui=none
  hi VertSplit guifg=#264B54 guibg=#002B36 gui=none
  hi StatusLine guifg=#93A1A1 guibg=#264B54 gui=none
  hi StatusLineNc guifg=#93A1A1 guibg=#264B54 gui=none
  hi SignColumn guibg=none
  hi FoldColumn guifg=#586E75 guibg=#002B36
  hi Folded guibg=none
  hi LineNr guibg=#002B36
  hi CursorLine guibg=none
  hi CursorLineNr guibg=#002B36 gui=none
  hi ColorColumn guifg=none guibg=none
  hi Visual guifg=#B58900 guibg=#002B36 gui=reverse
  hi VisualNOS guifg=#B58900 guibg=#002B36 gui=reverse
  hi MoreMsg guifg=#B58900
  hi ModeMsg guifg=#B58900
  hi ErrorMsg guifg=#DC322F guibg=none gui=bold
  hi netrwTreeBar guifg=#264B54

  " plugins: highlight-yank-region
  hi HighlightedyankRegion guifg=#002B36 guibg=#B58900

  " plugins: indent-blankline
  hi IndentBlanklineChar guifg=#264B54 gui=nocombine

  " plugins: telescope
  hi TelescopePromptPrefix guifg=#93A1A1
  hi TelescopeSelection guibg=#264B54 gui=bold
  hi TelescopeMatching guifg=#B58900
  hi TelescopeBorder guifg=#264B54

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
  hi @float guifg=#D33682
  hi @parameter guifg=#93A1A1
  hi @function.call guifg=#CB4B16
  hi @type.qualifier guifg=#859900
  hi @string.regex guifg=#DC322F
  hi @text.literal guifg=#B58900
  hi @text.todo guifg=#FDF6E3 guibg=#DC322F gui=bold
  hi @text.note guifg=#FDF6E3 guibg=#B58900 gui=bold
  " language: html
  hi htmlSpecialTagName gui=bold
  " language: markdown
  hi mkdHeading guifg=#DC322F gui=bold
  hi mkdListItem guifg=#DC322F
  hi mkdItalic guifg=#DC322F
  hi mkdCode guifg=#B58900
  hi mkdLink guifg=#268BD2
  hi mkdUrl guifg=#6C71C4
  hi link mkdLineBreak Normal
  " language: liquid
  hi liquidStatement guifg=#859900
  hi liquidExpression guifg=#859900
  " language: ejs
  hi ejsTag guifg=#DC322F
  " language: ruby
  hi @function.ruby guifg=#CB4B16 gui=bold
  hi @function.call.ruby guifg=#CB4B16
  hi @punctuation.delimiter.ruby guifg=#93A1A1
  hi @type.ruby gui=bold
]]

vim.cmd.sign("define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=")
