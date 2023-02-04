local status_ok, _ = pcall(require, "nvim-navic")
if not status_ok then
  return
end

require("nvim-navic").setup()
