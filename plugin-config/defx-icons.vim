let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length           = 2
let g:defx_icons_directory_icon          = ''
let g:defx_icons_mark_icon               = ''
let g:defx_icons_copy_icon               = ''
let g:defx_icons_move_icon               = ''
let g:defx_icons_parent_icon             = ''
let g:defx_icons_default_icon            = ''
let g:defx_icons_directory_symlink_icon  = ''

" Options below are applicable only when using 'tree' feature
let g:defx_icons_draw_tree_structure     = 1
let g:defx_icons_root_opened_tree_icon   = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

" Define the default higlight color for defx-icons
hi default link DefxIconsMarkIcon         Statement
hi default link DefxIconsCopyIcon         WarningMsg
hi default link DefxIconsMoveIcon         ErrorMsg
hi default link DefxIconsDirectory        Directory
hi default link DefxIconsParentDirectory  Directory
hi default link DefxIconsSymlinkDirectory Directory
hi default link DefxIconsOpenedTreeIcon   Directory
hi default link DefxIconsNestedTreeIcon   Directory
hi default link DefxIconsClosedTreeIcon   Directory
