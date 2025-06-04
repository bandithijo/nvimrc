Statusline = {}

Statusline.active = function()
  local set_color = "%#StatusLine#"
  local filename = "%<%{expand('%:.') != '' ? expand('%:.') : '[No Name]'}"
  local modified = "%w%q%h%r%m%y"
  local align_r = "%="
  local linecol = "%-1.(%l,%c%V%)"
  local percentage = "%P"

  return string.format(
    " %s%s %s %s %s %s ",
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
  local modified = "%w%q%h%r%m"
  local align_r = "%="

  return string.format(
    " %s%s %s %s ",
    set_color,
    filename,
    modified,
    align_r
  )
end

Statusline.simple = function()
  local set_color = "%#StatusLine#"
  local filetype = "%{&filetype}"
  local align_r = "%="

  return string.format(
    " %s%s%s ",
    set_color,
    filetype,
    align_r
  )
end

vim.api.nvim_exec([[
  augroup statusline
  au!
  " au WinEnter,BufEnter * if &filetype !=# 'NvimTree' && &filetype !=# 'tagbar' | setlocal statusline=%!v:lua.Statusline.active() | endif
  " au WinLeave,BufLeave * if &filetype !=# 'NvimTree' && &filetype !=# 'tagbar' | setlocal statusline=%!v:lua.Statusline.inactive() | endif
  " au WinEnter,BufEnter * if &filetype ==# 'NvimTree' || &filetype ==# 'tagbar' | setlocal statusline=%!v:lua.Statusline.simple() | endif
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  augroup END
]], false)
