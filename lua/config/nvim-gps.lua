local status_ok, _ = pcall(require, "nvim-gps")
if not status_ok then
  return
end

require("nvim-gps").setup()
