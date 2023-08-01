local status_ok, _ = pcall(require, "lualine")
if not status_ok then
  return
end

local custom_theme = require('user.colors')

require("lualine").setup({
  options = {
    icons_enabled = false,
    theme = custom_theme,
    component_separators = { left = "", right = ""},
    section_separators = { left = "", right = ""},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    use_mode_colors = false,
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
      {
        "filename",
        file_status = true,      -- Displays file status (readonly status, modified status)
        newfile_status = false,  -- Display new file status (new file means no write after created)
        path = 1,                -- 0: Just the filename
                                 -- 1: Relative path
                                 -- 2: Absolute path
                                 -- 3: Absolute path, with tilde as the home directory
                                 -- 4: Filename and parent dir, with tilde as the home directory
        shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                                 -- for other components. (terrible name, any suggestions?)
        symbols = {
          modified = "[+]",      -- Text to show when the file is modified.
          readonly = "[-]",     -- Text to show when the file is non-modifiable or readonly.
          unnamed = "[No Name]", -- Text to show for unnamed buffers.
          newfile = "[New]",     -- Text to show for newly created file before first write
        }
      }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {"branch", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      {
        "filename",
        path = 0,
        file_status = false,
        symbols = {
          modified = "[+]",
          readonly = "[-]",
          unnamed = "[No Name]",
          newfile = "[New]",
        }
      }
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {"location"}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
