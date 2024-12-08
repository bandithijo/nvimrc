local status_ok, _ = pcall(require, "data-viewer")
if not status_ok then
  return
end

require("data-viewer").setup({
  autoDisplayWhenOpenFile = false,
  maxLineEachTable = 100,
  columnColorEnable = false,
  columnColorRoulette = { -- Highlight groups
    "DataViewerColumn0",
    "DataViewerColumn1",
    "DataViewerColumn2",
  },
  view = {
    float = false, -- False will open in current window
    width = 0.8, -- Less than 1 means ratio to screen width, valid when float = true
    height = 0.8, -- Less than 1 means ratio to screen height, valid when float = true
    zindex = 50, -- Valid when float = true
  },
  keymap = {
    quit = "q",
    next_table = "<C-l>",
    prev_table = "<C-h>",
  },
})
