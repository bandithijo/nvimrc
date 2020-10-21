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

    hi Defx_git_Untracked ctermfg=214 ctermbg=NONE
    hi Defx_git_Ignored   ctermfg=214 ctermbg=NONE
    hi Defx_git_Unknown   ctermfg=214 ctermbg=NONE
    hi Defx_git_Renamed   ctermfg=214 ctermbg=NONE
    hi Defx_git_Modified  ctermfg=214 ctermbg=NONE
    hi Defx_git_Unmerged  ctermfg=214 ctermbg=NONE
    hi Defx_git_Deleted   ctermfg=214 ctermbg=NONE
    hi Defx_git_Staged    ctermfg=214 ctermbg=NONE
endif
