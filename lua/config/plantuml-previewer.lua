local status_ok, _ = pcall(require, "plantuml-previewer")
if not status_ok then
  return
end

require("plantuml-previewer").setup({
})
