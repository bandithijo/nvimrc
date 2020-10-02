" Plugin Manager : vim-plug
" Source : https://github.com/junegunn/vim-plug

call plug#begin('~/.local/share/nvim/plugged')

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" A lightweight plugin to display the list of buffers in the lightline vim plugin
Plug 'mengelbrecht/lightline-bufferline'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" fugitive.vim: A Git wrapper so awesome, it should be illegal.
Plug 'tpope/vim-fugitive'

" A command-line fuzzy finder.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Better whitespace highlighting for Vim.
Plug 'ntpeters/vim-better-whitespace'

" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" Vastly improved Javascript indentation and syntax support in Vim.
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'

" rsi.vim: Readline style insertion (saya pakai untuk alt+delete: menghapus 1 kata).
Plug 'tpope/vim-rsi'

" ragtag.vim: ghetto HTML/XML mappings (formerly allml.vim)*
Plug 'tpope/vim-ragtag'

" Vim plugin that displays tags in a window, ordered by scope. with F8
Plug 'majutsushi/tagbar'

" A commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" Vim plugin which provides sgml (xml, html, etc.) end tag completion. autoclose tag </
Plug 'ervandew/sgmlendtag'

" Make terminal vim and tmux work better together.
Plug 'tmux-plugins/vim-tmux-focus-events'

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

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

" A Typescript syntax files for Vim
"Plug 'leafgarland/typescript-vim'

" A JSX syntax pretty highlighting for vim.
"Plug 'maxmellon/vim-jsx-pretty'

" A Vim runtime files for Haml, Sass, and SCSS
Plug 'tpope/vim-haml'

" A Personal Wiki for Vim
Plug 'vimwiki/vimwiki'

" Text outlining and task management for Vim based on Emacs' Org-Mode
Plug 'jceb/vim-orgmode'

" (vim-orgmode need this) {{{
" Speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'vim-scripts/Vimball'

Plug 'tpope/vim-speeddating'

Plug 'chrisbra/NrrwRgn'

" A calendar vimscript
Plug 'mattn/calendar-vim'

" Source code browser plugin for Vim
Plug 'yegappan/taglist'

" Univeral Text Linking - Execute URLs, footnotes, open emails, organize ideas
Plug 'bandithijo/utl.vim'

" Vim Table Mode for instant table creation.
Plug 'dhruvasagar/vim-table-mode'
" (vim-orgmode need this) }}}

" A Automatically create any non-existent directories before writing the buffer.
Plug 'pbrisbin/vim-mkdir'

" A open source plugins for automatic programming metrics
Plug 'wakatime/vim-wakatime'

" A modern vim plugin for editing LaTeX files
Plug 'lervag/vimtex'

" A dark color scheme for Vim and vim-airline, inspired by Dark+ in Visual Studio Code
Plug 'tomasiser/vim-code-dark'

" A preview colours in source code while editing
Plug 'ap/vim-css-color'

" A Syntax Highlight for Vue.js components
Plug 'posva/vim-vue'

" A Indent guides on blank lines for Neovim
Plug 'lukas-reineke/indent-blankline.nvim'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" A trailing whitespace component for the lightline vim plugin
Plug 'maximbaz/lightline-trailing-whitespace'

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

" A Displays the results of every line of code in your file
"Plug 'hwartig/vim-seeing-is-believing'

" A The interactive scratchpad for hackers.
"Plug 'metakirby5/codi.vim'

call plug#end()
