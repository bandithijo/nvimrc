require("packer").startup(function(use)
  -- plugins manager
  use { "wbthomason/packer.nvim" }

  -- colorscheme
  use {
    "Mofiqul/vscode.nvim",
    config = require("config.colorscheme.vscode")
  }
  -- use {
  --   "ellisonleao/gruvbox.nvim",
  --   config = require("config.colorscheme.gruvbox")
  -- }
  -- use {
  --   "lifepillar/vim-solarized8",
  --   config = require("config.colorscheme.solarized")
  -- }
  -- use {
  --   "projekt0n/github-nvim-theme",
  --   config = require("config.colorscheme.github-theme")
  -- }

  -- gpg
  use { "jamessan/vim-gnupg" }

  -- wakatime
  use { "wakatime/vim-wakatime" }

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

  -- vim-test
  use {
    "vim-test/vim-test",
    config = require("config.vim-test")
  }

  -- dispatch
  use { "tpope/vim-dispatch" }

  -- ejs
  use { "nikvdp/ejs-syntax"}

  -- ruby
  use { "vim-ruby/vim-ruby" }

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

  -- various vim encoders
  use {
    "qtc-de/vve"
  }

  -- color indicator
  use {
    "RRethy/vim-hexokinase",
    run = 'make hexokinase',
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

  -- autoclose parenthesis
  use {
    "windwp/nvim-autopairs",
    config = require("config.nvim-autopairs")
  }

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
    },
    config = require("config.telescope")
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- stabilize window
  use {
    "luukvbaal/stabilize.nvim",
    config = require("config.stabilize")
  }

  -- live-server
  use {
    "barrett-ruth/live-server.nvim",
    config = require("config.live-server")
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
    config = require("config.nvim-treesitter")
  }
  use { "nvim-treesitter/playground" }
  use { "p00f/nvim-ts-rainbow" }
  -- context
  use {
    "nvim-treesitter/nvim-treesitter-context",
    config = require("config.nvim-treesitter-context")
  }

  -- lsp
  use {
    "williamboman/mason.nvim",
    config = require("config.mason")
  }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "neovim/nvim-lspconfig" }

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
