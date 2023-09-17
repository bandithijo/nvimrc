local colors = {
  -- codedark
  gray     = '#303030',
  white    = '#D4D4D4',
  -- solarized
  -- gray     = '#264B54',
  -- white    = '#93A1A1',
  -- github-theme-dimmed
  -- gray     = '#292E36',
  -- white    = '#adbac7',
}

return {
  normal = {
    b = { fg = colors.white, bg = colors.gray },
    a = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.gray },
    z = { fg = colors.white, bg = colors.gray },
  },
  visual = {
    b = { fg = colors.white, bg = colors.gray },
    a = { fg = colors.white, bg = colors.gray },
  },
  inactive = {
    b = { fg = colors.white, bg = colors.gray },
    a = { fg = colors.white, bg = colors.gray },
  },
  replace = {
    b = { fg = colors.white, bg = colors.gray },
    a = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.gray },
  },
  insert = {
    b = { fg = colors.white, bg = colors.gray },
    a = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.gray },
  },
}
