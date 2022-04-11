-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = '',
    staged = 'S',
    unmerged = '',
    renamed = '➜',
    deleted = '',
    untracked = 'U',
    ignored = '◌',
  },
  folder = {
    -- arrow_open = " ",
    -- arrow_closed = " ",
    default = '',
    open = '',
    empty = '',
    empty_open = '',
    symlink = '',
  },
}

local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end

-- local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  auto_reload_on_write = true,
  auto_close = false,
  open_on_tab = false,
  open_on_setup = false,
  hijack_cursor = false,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  update_cwd = false,
  update_to_buf_dir = {
    enable = true,
    auto_open = true
  },
  view = {
    width = 35,
    height = 30,
    side = 'left',
    hide_root_folder = true,
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        -- user mappings goes here
        { key = '<C-e>', action = '' }, -- disable <C-e> for edit file
        -- { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        -- { key = "h", cb = tree_cb "close_node" },
        -- { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = true,
    relativenumber = true,
    signcolumn = 'yes'
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  ignore_ft_on_setup = {
    'startify',
    'dashboard',
    'alpha'
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  filters = {
    dotfiles = false,
    custom = {
      'node_modules', '.cache'
    },
    exclude = {
      '.env'
    }
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
        exclude = {
          filetype = { 'notify', 'packer', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
          buftype = { 'nofile', 'terminal', 'help' },
        },
      },
    },
  },
  trash = {
    cmd = 'trash',
    require_confirm = true,
  }
}

vim.cmd [[
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \}
]]

vim.g.nvim_tree_root_folder_modifier    = ":p:."
vim.g.nvim_tree_git_hl                  = 1
vim.g.nvim_tree_indent_markers          = 1 -- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_highlight_opened_files  = 0 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_add_trailing            = 0 -- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty             = 0 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_icon_padding            = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_symlink_arrow           = ' >> ' -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
vim.g.nvim_tree_respect_buf_cwd         = 0 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_create_in_closed_folder = 0 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
vim.g.nvim_tree_width_allow_resize      = 0 -- 0 by default, will not resize the tree when opening a file
vim.g.nvim_tree_refresh_wait            = 500 -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

vim.cmd [[
hi NvimTreeRootFolder   guifg=#CCB17A guibg=NONE
hi NvimTreeFolderIcon   guifg=#CCB17A guibg=NONE
hi NvimTreeIndentMarker guifg=#3C3C3C guibg=NONE
hi NvimTreeGitDirty     guifg=#CCB17A guibg=NONE
hi NvimTreeGitStaged    guifg=#CCB17A guibg=NONE
hi NvimTreeGitMerge     guifg=#CCB17A guibg=NONE
hi NvimTreeGitRenamed   guifg=#CCB17A guibg=NONE
hi NvimTreeGitNew       guifg=#CCB17A guibg=NONE
]]
