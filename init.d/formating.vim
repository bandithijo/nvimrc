" Interface
set background=dark
colorscheme solarized8_flat_bandit
set incsearch                 " incremental search aka search as you type
set hlsearch                  " highlight search matches
set ignorecase                " ignore case
set smartcase                 " but when the query starts with upper character be case sensitive
set laststatus=2              " always show the status line, vim 1, neovim 2
set lazyredraw                " do not redraw while running macros
set linespace=0               " don't insert any extra pixel lines between rows
"set list                     " no show traling listchars
set listchars=tab:\ ,trail:·,extends:>,precedes:<
"set listchars=tab:▸\ ,eol:$,trail:¬,extends:❯,precedes:❮,nbsp:~
set nostartofline             " don't move the cursor to first non-blank character after some command
set novisualbell              " don't blink
set nu                        " turn on line number on selected line
set relativenumber            " turn on line numbers
set report=0                  " tell us when anything is changed
set ruler                     " always show current positions along the bottom
set fillchars+=eob:\ ,vert:\| " vertical sparator and en of buffer
set foldmethod=manual
set foldlevel=0               " default unfold when open a file
set shortmess=aAtToO          " shortens messages to avoid 'press a key' prompt
set showcmd                   " show the command being typed
set showmode                  " show current mode
set showmatch                 " show matching brackets
"set scrolloff=5              " keep 10 lines (top/bottom) for scope
"set sidescrolloff=10         " keep 5 lines at the size
set cursorline                " visually mark current line
"set showbreak=↪              " indicate wrapped line
hi clear ModeMsg              " disable Color StatusLine on Insert Mode and Visual Mode
highlight clear SignColumn

if &diff                      " change colorscheme when using vimdiff
  colorscheme solarized8_flat_bandit
endif

" Text Formating
set wrap                      " wrap text
"set textwidth=80             " to 80 characters
set colorcolumn=80            " and warn me if my line gets over 85 characters
set formatoptions=cqt         " see :help fo-table
set infercase                 " case inferred by default
set shiftround                " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
set expandtab                 " no real tabs please!
set shiftwidth=4              " auto-indent amount when using >> <<
set softtabstop=4             " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=4                 " real tabs should be 4, and they will show with set list on
set autoindent
"set smartindent
set conceallevel=0
