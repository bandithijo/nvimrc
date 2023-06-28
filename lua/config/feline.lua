local status_ok, _ = pcall(require, "feline")
if not status_ok then
  return
end

-- local lsp = require("feline.providers.lsp")
-- local vi_mode_utils = require("feline.providers.vi_mode")
local navic = require("nvim-navic")

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
  -- Codedark
  bg        = "#005F87",
  fg        = "#D3D3D3",
  -- Gruvbox
  -- bg        = "#3C3836",
  -- fg        = "#F2E5BC",
  -- Solarized
  -- bg        = "#073642",
  -- fg        = "#93A1A1",
}

local vi_mode_colors = {
  NORMAL        = "bg",
  OP            = "bg",
  INSERT        = "bg",
  VISUAL        = "bg",
  LINES         = "bg",
  BLOCK         = "bg",
  REPLACE       = "bg",
  ["V-REPLACE"] = "bg",
  ENTER         = "bg",
  MORE          = "bg",
  SELECT        = "bg",
  COMMAND       = "bg",
  SHELL         = "bg",
  TERM          = "bg",
  NONE          = "bg"
}

force_inactive.filetypes = {
  "NvimTree",
  "dbui",
  "packer",
  "startify",
  "fugitive",
  "fugitiveblame"
}

force_inactive.buftypes = {
  "terminal"
}

-- LEFT

-- filename & filemodified
components.active[1][1] = {
  provider = function()
    local filename, modifier, readonly

    filename = vim.api.nvim_buf_get_name(0)
    if filename == "" then
      return " [neovim]"
    end
    if filename == "__Tagbar__.1" then
      return " [tagbar]"
    end
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
  -- enabled = function()
  --   return vim.api.nvim_win_get_width(0) > 50 and vim.api.nvim_buf_get_name(0) ~= ""
  -- end,
  hl = {
    fg = "fg",
    bg = "bg",
  }
}
-- nvim-navic
components.active[1][2] = {
  provider = function() return navic.get_location() end,
  enabled = function() return navic.is_available() end,
  hl = {
    fg = "fg",
    bg = "bg",
  },
  left_sep = {
    str = " > ",
    hl = {
      fg = "fg",
      bg = "bg",
    }
  }
}

-- RIGHT

-- git-branch
components.active[3][1] = {
  provider = "git_branch",
  icon = " ",
  hl = {
    fg = "fg",
    bg = "bg",
  },
  left_sep = " ",
  right_sep = " "
}
components.active[3][2] = {
  provider = function() return "[" .. vim.bo.shiftwidth .. "]" end,
  hl = function()
    local val = {}
    val.fg = "fg"
    val.bg = "bg"
    return val
  end,
  right_sep = " "
}
-- fileType
components.active[3][3] = {
  -- provider = 'file_type',
  provider = function() return vim.bo.filetype end,
  hl = function()
    local val = {}
    val.fg = "fg"
    val.bg = "bg"
    return val
  end,
  right_sep = " "
}
-- lineInfo
components.active[3][4] = {
  provider = "position",
  hl = {
    fg = "fg",
    bg = "bg",
  },
  right_sep = " "
}
-- linePercent
components.active[3][5] = {
  provider = "line_percentage",
  hl = {
    fg = "fg",
    bg = "bg",
  },
  right_sep = " "
}

-- INACTIVE

-- filetype
components.inactive[1][1] = {
  provider = function()
    local filename = vim.api.nvim_buf_get_name(0)

    if vim.api.nvim_win_get_width(0) > 1 then
      filename = vim.fn.fnamemodify(filename, ":~:.")
    else
      filename = vim.fn.fnamemodify(filename, ":t")
    end

    if filename == "NvimTree_1" then
      return " explorer"
    end
    return " " .. filename
  end,
  hl = {
    fg = "fg",
    bg = "bg"
  }
}
-- lineinfo
components.inactive[3][1] = {
  provider = "position",
  hl = {
    fg = "fg",
    bg = "bg",
  },
  right_sep = " "
}
-- linepercent
components.inactive[3][2] = {
  provider = "line_percentage",
  hl = {
    fg = "fg",
    bg = "bg",
  },
  right_sep = " "
}

require("feline").setup({
  theme = colors,
  default_bg = colors.bg,
  default_fg = colors.fg,
  vi_mode_colors = vi_mode_colors,
  components = components,
  force_inactive = force_inactive,
})
