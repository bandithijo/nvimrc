require("packer").startup(function(use)
  -- plugins manager
  use { "wbthomason/packer.nvim" }

  -- colorscheme
  use {
    "Mofiqul/vscode.nvim",
    -- config = require("config.colorscheme.vscode")
    -- config = require("config.colorscheme.vscode-light")
  }
  use {
    "ellisonleao/gruvbox.nvim",
    -- config = require("config.colorscheme.gruvbox")
  }
  use {
    "lifepillar/vim-solarized8",
    -- branch = "neovim",
    -- config = require("config.colorscheme.solarized")
  }
  use {
    "projekt0n/github-nvim-theme",
    -- config = require("config.colorscheme.github-theme")
  }
  use {
    "maxmx03/solarized.nvim",
  }
  use {
    "lalitmee/cobalt2.nvim",
    requires = "tjdevries/colorbuddy.nvim",
    -- config = require("config.colorscheme.cobalt2")
  }
  use {
    "V4N1LLA-1CE/xcodedark.nvim",
    -- config = require("config.colorscheme.xcodedark")
  }
  use {
    "lunacookies/vim-colors-xcode",
    -- config = require("config.colorscheme.vim-colors-xcode-light")
    config = require("config.colorscheme.vim-colors-xcode-dark")
  }

  -- statusline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
    -- config = require("config.lualine")
  }

  -- icons
  use {
    "kyazdani42/nvim-web-devicons",
    config = require("config.nvim-web-devicons")
  }

  -- file explorer
  use {
    "kyazdani42/nvim-tree.lua",
    config = require("config.nvim-tree")
  }

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

  -- increment numeric
  use { "tpope/vim-speeddating" }

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

  -- swagger-preview
  use {
      "vinnymeller/swagger-preview.nvim",
      run = "npm install -g swagger-ui-watcher",
      requires = {
        "moon0326/swagger-ui-watcher"
      },
      config = require("config.swagger-preview"),
  }

  -- latex
  use {
    "lervag/vimtex",
    config = require("config.vimtex")
  }

  -- ejs
  use { "nikvdp/ejs-syntax"}

  -- ruby
  use { "vim-ruby/vim-ruby" }

  -- liquid
  use { "tpope/vim-liquid" }

  -- php blade
  use { "jwalton512/vim-blade" }

  -- markdown
  use {
    "tadmccorkle/markdown.nvim",
    config = require("config.markdown")
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

  -- database
  use {
    "xemptuous/sqlua.nvim",
    config = require("config/sqlua")
  }

  -- dotenv
  use {
    "tpope/vim-dotenv",
    -- config = require("config/vim-dotenv")
  }

  -- zettelkasten
  use {
    "Furkanzmc/zettelkasten.nvim",
    config = require("config.zettelkasten")
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
  -- use { "p00f/nvim-ts-rainbow" }
  -- use { "HiPhish/nvim-ts-rainbow2" }
  -- context
  use {
    "nvim-treesitter/nvim-treesitter-context",
    config = require("config.nvim-treesitter-context")
  }

  -- tailwind-sorter
  use {
    "laytan/tailwind-sorter.nvim",
    requires = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim"
    },
    config = require("config.tailwind-sorter"),
    run = "cd formatter && npm i && npm run build"
  }

  -- lsp
  use { "neovim/nvim-lspconfig" }
  use { "nvimtools/none-ls.nvim" }
  use {
    "MunifTanjim/prettier.nvim",
    config = require("config.prettier")
  }
  use {
    "ray-x/lsp_signature.nvim",
    config = require("config.lsp-signature")
  }

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

  -- data viewer
  use {
    "vidocqh/data-viewer.nvim",
    config = require("config.data-viewer")
  }

  -- rest console
  use {
    "diepm/vim-rest-console",
    config = require("config.vim-rest-console")
  }

  -- plantuml
  use { "aklt/plantuml-syntax" }
  use { "tyru/open-browser.vim" }
  use {
    "weirongxu/plantuml-previewer.vim",
    -- config = require("config.plantuml-previewer")
  }

  -- platformio
  use {
    'anurag3301/nvim-platformio.lua',
    -- config = require("config.platformio"),
    requires = {
      {'akinsho/nvim-toggleterm.lua'},
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/plenary.nvim'},
      -- {'folke/which-key.nvim'},
    }
  }

  -- discord nvim
  use {
    'vyfor/cord.nvim',
    run = ':Cord update',
    config = require("config.cord")
  }

  -- github copilot
  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    config = require("config.CopilotChat"),
    requires = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    run = "make tiktoken",
  }
end)
