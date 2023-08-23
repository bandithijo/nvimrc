local function statusline()
  local set_color = "%#StatusLine#"
  local filename = "%<%{expand('%:.') != '' ? expand('%:.') : '[No Name]'}"
  local modified = "%w%q%h%r%m%y"
  local align_r = "%="
  local linecol = "%-14.(%l,%c%V%)"
  local percentage = "%P"

  return string.format(
    "%s%s %s %s %s %s",
    set_color,
    filename,
    modified,
    align_r,
    linecol,
    percentage
  )
end

vim.opt.statusline = statusline()
