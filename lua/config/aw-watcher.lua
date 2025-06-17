local status_ok, _ = pcall(require, "aw_watcher")
if not status_ok then
  return
end

require("aw_watcher").setup({
  -- required, but can be empty table: {}
  -- add any options here
  -- for example:
  bucket = {
    hostname = nil, -- by default hostname of computer
    name = nil, -- by default "aw-watcher-neovim_" .. bucket.hostname
  },
  aw_server = {
    host = "127.0.0.1",
    port = 5600,
  },
})
