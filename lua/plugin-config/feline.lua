-- local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')
-- local gps = require('nvim-gps')

local force_inactive = {
  filetypes = {},
  buftypes  = {},
  bufnames  = {}
}

local components = {
  active   = {{}, {}, {}},
  inactive = {{}, {}, {}},
}

local colors = {
  bg        = '#005F87',
  fg        = '#D3D3D3',
  black     = '#282828',
  yellow    = '#d8a657',
  cyan      = '#89b482',
  oceanblue = '#45707a',
  green     = '#a9b665',
  orange    = '#e78a4e',
  violet    = '#d3869b',
  magenta   = '#c14a4a',
  white     = '#a89984',
  skyblue   = '#7daea3',
  red       = '#ea6962',
}

local vi_mode_colors = {
  NORMAL        = 'bg',
  OP            = 'bg',
  INSERT        = 'bg',
  VISUAL        = 'bg',
  LINES         = 'bg',
  BLOCK         = 'bg',
  REPLACE       = 'bg',
  ['V-REPLACE'] = 'bg',
  ENTER         = 'bg',
  MORE          = 'bg',
  SELECT        = 'bg',
  COMMAND       = 'bg',
  SHELL         = 'bg',
  TERM          = 'bg',
  NONE          = 'bg'
}

local vi_mode_text = {
  n      = 'N0RMAL',
  i      = 'INS3RT',
  v      = 'VISUAL',
  [''] = 'V-BLOCK',
  V      = 'V-LINE',
  c      = 'C0MMAND',
  no     = 'UNKNOWN',
  s      = 'UNKNOWN',
  S      = 'UNKNOWN',
  ic     = 'UNKNOWN',
  R      = 'R3PLACE',
  Rv     = 'UNKNOWN',
  cv     = 'UNKWON',
  ce     = 'UNKNOWN',
  r      = 'R3PLACE',
  rm     = 'UNKNOWN',
  t      = 'INS3RT'
}

force_inactive.filetypes = {
  'NvimTree',
  'dbui',
  'packer',
  'startify',
  'fugitive',
  'fugitiveblame'
}

force_inactive.buftypes = {
  'terminal'
}

-- LEFT

-- vi-mode
components.active[1][1] = {
  -- provider = function() return string.format(" %s", vi_mode_utils.get_vim_mode()) end,
  provider = function()
      local current_text = vi_mode_text[vim.fn.mode()]
      return ' ' .. current_text
  end,
  hl = {
    fg = 'fg',
    bg = 'bg'
  }
}
-- filename & filemodified
components.active[1][2] = {
  provider = function()
    local filename, modifier, readonly

    filename = vim.api.nvim_buf_get_name(0)
    -- if vim.api.nvim_win_get_width(0) > 1 then
    --   filename = vim.fn.fnamemodify(filename, ":~:.")
    -- else
    --   filename = vim.fn.fnamemodify(filename, ":t")
    -- end
    filename = vim.fn.fnamemodify(filename, ":~:.")

    if vim.bo.readonly then
      readonly = " [RO] "
    else
      readonly = ""
    end

    if vim.bo.modified then
      modifier = " [+]"
    else
      modifier = ""
    end

    return string.format(" %s%s%s", filename, readonly, modifier)
  end,
  enabled = function()
    return vim.api.nvim_win_get_width(0) > 50 and vim.api.nvim_buf_get_name(0) ~= ""
  end,
  hl = {
    fg = "fg",
    bg = "bg",
  }
}
-- filemodified
-- components.active[1][2] = {
--   provider = function()
--     local modifier, readonly
--
--     if vim.bo.readonly then
--       readonly = " [RO] "
--     else
--       readonly = ""
--     end
--
--     if vim.bo.modified then
--       modifier = " [+]"
--     else
--       modifier = ""
--     end
--     return string.format("%s%s", readonly, modifier)
--   end,
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--   }
-- }
-- nvimGps
-- components.active[1][4] = {
--   provider = function() return gps.get_location() end,
--   enabled = function() return gps.is_available() end,
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--   },
--   left_sep = {
--     str = ' > ',
--     hl = {
--       fg = 'fg',
--       bg = 'bg',
--     }
--   }
-- }
-- vi-symbol
-- components.active[1][2] = {
--   provider = function()
--     return vi_mode_text[vi_mode_utils.get_vim_mode()]
--   end,
--   hl = function()
--     local val = {}
--     -- val.fg = vi_mode_utils.get_mode_color()
--     val.fg = 'fg'
--     val.bg = 'bg'
--     val.style = 'bold'
--     return val
--   end,
--   right_sep = ' '
-- }

-- MID

-- gitBranch
-- components.active[2][1] = {
--   provider = 'git_branch',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   }
-- }
-- diffAdd
-- components.active[2][2] = {
--   provider = 'git_diff_added',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   }
-- }
-- diffModfified
-- components.active[2][3] = {
--   provider = 'git_diff_changed',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   }
-- }
-- diffRemove
-- components.active[2][4] = {
--   provider = 'git_diff_removed',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   },
-- }
-- diagnosticErrors
-- components.active[2][5] = {
--   provider = 'diagnostic_errors',
--   enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.ERROR) end,
--   hl = {
--     fg = 'fg',
--     style = 'bold'
--   }
-- }
-- diagnosticWarn
-- components.active[2][6] = {
--   provider = 'diagnostic_warnings',
--   enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.WARN) end,
--   hl = {
--     fg = 'fg',
--     style = 'bold'
--   }
-- }
-- diagnosticHint
-- components.active[2][7] = {
--   provider = 'diagnostic_hints',
--   enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.HINT) end,
--   hl = {
--     fg = 'fg',
--     style = 'bold'
--   }
-- }
-- diagnosticInfo
-- components.active[2][8] = {
--   provider = 'diagnostic_info',
--   enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.INFO) end,
--   hl = {
--     fg = 'fg',
--     style = 'bold'
--   }
-- }

-- RIGHT

-- gitBranch
components.active[3][1] = {
  provider = 'git_branch',
  icon = ' ',
  hl = {
    fg = 'fg',
    bg = 'bg',
  },
  left_sep = ' ',
  right_sep = ' '
}
components.active[3][2] = {
  provider = function() return "[" .. vim.bo.shiftwidth .. "]" end,
  hl = function()
    local val = {}
    val.fg = 'fg'
    val.bg = 'bg'
    return val
  end,
  right_sep = ' '
}
-- fileType
components.active[3][3] = {
  -- provider = 'file_type',
  provider = function() return vim.bo.filetype end,
  hl = function()
    local val = {}
    val.fg = 'fg'
    val.bg = 'bg'
    return val
  end,
  right_sep = ' '
}
-- lineInfo
components.active[3][4] = {
  provider = 'position',
  hl = {
    fg = 'fg',
    bg = 'bg',
  },
  right_sep = ' '
}
-- linePercent
components.active[3][5] = {
  provider = 'line_percentage',
  hl = {
    fg = 'fg',
    bg = 'bg',
  },
  right_sep = ' '
}
-- LspName
-- components.active[3][1] = {
--   provider = 'lsp_client_names',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
-- fileIcon
-- components.active[3][2] = {
--   provider = function()
--     local filename = vim.fn.expand('%:t')
--     local extension = vim.fn.expand('%:e')
--     local icon  = require'nvim-web-devicons'.get_icon(filename, extension)
--     if icon == nil then
--       icon = ' '
--     end
--     return icon
--   end,
--   hl = function()
--     local val = {}
--     val.fg = 'fg'
--     val.bg = 'bg'
--     val.style = 'bold'
--     return val
--   end,
--   right_sep = ' '
-- }
-- shiftWidth
-- fileSize
-- components.active[3][4] = {
--   provider = 'file_size',
--   enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
-- fileFormat
-- components.active[3][5] = {
--   provider = function() return '' .. vim.bo.fileformat:upper() .. '' end,
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
-- fileEncode
-- components.active[3][6] = {
--   provider = 'file_encoding',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
-- RVMrubyVersion
-- components.active[3][7] = {
--   provider = function()
--     return ' '..vim.fn['rvm#string']()
--   end,
--   hl = {
--     fg = 'red',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
-- scrollBar
-- components.active[3][9] = {
--   provider = 'scroll_bar',
--   hl = {
--     fg = 'fg',
--     bg = 'bg',
--   },
-- }

-- INACTIVE

-- fileType
components.inactive[1][1] = {
  provider = function()
    local filename = vim.api.nvim_buf_get_name(0)

    if vim.api.nvim_win_get_width(0) > 1 then
      filename = vim.fn.fnamemodify(filename, ":~:.")
    else
      filename = vim.fn.fnamemodify(filename, ":t")
    end

    if filename == 'NvimTree_1' then
      return ' explorer'
    end
    return ' ' .. filename
  end,
  hl = {
    fg = 'fg',
    bg = 'bg'
  }
}

require('feline').setup({
  theme = colors,
  default_bg = colors.bg,
  default_fg = colors.fg,
  vi_mode_colors = vi_mode_colors,
  components = components,
  force_inactive = force_inactive,
})
