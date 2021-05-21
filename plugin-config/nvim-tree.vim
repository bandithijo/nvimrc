let g:nvim_tree_side                 = 'left'
let g:nvim_tree_width                = 35 "30 by default
let g:nvim_tree_ignore               = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore            = 1 "0 by default
let g:nvim_tree_auto_ignore_ft       = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_auto_open            = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close           = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open         = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow               = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers       = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles        = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl               = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open             = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize   = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw        = 1 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw         = 1 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing         = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty          = 0 "0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

lua << EOF
local get_lua_cb = function (cb_name)
  return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

-- Mappings for nvimtree
vim.g.nvim_tree_bindings = {
  ["<CR>"]           = get_lua_cb("edit"),
  ["o"]              = get_lua_cb("edit"),
  ["<2-LeftMouse>"]  = get_lua_cb("edit"),
  ["<2-RightMouse>"] = get_lua_cb("cd"),
  ["<C-]>"]          = get_lua_cb("cd"),
  ["<C-v>"]          = get_lua_cb("vsplit"),
  ["<C-x>"]          = get_lua_cb("split"),
  ["<C-t>"]          = get_lua_cb("tabnew"),
  ["<BS>"]           = get_lua_cb("close_node"),
  ["<S-CR>"]         = get_lua_cb("close_node"),
  ["<Tab>"]          = get_lua_cb("preview"),
  ["I"]              = get_lua_cb("toggle_ignored"),
  ["H"]              = get_lua_cb("toggle_dotfiles"),
  ["R"]              = get_lua_cb("refresh"),
  ["a"]              = get_lua_cb("create"),
  ["d"]              = get_lua_cb("remove"),
  ["r"]              = get_lua_cb("rename"),
  ["<C-r>"]          = get_lua_cb("full_rename"),
  ["x"]              = get_lua_cb("cut"),
  ["c"]              = get_lua_cb("copy"),
  ["p"]              = get_lua_cb("paste"),
  ["[c"]             = get_lua_cb("prev_git_item"),
  ["]c"]             = get_lua_cb("next_git_item"),
  ["-"]              = get_lua_cb("dir_up"),
  ["q"]              = get_lua_cb("close"),
}
EOF

" Disable default mappings by plugin
" Bindings are enable by default, disabled on any non-zero value
" let nvim_tree_disable_keybindings=1

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "",
    \   'staged': "",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "",
    \   'deleted': "",
    \   'ignored': "◌"
    \ },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \ },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
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
