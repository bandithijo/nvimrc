local status_ok, _ = pcall(require, "CopilotChat")
if not status_ok then
  return
end

require("CopilotChat").setup({
  model = 'gpt-5-mini', -- Default model to use, see ':CopilotChatModels' for available models (can be specified manually in prompt via $).
  language = 'Indonesian', -- Default language to use for answers
  show_help = true, -- Shows help message as virtual lines when waiting for user input
  show_folds = true, -- Shows folds for sections in chat
  auto_fold = false, -- Automatically non-assistant messages in chat (requires 'show_folds' to be true)
  highlight_selection = true, -- Highlight selection
  highlight_headers = true, -- Highlight headers in chat
  auto_follow_cursor = true, -- Auto-follow cursor in chat
  insert_at_end = true, -- Move cursor to end of buffer when inserting text
  window = {
    layout = 'vertical', -- 'vertical', 'horizontal', 'float', 'replace', or a function that returns the layout
    relative = 'editor',
    border = 'single',
    -- width = 0.3, -- fractional width of parent, or absolute width in columns when > 1
    width = 70, -- fractional width of parent, or absolute width in columns when > 1
    height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
  }, --- 
  headers = {
    user = ' User', -- Header to use for user questions
    assistant = ' Copilot', -- Header to use for AI answers
    tool = ' Tool', -- Header to use for tool calls
  },
  mappings = {
    accept_diff = {
      insert = "<C-S-y>",
      normal = "<C-S-y>"
    },
    close = {
      insert = "<C-c>",
      normal = "q"
    },
    complete = {
      insert = "<Tab>"
    },
    jump_to_diff = {
      normal = "gj"
    },
    quickfix_answers = {
      normal = "gqa"
    },
    quickfix_diffs = {
      normal = "gqd"
    },
    reset = {
      insert = "<C-l>",
      normal = "<C-l>"
    },
    show_diff = {
      normal = "gd"
    },
    show_help = {
      normal = "gh"
    },
    show_info = {
      normal = "gc"
    },
    submit_prompt = {
      insert = "<C-s>",
      normal = "<CR>"
    },
    yank_diff = {
      normal = "gy",
      register = '"'
    },
    disable_default_keymaps = false,
  },

  -- default providers
  providers = require('CopilotChat.config.providers'),

  -- default functions
  functions = require('CopilotChat.config.functions'),

  -- default prompts
  prompts = require('CopilotChat.config.prompts'),

  -- default mappings
  -- mappings = require('CopilotChat.config.mappings'),
})

-- Auto-command to customize chat buffer behavior
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = 'copilot-*',
  callback = function()
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
    vim.opt_local.conceallevel = 0
  end,
})

-- In your colorscheme or init.lua
vim.api.nvim_set_hl(0, 'CopilotChatHeader', { fg = '#D16969', bold = true })
vim.api.nvim_set_hl(0, 'CopilotChatSeparator', { fg = '#D16969' })
