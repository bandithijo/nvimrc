local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

-- local tree_cb = nvim_tree_config.nvim_tree_callback

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '<C-e>', '<C-e>', { buffer = bufnr }) -- disable <C-e> for edit file
end

nvim_tree.setup {
  on_attach = on_attach,
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_netrw = false,
  hijack_cursor = false,
  hijack_unnamed_buffer_when_opening = false,
  open_on_tab = false,
  respect_buf_cwd = false,
  create_in_closed_folder = false,
  view = {
    centralize_selection = false,
    cursorline = true,
    width = 40,
    side = "left",
    preserve_window_proportions = true,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 30,
        height = 30,
        row = 1,
        col = 1,
      },
    },
    -- mappings = {
    --   custom_only = false,
    -- },
  },
  renderer = {
    root_folder_modifier = ":p:.",
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "none",
    add_trailing = true,
    group_empty = false,
    indent_width = 2,
    indent_markers = {
      enable = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = " ",
      },
    },
    icons = {
      web_devicons = {
        file = {
          enable = false,
          color = false,
        },
        folder = {
          enable = false,
          color = false,
        },
      },
      git_placement = "signcolumn",
      padding = " ",
      symlink_arrow = " >> ",
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true,
        modified = true,
        diagnostics = true,
        bookmarks = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
    symlink_destination = true,
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {
      ".cache", "^.git$"
    },
    exclude = {
      ".env", "service_account.json"
    }
  },
  git = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    disable_for_dirs = {},
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
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  }
}
	
