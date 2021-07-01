lua << EOF
require('orgmode').setup({
  org_agenda_files = {'~/org/*', '~/org/**/*'},
  org_default_notes_file = '~/org/refile.org',
})
EOF

" Open agenda prompt: <Leader>oa
" Open capture prompt: <Leader>oc
" In any orgmode buffer press ? for help
