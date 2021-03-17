" Basic

set encoding=UTF-8
set t_Co=256                           " set terminal 256 color
set nocompatible                       " be iMproved, required
set termguicolors
syntax enable
filetype plugin indent on

" General
set backspace=indent,eol,start         " make backspace a more flexible
set backup                             " make backup files
set backupdir=~/.local/share/nvim/tmp/backup " where to put backup files
set directory=~/.local/share/nvim/tmp/swap   " directory to place swap files in
set viewdir=~/.local/share/nvim/tmp/view     " directory to place view files in
set undodir=~/.local/share/nvim/tmp/undo     " directory to place undo files in
set undofile                           " make undo possible after the file is closed and reopened
set clipboard=unnamedplus              " share clipboard (unnamedplus)
set hidden                             " you can change buffers without saving
set mouse=n                            " use mouse everywhere default a
set noerrorbells                       " don't make noise
set wildmenu                           " turn on command line completion wild style
set wildmode=full
set ttyfast                            " i have a fast terminal
set gdefault                           " global substitutions are default s/a/b/g
set ttimeoutlen=0                      " make Esc work faster
set autoread                           " make vim monitor realtime changes to a file
set modifiable

" Splits open at the bottom and right
set splitbelow splitright

au CursorHold,CursorHoldI * checktime  " auto update trigger when cursor stops moving
au FocusGained,BufEnter   * checktime  " auto update trigger on buffer change or terminal focus

" restore cursor position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

" Make views automatic
"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview

" I love cursor with block shape very much!
" Although, neovim change cursor to beam when on insert mode,
" I want to keep with block shape =P
set guicursor=n-v-c:block

" Redrawtime for LSP (default 2000)
" Time in milliseconds for redrawing the display.
" Applies to 'hlsearch', 'inccommand', :match highlighting and
" syntax highlighting.
set redrawtime=2000

" Automatically deletes all trailing whitespace on save.
" I need to disable this because of colaborative work, need to manual execute.
" Just fine to enable it, if you need.
"autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Disable relative number on Terminal
"autocmd TermOpen * setlocal nonumber norelativenumber
