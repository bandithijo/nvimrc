local status_ok, _ = pcall(require, "dap-ruby")
if not status_ok then
  return
end

require("dap-ruby").setup()
