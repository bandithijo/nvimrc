" Interface
colorscheme Tomorrow-Night-Bandit
set background=dark
set incsearch " incremental search aka search as you type
set hlsearch " highlight search matches
set ignorecase " ignore case
set smartcase " but when the query starts with upper character be case sensitive
set laststatus=2 " always show the status line, vim 1, neovim 2
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines between rows
set list " no show traling listchars
set listchars=tab:  ,trail:·,extends:>,precedes:<
"set listchars=tab:▸\ ,eol:$,trail:¬,extends:❯,precedes:❮,nbsp:~
set nostartofline " don't move the cursor to first non-blank character after some command    s (:25 e.g.)
set novisualbell " don't blink
set nu " turn on line number on selected line
set relativenumber " turn on line numbers
set report=0 " tell us when anything is changed
set ruler " always show current positions along the bottom
set foldmethod=manual
set foldlevel=0 " default unfold when open a file
set shortmess=aAtToO " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmode " show current mode
set showmatch " show matching brackets
set scrolloff=5 " keep 10 lines (top/bottom) for scope
set sidescrolloff=10 " keep 5 lines at the size
set cursorline " visually mark current line
"set showbreak=↪ " indicate wrapped line
hi clear ModeMsg " disable Color StatusLine on Insert Mode and Visual Mode
highlight clear SignColumn
hi HighlightedyankRegion term=bold ctermfg=0 ctermbg=3
if &diff " change colorscheme when using vimdiff
  colorscheme Tomorrow-Night-Bandit
endif
