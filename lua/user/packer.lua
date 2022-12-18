require("packer").startup(function()
  -- plugins manager
  use "wbthomason/packer.nvim"

  -- colorscheme
  use { "tomasiser/vim-code-dark" }

  -- discord
  use {
    "andweeb/presence.nvim",
    config = require("config.presence")
  }

  -- wakatime
  use { "wakatime/vim-wakatime" }

  -- icons
  use {
    "kyazdani42/nvim-web-devicons",
    config = require("config.nvim-web-devicons")
  }

  -- explorer
  use {
    "kyazdani42/nvim-tree.lua",
    config = require("config.nvim-tree")
  }

  -- statusline
  use {
    "feline-nvim/feline.nvim",
    config = require("config.feline")
  }

  -- gps
  use {
    "SmiteshP/nvim-gps",
    config = require("config.nvim-gps")
  }

  -- startup time check
  use { "tweekmonster/startuptime.vim" }

  -- indentline
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = require("config.indent-blankline")
  }

  -- easy align
  use { "junegunn/vim-easy-align" }

  -- whitespace detector
  use {
    "ntpeters/vim-better-whitespace",
    config = require("config.vim-better-whitespace")
  }

  -- ruby
  use { "vim-ruby/vim-ruby" }

  -- rspec
  use {
    "vim-test/vim-test",
    config = require("config.vim-test")
  }

  -- dispatch
  use { "tpope/vim-dispatch" }

  -- liquid
  use { "tpope/vim-liquid" }

  -- markdown
  use {
    "preservim/vim-markdown",
    requires = {
      "godlygeek/tabular"
    },
    config = require("config.vim-markdown")
  }

  -- markdown preview
  use {
    "iamcco/markdown-preview.nvim",
    config = require("config.markdown-preview")
  }

  -- markdown checkbox
  use {
    "jkramer/vim-checkbox",
    config = require("config.vim-checkbox")
  }

  -- markdown table mode
  use {
    "dhruvasagar/vim-table-mode",
    config = require("config.vim-table-mode")
  }

  -- float terminal
  use {
    "voldikss/vim-floaterm",
    config = require("config.vim-floaterm")
  }

  -- color indicator
  use {
    "RRethy/vim-hexokinase",
    config = require("config.vim-hexokinase")
  }

  -- yank indicator
  use {
    "machakann/vim-highlightedyank",
    config = require("config.vim-highlightedyank")
  }

  -- surround
  use {
    "tpope/vim-surround",
    config = require("config.vim-surround")
  }

  -- end tag completion
  use { "ervandew/sgmlendtag" }

  -- comments
  use {
    "numToStr/Comment.nvim",
    config = require("config.comment")
  }

  -- fold
  use {
    "kevinhwang91/nvim-ufo",
    requires = {
      "kevinhwang91/promise-async"
    },
    config = require("config.nvim-ufo")
  }

  -- git fugitive
  use {
    "tpope/vim-fugitive",
    requires = {
      "tpope/vim-rhubarb"
    }
  }

  -- git commit browser
  use { "junegunn/gv.vim" }

  -- git blame
  use {
    "APZelos/blamer.nvim",
    config = require("config.blamer")
  }

  -- git sign
  use {
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    },
    config = require("config.gitsigns")
  }

  -- telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzy-native.nvim" -- fzy_native
    },
    config = require("config.telescope")
  }

  -- stabilize window
  use {
    "luukvbaal/stabilize.nvim",
    config = require("config.stabilize")
  }

  -- autoclose parenthesis
  use {
    "cohama/lexima.vim",
    config = require("config.lexima")
  }

  -- tagbar
  use {
    "preservim/tagbar",
    config = require("config.tagbar")
  }

  -- formater
  use { "sbdchd/neoformat" }

  -- language parser
  use {
    "nvim-treesitter/nvim-treesitter",
    commit = "4cccb6f",
    config = require("config.nvim-treesitter")
  }
  use { "nvim-treesitter/playground" }
  use { "p00f/nvim-ts-rainbow" }

  -- lsp
  use { "neovim/nvim-lspconfig" }
  use { "williamboman/nvim-lsp-installer" }

  -- autocomplete
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use {
    "hrsh7th/nvim-cmp",
    config = require("config.nvim-cmp")
  }
  use { "onsails/lspkind.nvim" }

  -- snippet
  use { "hrsh7th/cmp-vsnip" }
  use {
    "hrsh7th/vim-vsnip",
    config = require("config.vim-vsnip")
  }
  use { "hrsh7th/vim-vsnip-integ" }

  -- snippet sample
  use { "rafamadriz/friendly-snippets" }

  -- debugger
  use {
    "mfussenegger/nvim-dap",
    config = require("config.nvim-dap")
  }
  use { "rcarriga/nvim-dap-ui" }
  use { "theHamsta/nvim-dap-virtual-text" }
  use { "suketa/nvim-dap-ruby" }
end)
