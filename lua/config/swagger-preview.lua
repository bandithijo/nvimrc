local status_ok, _ = pcall(require, "swagger-preview")
if not status_ok then
  return
end

require("swagger-preview").setup({
  --- The host to run the preview server on
  host = "localhost",
  -- The port to run the preview server on
  port = 8000,
})
