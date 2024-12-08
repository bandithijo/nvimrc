local status_ok, _ = pcall(require, "lsp_signature")
if not status_ok then
  return
end

require("lsp_signature").setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  floating_window = false, -- show hint in a floating window, set to false for virtual text only mode

  floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
  -- will set to true when fully tested, set to false will use whichever side has more space
  -- this setting will be helpful if you do not want the PUM and floating win overlap

  floating_window_off_x = 1, -- adjust float windows x position.
                             -- can be either a number or function
  floating_window_off_y = 0, -- adjust float windows y position. e.g -2 move window up 2 lines; 2 move down 2 lines
                              -- can be either number or function, see examples
  hint_enable = true, -- virtual hint enable
  hint_prefix = "🐼 ",  -- Panda for parameter, NOTE: for the terminal not support emoji, might crash
  -- or, provide a table with 3 icons
  -- hint_prefix = {
  --     above = "↙ ",  -- when the hint is on the line above the current line
  --     current = "← ",  -- when the hint is on the same line
  --     below = "↖ "  -- when the hint is on the line below the current line
  -- }
  hint_scheme = "Comment",
  always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58
  auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
  extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
  zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

  padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc

  transparency = 100, -- disabled by default, allow floating win transparent value 1~100
})
