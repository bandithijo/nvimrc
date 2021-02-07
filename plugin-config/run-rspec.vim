" Usage
" Hit the commands to run rspec.
"   :RunSpec --- for running the current rspec file (or auto detecting the rspec file for the current file)
"   :RunSpecLine --- for running the spec under the cursor
"   :RunSpecLastRun --- for re-running the last rspec
"   :RunSpecCloseResult --- for closing the result window (from other window)

" Result window
" Some useful key mappings will be bound in the result buffer.
"    Enter ... Jump to the line in the rspec where the failure under the cursor occurred
"    e ... Jump to the line (the same as hitting Enter) and close the result window.
"    n ... Go to the next failure
"    p ... Go to the previous failure
"    q ... Close the result window

" g:run_rspec_result_lines
" Set number of the result buffer lines.
" default: 15
" Ex)
" let g:run_rspec_result_lines = 20
let g:run_rspec_result_lines = 20

" Spec file
highlight rspecFile               ctermfg=4     cterm=underline

" Progress line like ....FF.FF.F..
highlight rspecProgressPassed     guifg=#859900 cterm=bold
highlight rspecProgressFailure    guifg=#DC322F cterm=bold
highlight rspecProgressPending    guifg=#B58900 cterm=bold

" Summary
highlight rspecSummaryAllPassed   guifg=#859900 cterm=bold
highlight rspecSummaryHasPending  guifg=#B58900 cterm=bold
highlight rspecSummaryHasFailures guifg=#DC322F cterm=bold
