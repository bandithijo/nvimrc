-- local status_ok, _ = pcall(require, "solarized8")
-- if not status_ok then
--   return
-- end

vim.o.background = "dark"

vim.cmd[[
if &background == 'dark'
  colorscheme solarized8
  set termguicolors

  hi clear SpecialKey
  hi Comment gui=none
  hi VertSplit guifg=#264B54 guibg=none gui=none
  hi StatusLine guifg=none guibg=#264B54 gui=none
  hi StatusLineNc guifg=none guibg=#264B54 gui=none
  hi SignColumn guibg=none
  hi FloatBorder guibg=none
  hi FoldColumn guifg=#586E75 guibg=#002B36
  hi Folded guibg=none
  hi LineNr guibg=#002B36
  hi CursorLine guibg=#053340
  hi CursorLineNr guibg=#002B36 gui=bold
  hi ColorColumn guifg=none guibg=none
  hi Visual guifg=#002B36 guibg=#2AA198 gui=none
  hi MoreMsg guifg=#2AA198 gui=bold
  hi ModeMsg guifg=#2AA198 gui=bold
  hi ErrorMsg guifg=#DC322F guibg=none gui=none
  hi Directory guifg=#2AA198 guibg=none
  hi Search gui=reverse guifg=#2AA198
  hi IncSearch gui=standout guifg=#2AA198

  " netrw
  hi link netrwTreeBar Comment
  hi link netrwList Comment
  hi link netrwCmdSep Comment
  hi link netrwCmdNote Comment
  hi link netrwHelpCmd Comment
  hi link netrwQuickHelp Comment
  hi link netrwVersion Comment

  " plugins: nvim-tree
  hi NvimTreeIndentMarker guifg=#264B54
  hi NvimTreeWindowPicker guifg=#93A1A1 guibg=#264B54 gui=bold
  hi link NvimTreeFolderIcon Directory
  hi link NvimTreeClosedFolderIcon Directory
  hi link NvimTreeSpecialFile Normal
  hi link NvimTreeGitFileNewHL Statement
  hi link NvimTreeGitFileDirtyHL Type
  hi link NvimTreeGitFileDeletedHL PreProc
  hi link NvimTreeGitDirtyIcon Type
  hi link NvimTreeGitNewIcon Statement
  hi link NvimTreeGitDeletedIcon PreProc

  " plugins: highlight-yank-region
  hi HighlightedyankRegion guifg=#002B36 guibg=#2AA198

  " plugins: indent-blankline
  hi IndentBlanklineChar guifg=#264B54 gui=nocombine

  " plugins: telescope
  hi TelescopePromptPrefix guifg=#93A1A1
  hi TelescopeSelection guibg=#264B54 gui=bold
  hi TelescopeMatching guifg=#2AA198
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
  hi @variable guifg=#268BD2
  hi @label guifg=#268BD2
  hi @number guifg=#D33682
  hi @float guifg=#D33682
  hi @parameter guifg=#93A1A1
  hi @function.call guifg=#CB4B16
  hi @type.qualifier guifg=#859900
  hi @string.regex guifg=#DC322F
  hi @text.literal guifg=#B58900
  hi @text.danger guifg=#FDF6E3 guibg=#DC322F gui=bold
  hi @text.todo guifg=#FDF6E3 guibg=#859900 gui=bold
  hi @text.note guifg=#FDF6E3 guibg=#B58900 gui=bold
  " language: html
  hi htmlSpecialTagName gui=bold
  hi @text.title.html guifg=#B58900 gui=bold
  " language: markdown
  hi mkdHeading guifg=#CB4B16 gui=bold
  hi mkdListItem guifg=#DC322F
  hi mkdItalic guifg=#DC322F
  hi mkdCode guifg=#B58900
  hi mkdLink guifg=#268BD2
  hi mkdUrl guifg=#6C71C4
  hi mkdBlockquote guifg=#2AA198
  hi link @text.quote.markdown mkdBlockquote
  hi link markdownError Normal
  " hi link TableSeparator Normal
  hi link mkdLineBreak Normal
  hi @text.todo.checked.markdown guifg=#DC322F guibg=none
  hi @text.todo.unchecked.markdown guifg=#DC322F guibg=none
  hi @markup.raw.block.markdown guifg=#B58900
  hi @markup.raw.markdown_inline guifg=#B58900
  hi link @text.title.1.marker.markdown mkdHeading
  hi link @text.title.1.markdown mkdHeading
  hi link @text.title.2.marker.markdown mkdHeading
  hi link @text.title.2.markdown mkdHeading
  hi link @text.title.3.marker.markdown mkdHeading
  hi link @text.title.3.markdown mkdHeading
  hi link @text.title.4.marker.markdown mkdHeading
  hi link @text.title.4.markdown mkdHeading
  hi link @text.title.5.marker.markdown mkdHeading
  hi link @text.title.5.markdown mkdHeading
  hi link @punctuation.bracket.markdown_inline @spell
  hi @lsp.type.enumMember.markdown guifg=#D33682
  hi link @text.title.markdown mkdHeading
  hi link @markup.heading.1.markdown Title
  " language: liquid
  hi liquidStatement guifg=#859900
  hi liquidExpression guifg=#859900
  " language: ejs
  hi ejsTag guifg=#DC322F
  " language: javascript
  " hi @punctuation.bracket.javascript guifg=#93A1A1
  " hi @punctuation.special.javascript guifg=#93A1A1
  " hi @punctuation.delimiter.javascript guifg=#93A1A1
  " hi @function.javascript guifg=gui=bold
  " hi @type.javascript gui=bold
  " hi @method.call.javascript guifg=#CB4B16
  " language: ruby
  hi @function.ruby guifg=#CB4B16 gui=bold
  hi @function.call.ruby guifg=#CB4B16
  hi @punctuation.delimiter.ruby guifg=#93A1A1
  hi @punctuation.bracket.ruby guifg=#93A1A1
  hi @type.ruby gui=bold
  hi link @string.special.symbol.ruby Type
  " language: latex
  hi link texOnlyMath @text
  " language: gitdiff
  hi diffRemoved guifg=#DC322F
endif

if &background == 'light'
  colorscheme solarized8
  set termguicolors

  hi clear SpecialKey
  hi Comment gui=none
  hi VertSplit guifg=#264B54 guibg=#002B36 gui=none
  hi StatusLine guifg=#93A1A1 guibg=#264B54 gui=none
  hi StatusLineNc guifg=#93A1A1 guibg=#264B54 gui=none
  hi SignColumn guibg=none
  hi FloatBorder guibg=none
  hi FoldColumn guifg=#586E75 guibg=none
  hi Folded guibg=none
  hi LineNr guibg=none
  hi CursorLine guibg=none "guibg=#012D38
  hi CursorLineNr guibg=none gui=bold
  hi ColorColumn guifg=none guibg=none
  hi Visual guifg=#002B36 guibg=#B58900 gui=none
  hi MoreMsg guifg=#B58900 gui=bold
  hi ModeMsg guifg=#B58900 gui=bold
  hi ErrorMsg guifg=#DC322F guibg=none gui=none
  hi Directory guifg=#2AA198 guibg=none
  hi Search gui=reverse guifg=#2AA198
  hi IncSearch gui=standout guifg=#2AA198

  " netrw
  hi link netrwTreeBar Comment
  hi link netrwList Comment
  hi link netrwCmdSep Comment
  hi link netrwCmdNote Comment
  hi link netrwHelpCmd Comment
  hi link netrwQuickHelp Comment
  hi link netrwVersion Comment

  " plugins: nvim-tree
  hi NvimTreeIndentMarker guifg=#264B54
  hi NvimTreeWindowPicker guifg=#93A1A1 guibg=#264B54 gui=bold
  hi link NvimTreeFolderIcon Directory
  hi link NvimTreeClosedFolderIcon Directory
  hi link NvimTreeSpecialFile Normal
  hi link NvimTreeGitFileNewHL Statement
  hi link NvimTreeGitFileDirtyHL Type
  hi link NvimTreeGitFileDeletedHL PreProc
  hi link NvimTreeGitDirtyIcon Type
  hi link NvimTreeGitNewIcon Statement
  hi link NvimTreeGitDeletedIcon PreProc

  " plugins: highlight-yank-region
  hi HighlightedyankRegion guifg=#002B36 guibg=#B58900

  " plugins: indent-blankline
  hi IndentBlanklineChar guifg=#93A1A1 gui=nocombine

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

  hi DiagnosticSignError guifg=#DC322F guibg=none
  hi DiagnosticSignWarn guifg=#B58900 guibg=none
  hi DiagnosticSignInfo guifg=#268BD2 guibg=none
  hi DiagnosticSignHint guifg=#268BD2 guibg=none

  hi DiagnosticUnderlineError guisp=#CC241D gui=underline
  hi DiagnosticUnderlineWarn guisp=#B58900 gui=underline
  hi DiagnosticUnderlineInfo guisp=#073642 gui=underline
  hi DiagnosticUnderlineHint guisp=#073642 gui=underline

  " plugins: gitsigns
  hi GitSignAdd guifg=#859900 guibg=none
  hi GitSignChange guifg=#B58900 guibg=none
  hi GitSignDelete guifg=#DC322F guibg=none
  hi GitSignsAdd guifg=#859900 guibg=none
  hi GitSignsChange guifg=#B58900 guibg=none
  hi GitSignsDelete guifg=#DC322F guibg=none

  " language
  hi @variable guifg=#268BD2
  hi @label guifg=#268BD2
  hi @number guifg=#D33682
  hi @float guifg=#D33682
  hi @parameter guifg=#93A1A1
  hi @function.call guifg=#CB4B16
  hi @type.qualifier guifg=#859900
  hi @string.regex guifg=#DC322F
  hi @text.literal guifg=#B58900
  hi @text.danger guifg=#FDF6E3 guibg=#DC322F gui=bold
  hi @text.todo guifg=#FDF6E3 guibg=#859900 gui=bold
  hi @text.note guifg=#FDF6E3 guibg=#B58900 gui=bold
  " language: html
  hi htmlSpecialTagName gui=bold
  hi @text.title.html guifg=#B58900 gui=bold
  " language: markdown
  hi mkdHeading guifg=#CB4B16 gui=bold
  hi mkdListItem guifg=#DC322F
  hi mkdItalic guifg=#DC322F
  hi mkdCode guifg=#B58900
  hi mkdLink guifg=#268BD2
  hi mkdUrl guifg=#6C71C4
  hi mkdBlockquote guifg=#2AA198
  hi link @text.quote.markdown mkdBlockquote
  hi link markdownError Normal
  " hi link TableSeparator Normal
  hi link mkdLineBreak Normal
  hi @text.todo.checked.markdown guifg=#DC322F guibg=none
  hi @text.todo.unchecked.markdown guifg=#DC322F guibg=none
  hi @markup.raw.block.markdown guifg=#B58900
  hi @markup.raw.markdown_inline guifg=#B58900
  hi link @text.title.1.marker.markdown mkdHeading
  hi link @text.title.1.markdown mkdHeading
  hi link @text.title.2.marker.markdown mkdHeading
  hi link @text.title.2.markdown mkdHeading
  hi link @text.title.3.marker.markdown mkdHeading
  hi link @text.title.3.markdown mkdHeading
  hi link @text.title.4.marker.markdown mkdHeading
  hi link @text.title.4.markdown mkdHeading
  hi link @text.title.5.marker.markdown mkdHeading
  hi link @text.title.5.markdown mkdHeading
  hi link @punctuation.bracket.markdown_inline @spell
  hi @lsp.type.enumMember.markdown guifg=#D33682
  hi link @text.title.markdown mkdHeading
  hi link @markup.heading.1.markdown Title
  " language: liquid
  hi liquidStatement guifg=#859900
  hi liquidExpression guifg=#859900
  " language: ejs
  hi ejsTag guifg=#DC322F
  " language: javascript
  " hi @punctuation.bracket.javascript guifg=#93A1A1
  " hi @punctuation.special.javascript guifg=#93A1A1
  " hi @punctuation.delimiter.javascript guifg=#93A1A1
  " hi @function.javascript guifg=gui=bold
  " hi @type.javascript gui=bold
  " hi @method.call.javascript guifg=#CB4B16
  " language: ruby
  hi @function.ruby guifg=#CB4B16 gui=bold
  hi @function.call.ruby guifg=#CB4B16
  hi @punctuation.delimiter.ruby guifg=#93A1A1
  hi @punctuation.bracket.ruby guifg=#93A1A1
  hi @type.ruby gui=bold
  hi link @string.special.symbol.ruby Type
  " language: latex
  hi link texOnlyMath @text
  " language: gitdiff
  hi diffRemoved guifg=#DC322F
endif
]]

vim.cmd.sign("define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=")
vim.cmd.sign("define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=")
vim.cmd.sign("define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=")
