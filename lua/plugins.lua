require('packer').startup(function()
  -- plugins manager
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'tomasiser/vim-code-dark'

  -- wakatime
  use 'wakatime/vim-wakatime'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- explorer
  use 'kyazdani42/nvim-tree.lua'

  -- statusline
  -- use {
  --   'feline-nvim/feline.nvim', branch = 'develop'
  -- }


  -- startup time check
  use 'tweekmonster/startuptime.vim'

  -- indentline
  use 'lukas-reineke/indent-blankline.nvim'

  -- easy align
  use 'junegunn/vim-easy-align'

  -- whitespace detector
  use 'ntpeters/vim-better-whitespace'

  -- markdown checkbox
  use 'jkramer/vim-checkbox'

  -- markdown table mode
  use 'dhruvasagar/vim-table-mode'

  -- float terminal
  use 'voldikss/vim-floaterm'

  -- color indicator
  use 'RRethy/vim-hexokinase'

  -- yank indicator
  use 'machakann/vim-highlightedyank'

  -- surround
  use 'tpope/vim-surround'

  -- end tag completion
  use 'ervandew/sgmlendtag'

  -- comments
  use 'numToStr/Comment.nvim'

  -- git fugitive
  use {
    'tpope/vim-fugitive',
    requires = {
      'tpope/vim-rhubarb'
    }
  }

  -- git blame
  use 'APZelos/blamer.nvim'

  -- git sign
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }

  -- fzy_native
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- stabilize window
  use 'luukvbaal/stabilize.nvim'

  -- autoclose parenthesis
  use 'cohama/lexima.vim'

  -- language parser
  use 'nvim-treesitter/nvim-treesitter'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
end)
