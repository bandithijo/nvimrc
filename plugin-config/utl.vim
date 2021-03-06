" Firefox
" Check if an instance is already running, and if yes use it, else start firefox.
"let g:utl_cfg_hdl_scm_http_system    = ':silent !xdg-open "%u" &'
let g:utl_cfg_hdl_scm_http_system    = ':silent !qutebrowser "%u" &'

" PDF
let g:utl_cfg_hdl_mt_application_pdf = ':silent !xdg-open "%p" &'

" DIR
let g:utl_cfg_hdl_mt_text_directory  = ':silent !st -e ranger "%p" &'

" VIDEO
let g:utl_cfg_hdl_mt_video_mpeg      = ':silent !xdg-open "%p" &'

" AUDIO
let g:utl_cfg_hdl_mt_audio_mpeg      = ':silent !xdg-open "%p" &'
let g:utl_cfg_hdl_mt_audio_ogg       = ':silent !xdg-open "%p" &'

" JPG
let g:utl_cfg_hdl_mt_image_jpeg      = ':silent !xdg-open "%p" &'
let g:utl_cfg_hdl_mt_image_png       = ':silent !xdg-open "%p" &'
let g:utl_cfg_hdl_mt_image_gif       = ':silent !xdg-open "%p" &'

" GENERIC
let g:utl_cfg_hdl_mt_generic         = ':silent !st -e ranger "%p" &'
