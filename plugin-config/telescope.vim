" This configuration adopted from Elianiva.
" Source: https://github.com/elianiva/dotfiles/blob/master/nvim/.config/nvim/lua/plugins/_telescope.lua

lua << EOF
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    vimgrep_arguments    = {
      'rg',
      '--color = never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position      = 'bottom',
    prompt_prefix        = '> ',
    selection_caret      = '> ',
    entry_prefix         = '  ',
    initial_mode         = 'insert',
    scroll_strategy      = 'cycle',
    selection_strategy   = 'reset',
    sorting_strategy     = 'descending',
    layout_strategy      = 'horizontal',
    layout_defaults      = {
      horizontal = {
        width_padding    = 0.1,
        height_padding   = 0.2,
        preview_width    = 0.5
      },
      vertical = {
        width_padding    = 0.1,
        height_padding   = 0.5,
        preview_height   = 0.5
      }
    },
    default_mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<CR>"]  = actions.select_default + actions.center,
        ["<C-v>"] = actions.select_vertical,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-t>"] = actions.select_tab,

        ["<C-c>"] = actions.close,
        ["<Esc>"] = actions.close,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<Tab>"] = actions.toggle_selection,
        -- ['<C-s>'] = actions.open_selected_files,
        -- ['<C-a>'] = actions.cycle_previewers_prev,
        -- ['<C-w>l'] = actions.preview_switch_window_right,
      },
      n = {
        ["<CR>"]  = actions.select_default + actions.center,
        ["<C-v>"] = actions.select_vertical,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-t>"] = actions.select_tab,
        ["<Esc>"] = actions.close,

        ["j"]     = actions.move_selection_next,
        ["k"]     = actions.move_selection_previous,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-q>"] = actions.send_to_qflist,
        ["<Tab>"] = actions.toggle_selection,
        -- ["<C-w>l"] = actions.preview_switch_window_right,
      }
    },
    file_sorter          = require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter       = require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path         = true,
    winblend             = 0,
    width                = 0.75,
    preview_cutoff       = 120,
    results_height       = 1,
    results_width        = 0.8,
    border               = {},
    borderchars          = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    color_devicons       = false,
    use_less             = false,
    set_env              = { ['COLORTERM'] = 'truecolor' },
    file_previewer       = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer       = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer     = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

-- depends on `nvim-telescope/telescope-fzy-native.nvim`
require('telescope').setup {
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter    = true,
      }
    }
}
require('telescope').load_extension('fzy_native')

EOF

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files   previewer=false<cr>
nnoremap <C-f> <cmd>Telescope buffers      previewer=false<cr>
nnoremap <C-g> <cmd>Telescope git_branches previewer=false<cr>

highlight TelescopeSelection      guifg=#D4D4D4 gui=bold " selected item
highlight TelescopeSelectionCaret guifg=#D4D4D4 " selection caret
highlight TelescopeMultiSelection guifg=#D7BA7D " multisections

" Border highlight groups.
highlight TelescopeBorder         guifg=#D4D4D4
highlight TelescopePromptBorder   guifg=#D4D4D4
highlight TelescopeResultsBorder  guifg=#D4D4D4
highlight TelescopePreviewBorder  guifg=#D4D4D4

" Used for highlighting characters that you match.
highlight TelescopeMatching       guifg=#F24646

" Used for the prompt prefix
highlight TelescopePromptPrefix   guifg=#F24646
