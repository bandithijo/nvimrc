" Filename:    diffchanges.vim
" Description: Shows the changes made to the current buffer.
" Maintainer:  Jeremy Cantrell <jmcantrell@gmail.com>

if exists("g:diffchanges_loaded")
    finish
endif

let g:diffchanges_loaded = 1

let g:diffchanges_diff = []
let g:diffchanges_patch = []
let s:diffchanges_modes = ['diff', 'patch']

if !exists('g:diffchanges_patch_cmd')
    let g:diffchanges_patch_cmd = 'diff -u'
endif

let s:save_cpo = &cpo
set cpo&vim

command! -bar -complete=file -nargs=? DiffChanges :call s:DiffChanges(<q-args>)
command! -bar DiffChangesDiffToggle :call s:DiffChangesToggle('diff')
command! -bar DiffChangesPatchToggle :call s:DiffChangesToggle('patch')

nnoremenu <script> &Plugin.&DiffChanges.&Write\ Patch  <SID>DiffChanges
nnoremenu <script> &Plugin.&DiffChanges.&Diff\ Toggle  <SID>DiffChangesDiffToggle
nnoremenu <script> &Plugin.&DiffChanges.&Patch\ Toggle <SID>DiffChangesPatchToggle

function! s:GetDiff() "{{{1
    let filename = expand('%')
    let diffname = tempname()
    execute 'silent w! '.diffname
    let diff = system(g:diffchanges_patch_cmd.' '.shellescape(filename).' '.diffname)
    call delete(diffname)
    return diff
endfunction

function! s:GetPatchFilename(filename) "{{{1
    return a:filename.'.'.strftime('%Y%m%d%H%M%S').'.patch'
endfunction

function! s:DiffChanges(...) "{{{1
    if a:0 == 0 || len(a:1) == 0
        let filename = s:GetPatchFilename(expand('%'))
    else
        let filename = a:1
    endif
    let diff = s:GetDiff()
    call writefile(split(diff, '\n'), filename)
    echo 'Patch written to "'.filename.'"'
endfunction

function! s:DiffChangesToggle(mode) "{{{1
    if count(s:diffchanges_modes, a:mode) == 0
        call s:Warn("Invalid mode '".a:mode."'")
        return
    endif
    if len(expand('%')) == 0
        call s:Warn("Unable to show changes for unsaved buffer")
        return
    endif
    let [dcm, pair] = s:DiffChangesPair(bufnr('%'))
    if count(s:diffchanges_modes, dcm) == 0
        call s:DiffChangesOn(a:mode)
    else
        call s:DiffChangesOff()
    endif
endfunction

function! s:DiffChangesOn(mode) "{{{1
    if count(s:diffchanges_modes, a:mode) == 0
        return
    endif
    let filename = expand('%')
    let buforig = bufnr('%')
    let diff = s:GetDiff()
    if len(diff) == 0
        call s:Warn('No changes found')
        return
    endif
    if a:mode == 'diff'
        let b:diffchanges_savefdm = &fdm
        let b:diffchanges_savefdl = &fdl
        let save_ft=&ft
        diffthis
        1
        vert new
        let &ft=save_ft
        execute '0read '.filename
        diffthis
        1
        set buftype=nofile
        let bufname = "Changes made to '".filename."'"
    elseif a:mode == 'patch'
        below new
        setlocal filetype=diff
        setlocal foldmethod=manual
        silent 0put=diff
        1
        let bufname = s:GetPatchFilename(filename)
    endif
    silent file `=bufname`
    autocmd BufUnload <buffer> call s:DiffChangesOff()
    let bufdiff = bufnr('%')
    call add(g:diffchanges_{a:mode}, [buforig, bufdiff])
endfunction

function! s:DiffChangesOff() "{{{1
    let [dcm, pair] = s:DiffChangesPair(bufnr('%'))
    execute 'autocmd! BufUnload <buffer='.pair[1].'>'
    execute 'bdelete! '.pair[1]
    execute bufwinnr(pair[0]).'wincmd w'
    if dcm == 'diff'
        diffoff
        let &fdm = b:diffchanges_savefdm
        let &fdl = b:diffchanges_savefdl
    endif
    let dcp = g:diffchanges_{dcm}
    call remove(dcp, index(dcp, pair))
endfunction

function! s:DiffChangesPair(buf_num) "{{{1
    for dcm in s:diffchanges_modes
        let pairs = g:diffchanges_{dcm}
        for pair in pairs
            if count(pair, a:buf_num) > 0
                return [dcm, pair]
            endif
        endfor
    endfor
    return [0, 0]
endfunction

function! s:Warn(message) "{{{1
    echohl WarningMsg | echo a:message | echohl None
endfunction

function! s:Error(message) "{{{1
    echohl ErrorMsg | echo a:message | echohl None
endfunction

"}}}

let &cpo = s:save_cpo
