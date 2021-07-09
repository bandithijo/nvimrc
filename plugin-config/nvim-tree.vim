let g:nvim_tree_side                  = 'left'
let g:nvim_tree_width                 = 35 "30 by default
let g:nvim_tree_ignore                = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore             = 1 "0 by default
let g:nvim_tree_auto_ignore_ft        = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_auto_open             = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close            = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open          = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow                = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers        = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles         = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl                = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier  = ':p:.' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open              = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize    = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw         = 1 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw          = 1 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_hijack_cursor         = 0 " When 1, moving cursor in the tree will position the cursor at the start of the fil eon the current line
let g:nvim_tree_add_trailing          = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty           = 0 "0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding          = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_update_cwd            = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_disable_window_picker = 0 "0 by default, will disable the window picker.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.

let g:nvim_tree_show_icons = {
    \ 'git':           1,
    \ 'folders':       1,
    \ 'files':         1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

lua << EOF
-- List of filenames that gets highlighted
vim.g.nvim_tree_special_files = {
  Makefile       = false,
  ["Cargo.toml"] = false,
  ["README.md"]  = false,
  ["readme.md"]  = false,
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- default mappings
vim.g.nvim_tree_bindings = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
  { key = {"<2-RightMouse>", "<C-}>"},    cb = tree_cb("cd") },
  { key = "<C-v>",                        cb = tree_cb("vsplit") },
  { key = "<C-x>",                        cb = tree_cb("split") },
  { key = "<C-t>",                        cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>",                         cb = tree_cb("close_node") },
  { key = "<S-CR>",                       cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C->",                         cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "}c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}
EOF

" You can toggle the help UI by pressing g?.

" Disable default mappings by plugin
" Bindings are enable by default, disabled on any non-zero value
" let nvim_tree_disable_keybindings=1

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default'        : '',
    \ 'symlink'        : '',
    \ 'git' : {
    \   'unstaged'     : '✗',
    \   'staged'       : '✓',
    \   'unmerged'     : '',
    \   'renamed'      : '➜',
    \   'untracked'    : '',
    \   'deleted'      : '-',
    \   'ignored'      : '^'
    \ },
    \ 'folder' : {
    \   'default'      : '',
    \   'open'         : '',
    \   'empty'        : '',
    \   'empty_open'   : '',
    \   'symlink'      : '',
    \   'symlink_open' : '',
    \ },
    \   'lsp' : {
    \     'hint'       : '',
    \     'info'       : '',
    \     'warning'    : '',
    \     'error'      : '',
    \ }
    \}

nnoremap <F12>     :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>f :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

"set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight link NvimTreeRootFolder Directory
highlight link NvimTreeFolderIcon Directory
highlight NvimTreeIndentMarker guifg=#3C3C3C guibg=NONE

highlight NvimTreeGitDirty     guifg=#CCB17A guibg=NONE
highlight NvimTreeGitStaged    guifg=#CCB17A guibg=NONE
highlight NvimTreeGitMerge     guifg=#CCB17A guibg=NONE
highlight NvimTreeGitRenamed   guifg=#CCB17A guibg=NONE
highlight NvimTreeGitNew       guifg=#CCB17A guibg=NONE

" IMPORTANT! you can't make the same color between
" NvimTreeStatusLine & NvimTreeStatuslineNC.
" It will raise caret char (^) on statusline.
" https://vi.stackexchange.com/a/15894/12228
highlight link NvimTreeStatusLine   StatusLine
highlight link NvimTreeStatuslineNC StatusLineNC

" NvimTreeSymlink
" NvimTreeFolderName
" NvimTreeRootFolder
" NvimTreeFolderIcon
" NvimTreeExecFile
" NvimTreeSpecialFile
" NvimTreeImageFile
" NvimTreeMarkdownFile
" NvimTreeIndentMarker

" NvimTreeLicenseIcon
" NvimTreeYamlIcon
" NvimTreeTomlIcon
" NvimTreeGitignoreIcon
" NvimTreeJsonIcon

" NvimTreeLuaIcon
" NvimTreePythonIcon
" NvimTreeShellIcon
" NvimTreeJavascriptIcon
" NvimTreeCIcon
" NvimTreeReactIcon
" NvimTreeHtmlIcon
" NvimTreeRustIcon
" NvimTreeVimIcon
" NvimTreeTypescriptIcon

" NvimTreeGitDirty
" NvimTreeGitStaged
" NvimTreeGitMerge
" NvimTreeGitRenamed
" NvimTreeGitNew

" There are also links to normal bindings to style the tree itself.

" Normal
" EndOfBuffer
" CursorLine
" VertSplit
" CursorColumn

" There are also links for file highlight with git properties
" These all link to there Git equivalent

" NvimTreeFileDirty
" NvimTreeFileStaged
" NvimTreeFileMerge
" NvimTreeFileNew
" NvimTreeFileRenamed
