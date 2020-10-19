" Keyboard Mappings

" my leader key is comma
let mapleader = ","
let maplocalleader = ','

" for edit my .vimrc
nmap <silent> <leader>ev :e ~/.config/nvim/README.md<cr>
                       \ :cd %:p:h<cr>
                       \ :cal cursor(1,1)<cr>
                       \ :Defx<cr>

" source vimrc
nmap <leader>so :source $MYVIMRC<cr>

" for switch & delete buffer
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nnoremap <leader>bd :bp<cr>:bd! #<cr>

" for switch & close tabs
nmap <leader><S-n> :tabnext<cr>
nmap <leader><S-p> :tabprev<cr>
nnoremap <leader><S-t><S-d> :tabclose<cr>

" this key combination gets rid of the search highlights
nmap <silent> <leader>nh :noh<cr>

" for clear highlight search
nmap <silent> <leader>nh :nohlsearch<cr>

" strip all trailing whitespace in the current file
nmap <silent> <leader>W :StripWhitespace<cr>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>C :w! \| !compiler <c-r>%<CR>

" Remap exit from terminal mode
tnoremap <Esc> <C-\><C-n>

" keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" another way to esc mode
imap jj <Esc>

" I hit F1 too often when reaching esc button
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Defx Sidebar
nmap <F12> :Defx -winwidth=40 -split='vertical' -direction='topleft'<cr>

" Defx fullwindow
nmap <C-n> :Defx<cr>
autocmd FileType defx nnoremap <silent><buffer><expr> <C-n> defx#do_action('quit')

" for move focus to each split
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

" sudo save
cmap w!! w !sudo tee % >/dev/null

" quit all without save
nmap :Q :qa!

" for page up & page down
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz

" taglist for org-mode
autocmd FileType org nmap <buffer> <F11> :TlistToggle<cr>

" toggle Tagbar plugin
nmap <F11> :TagbarToggle<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" fzf.vim
nmap <C-p> :Buffers<cr>
"nmap <C-f> :FZF<cr>
nmap <C-f> :Files<cr>

" prevent Vim scrolling when splitting a window
nnoremap <C-W>s Hmx`` \|:split<CR>`xzt``

" change current directory with open buffer as refference
nmap <silent> <leader>cd :cd %:p:h<cr>

" clean yank history
nmap <silent> <leader>cl :CocCommand yank.clean<cr>

" load view
nmap <silent> <leader>lv :loadview<cr>

" increment visual select with: Visual block then g C-a
" demo: https://t.me/VimID/21773
function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

" toggle for markdown checkbox with <leader>tt remap to <leader>cc
au FileType markdown map <silent> <leader>cc :call checkbox#ToggleCB()<cr>
