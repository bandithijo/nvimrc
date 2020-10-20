if exists('g:plugs["defx-git"]')
    call defx#custom#column('git', 'column_length', 1)

    call defx#custom#column('git', 'raw_mode', 0)

    call defx#custom#column('git', 'indicators', {
        \ 'Modified'  : 'M',
        \ 'Staged'    : '+',
        \ 'Untracked' : '*',
        \ 'Renamed'   : 'R',
        \ 'Unmerged'  : '=',
        \ 'Ignored'   : 'i',
        \ 'Deleted'   : 'X',
        \ 'Unknown'   : '?'
        \ })
endif
