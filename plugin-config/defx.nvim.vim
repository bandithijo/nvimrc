if exists('g:plugs["defx.nvim"]')
  autocmd FileType     defx call s:defx_my_settings()
  autocmd BufWritePost *    call defx#redraw()
  autocmd BufEnter     *    call s:open_defx_if_directory()

  call defx#custom#option('_', {
    \ 'winwidth'           : 40,
    \ 'split'              : 'vertical',
    \ 'direction'          : 'topleft',
    \ 'buffer_name'        : 'defx',
    \ 'columns'            : 'git:indent:icons:filename',
    \ 'show_ignored_files' : 0,
    \ 'toggle'             : 1,
    \ 'resume'             : 1,
    \ 'auto_cd'            : 1,
    \ })

  call defx#custom#column('icon', {
    \ 'directory_icon' : ' ',
    \ 'opened_icon'    : ' ',
    \ 'root_icon'      : ' ',
    \ })

  call defx#custom#column('filename', {
    \ 'min_width': 40,
    \ 'max_width': 1000,
    \ })

  " Open Defx when open a directory
  function! s:open_defx_if_directory()
    try
      let l:full_path = expand(expand('%:p'))
    catch
      return
    endtry

    if isdirectory(l:full_path)
      execute "Defx `expand('%:p')` | bd " . expand('%:r')
    endif
  endfunction

  function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
    \ defx#is_directory() ?
    \ defx#do_action('open_or_close_tree') : defx#do_action('drop')
    nnoremap <silent><buffer><expr> o
    \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <2-LeftMouse>
    \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <2-RightMouse>
    \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> c
    \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
    \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
    \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> V
    \ defx#do_action('drop', 'vsplit')
    nnoremap <silent><buffer><expr> S
    \ defx#do_action('drop', 'split')
    nnoremap <silent><buffer><expr> P
    \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> K
    \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
    \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
    \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> T
    \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
    \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
    \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
    \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yp
    \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
    \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
    \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> <Backspace>
    \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
    \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
    \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
    \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
    \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
    \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-r>
    \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
    \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
    \ defx#do_action('change_vim_cwd')
  endfunction
endif
