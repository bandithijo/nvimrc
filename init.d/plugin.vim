" Plugin Manager : vim-plug
" Source : https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

" A file explorer tree for neovim written in lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" A lightweight plugin to display the list of buffers in the lightline vim plugin
Plug 'mengelbrecht/lightline-bufferline'

" A trailing whitespace component for the lightline vim plugin
Plug 'maximbaz/lightline-trailing-whitespace'

" ALE indicator for the lightline vim plugin
Plug 'maximbaz/lightline-ale'

" Git signs written in pure lua.
Plug 'lewis6991/gitsigns.nvim'

" fugitive.vim: A Git wrapper so awesome, it should be illegal.
Plug 'tpope/vim-fugitive'

" rhubarb.vim: GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'

" A Find, Filter, Preview, Pick. All lua, all the time.
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" FZY style sorter that is compiled
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'

" rsi.vim: Readline style insertion
"Plug 'tpope/vim-rsi'

" ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim)*
Plug 'tpope/vim-ragtag'

" Viewer & Finder for LSP symbols and tags
Plug 'liuchengxu/vista.vim'

" Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
Plug 'numToStr/Comment.nvim'

" Vim plugin which provides sgml (xml, html, etc.) end tag completion. autoclose tag </
Plug 'ervandew/sgmlendtag'

" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
Plug 'plasticboy/vim-markdown'

" A markdown preview plugin for (neo)vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" Vim Liquid runtime files with Jekyll enhancements.
Plug 'tpope/vim-liquid'

" A Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" rails.vim: Ruby on Rails power tools
Plug 'tpope/vim-rails'

" Vim/Ruby Configuration Files
Plug 'vim-ruby/vim-ruby'

" Highlight eruby code blocks within html.
Plug 'vim-scripts/eruby.vim'

" bundler.vim: Lightweight support for Ruby's Bundler
Plug 'tpope/vim-bundler'

" rake.vim: it's like rails.vim without the rails
Plug 'tpope/vim-rake'

" Run your tests at the speed of thought
Plug 'vim-test/vim-test'

" A Indent guides on blank lines for Neovim
Plug 'lukas-reineke/indent-blankline.nvim'

" A Typescript syntax files for Vim
"Plug 'leafgarland/typescript-vim'

" A JSX syntax pretty highlighting for vim.
"Plug 'maxmellon/vim-jsx-pretty'

" A Vim runtime files for Haml, Sass, and SCSS
Plug 'tpope/vim-haml'

" Text outlining and task management for Vim based on Emacs' Org-Mode
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating'
"Plug 'vim-scripts/utl.vim'

" Orgmode clone written in Lua for Neovim 0.5.
Plug 'kristijanhusak/orgmode.nvim'

" A open source plugins for automatic programming metrics
Plug 'wakatime/vim-wakatime'

" A hexokinase.vim - (Neo)Vim plugin for asynchronously displaying the colours in the file (#rrggbb, #rgb, rgb(a)?
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" A surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" A The Vim RuboCop plugin runs RuboCop and displays the results in Vim
Plug 'ngmy/vim-rubocop'

" A Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'

" A Vim plugin for quick opening plugin's page on Github
Plug 'xvadim/open_plugin_page'

" A Switch between single-line and multiline forms of code
Plug 'AndrewRadev/splitjoin.vim'

" A git blame plugin for neovim inspired by VS Code's GitLens plugin
Plug 'APZelos/blamer.nvim'

" A Save vim undo files as /path/to/file instead of %path%to%file.
Plug 'pixelastic/vim-undodir-tree'

" REPLs play nicely with :terminal on Vim and Neovim
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

" The interactive scratchpad for hackers.
Plug 'metakirby5/codi.vim'

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" Change an HTML(ish) opening tag and take the closing one along as well
Plug 'AndrewRadev/tagalong.vim'

" Nvim Treesitter configurations and abstraction layer
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Auto close parentheses and repeat by dot dot dot...
Plug 'cohama/lexima.vim'

" Asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'

" Breakdown Vim's --startuptime output
Plug 'tweekmonster/startuptime.vim'

" Vim plugin to edit binary files in a hex mode automatically.
Plug 'fidian/hexmode'

" vim-snipmate default snippets (Previously snipmate-snippets)
Plug 'honza/vim-snippets'

" Terminal manager for (neo)vim
Plug 'voldikss/vim-floaterm'

" A neovim port of Assorted Biscuits. Ends up with more supported languages too.
" Plug 'code-biscuits/nvim-biscuits'

" A VIM Table Mode for instant table creation.
Plug 'dhruvasagar/vim-table-mode'

" Zeal for Vim
Plug 'KabbAmine/zeavim.vim'

" Asciidoctor plugin for Vim
Plug 'habamax/vim-asciidoctor'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" A (Neo)vim plugin for formatting code.
Plug 'sbdchd/neoformat'

call plug#end()
