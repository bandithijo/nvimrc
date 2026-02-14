-- Source: https://github.com/vyfor/cord.nvim/wiki/Configuration#-display

require('cord').setup({
  editor = {
    client = 'neovim',
    tooltip = 'Neovim',
    -- icon = '',
  },
  display = {
    theme = 'catppuccin',
    flavor = 'dark',
    view = 'editor', -- full, editor, asset, auto
    swap_fields = false,
    swap_icons = false,
  },
  timestamp = {
    enabled = true,
    reset_on_idle = false,
    reset_on_change = false,
    shared = false,
  },
  idle = {
    enabled = true,
    show_status = true,
  },
  text = {
    default = '',
    workspace = '',
    editing = '',
    viewing = '',
    debug = '',
    test = '',
    terminal = '',
    file_browser = '',
    plugin_manager = '',
    docs = '',
    diagnostics = '',
    dashboard = '',
  }
})
