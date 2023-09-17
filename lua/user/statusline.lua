Statusline = {}

Statusline.active = function()
  local set_color = "%#StatusLine#"
  local filename = "%<%{expand('%:.') != '' ? expand('%:.') : '[No Name]'}"
  local modified = "%w%q%h%r%m%y"
  local align_r = "%="
  local linecol = "%-5.(%l,%c%V%)"
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

Statusline.inactive = function()
  local set_color = "%#StatusLine#"
  local filename = "%<%{expand('%:.') != '' ? expand('%:.') : '[No Name]'}"
  local modified = "%w%q%h%r%m%y"
  local align_r = "%="
  local percentage = "%P"

  return string.format(
    "%s%s %s %s %s",
    set_color,
    filename,
    modified,
    align_r,
    percentage
  )
end

vim.api.nvim_exec([[
  augroup statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  augroup END
]], false)
