" Basic
set encoding=UTF-8
set t_Co=256                   " set terminal 256 color
set nocompatible               " be iMproved, required
syntax enable
filetype plugin indent on

" Interface
colorscheme codedark
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
set fillchars+=vert:\| "split character between window"
set foldmethod=manual
set foldlevel=0 " default unfold when open a file
set shortmess=aAtToO " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmode " show current mode
set showmatch " show matching brackets
"set scrolloff=5 " keep 10 lines (top/bottom) for scope
"set sidescrolloff=10 " keep 5 lines at the size
set cursorline " visually mark current line
"set showbreak=↪ " indicate wrapped line
hi clear ModeMsg " disable Color StatusLine on Insert Mode and Visual Mode
highlight clear SignColumn
hi HighlightedyankRegion term=bold ctermfg=0 ctermbg=3
if &diff " change colorscheme when using vimdiff
  colorscheme codedark
endif

" General
set backspace=indent,eol,start " make backspace a more flexible
set backup " make backup files
set backupdir=~/.local/share/nvim/tmp/backup " where to put backup files
set directory=~/.local/share/nvim/tmp/swap " directory to place swap files in
set undodir=~/.local/share/nvim/tmp/undo " directory to place undo files in
set undofile " make undo possible after the file is closed and reopened
set clipboard=unnamedplus " share clipboard (unnamedplus)
set hidden " you can change buffers without saving
set mouse=n " use mouse everywhere default a
set noerrorbells " don't make noise
set wildmenu " turn on command line completion wild style
set wildmode=full
set ttyfast " i have a fast terminal
set gdefault " global substitutions are default s/a/b/g
set ttimeoutlen=0  " make Esc work faster
set autoread " make vim monitor realtime changes to a file
set modifiable

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

au CursorHold,CursorHoldI * checktime " auto update trigger when cursor stops moving
au FocusGained,BufEnter * :checktime  " auto update trigger on buffer change or terminal focus

" for italic on tmux
set t_ZH=[3m
set t_ZR=[23m

" restore cursor position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" Make views automatic
autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

" terminal
:tnoremap <Esc> <C-\><C-n>
augroup custom_term
    autocmd!
"    autocmd TermOpen * setlocal bufhidden=hide
    autocmd TermOpen term://* startinsert
augroup END
function! Term()
  bot 15split | terminal
endfunction
command! Terminal :call Term()
