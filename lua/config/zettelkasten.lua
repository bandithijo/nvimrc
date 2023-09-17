local status_ok, _ = pcall(require, "zettelkasten")
if not status_ok then
  return
end

local project_root = "~/zet"

require("zettelkasten").setup({
  notes_path = vim.fn.expand(project_root) .. "/notes",
  browseformat = "%d - %h [%r:%b] %t",
  id_inference_location = 0,
  id_pattern = "%d+%d+%d+%d+%d+%d+",
  id_format = "%Y%m%d%H%M%S",
  filename_pattern = "%d+%d+%d+%d+%d+%d+.md",
  title_pattern = "# %d+%d+%d+%d+%d+%d+ .+"
})

-- For update tags
if vim.fn.executable("ctags") == 1 then
  vim.api.nvim_create_user_command(
    "ZkUpdateTags",
    "!cd " .. project_root .. " && ctags -R --langdef=markdowntags --languages=markdowntags --langmap=markdowntags:.md --kinddef-markdowntags=t,tag,tags --mline-regex-markdowntags='/(^|[[:space:]])\\#(\\w\\S*)/\\2/t/{mgroup=1}' -f tags .",
    {
      range = false,
    }
  )
end

-- For get the notes location on GitHub
vim.api.nvim_create_user_command(
  'ZkGet',
  function (args)
    local github_username = 'bandithijo'
    if args['args'] and string.len(args['args']) > 0 then
      vim.cmd('silent !xdg-open https://github.com/' .. github_username .. '/zet/blob/main/notes/' .. args['args'] .. '.md  > /dev/null 2>&1 &')
    else
      vim.notify("ZkGet: Missing note ID. Please provide a valid ID.", vim.log.levels.ERROR, { title = "ZkGet Error" })
    end
  end,
  { nargs = '*' }
)
