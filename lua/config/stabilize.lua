local status_ok, _ = pcall(require, "stabilize")
if not status_ok then
  return
end

require("stabilize").setup()
