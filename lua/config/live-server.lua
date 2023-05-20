local status_ok, _ = pcall(require, "live-server")
if not status_ok then
  return
end

require("live-server").setup({
  args = {
    '--port=7000',
  }
})
