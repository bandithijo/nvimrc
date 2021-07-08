" ASCIIDOCTOR
" What to use for HTML, default `asciidoctor`.
let g:asciidoctor_executable = 'asciidoctor'

" What extensions to use for HTML, default `[]`.
let g:asciidoctor_extensions = ['asciidoctor-diagram', 'asciidoctor-rouge']

" Path to the custom css
"let g:asciidoctor_css_path = '~/docs/AsciiDocThemes'

" Custom css name to use instead of built-in
let g:asciidoctor_css = 'haba-asciidoctor.css'

" ASCIIDOCTOR-PDF
" What to use for PDF, default `asciidoctor-pdf`.
let g:asciidoctor_pdf_executable = 'asciidoctor-pdf'

" What extensions to use for PDF, default `[]`.
let g:asciidoctor_pdf_extensions = ['asciidoctor-diagram']

" Path to PDF themes, default `''`.
"let g:asciidoctor_pdf_themes_path = '~/docs/AsciiDocThemes'

" Path to PDF fonts, default `''`.
"let g:asciidoctor_pdf_fonts_path = '~/docs/AsciiDocThemes/fonts'

" ASCIIDOCTOR-DOCX
" What to use for DOCX, default `pandoc`.
" The DOCX 'compilation' process is to generate `docbook` using
" `g:asciidoctor_executable` and then to generate DOCX out of `docbook`
" using `pandoc`.
let g:asciidoctor_pandoc_executable = 'pandoc'

"" --data-dir
"let g:asciidoctor_pandoc_data_dir = '~/docs/.pandoc'

" Other parameters you want to feed pandoc
let g:asciidoctor_pandoc_other_params = '--toc'

" Reference document to reuse styles
" If not set up asciidoctor looks for the theme name
" :pdf-style: mytheme
" in the first 30 lines and generate reference-doc filename:
" g:asciidoctor_pandoc_data_dir + mytheme + '-reference.docx'
" for example: ~/docs/.pandoc/mytheme-reference.docx
"let g:asciidoctor_pandoc_reference_doc = 'custom-reference.docx'

" FOLDING
" Fold sections, default `0`.
let g:asciidoctor_folding = 0

" Fold options, default `0`.
let g:asciidoctor_fold_options = 0

" SYNTAX
" Conceal *bold*, _italic_, `code` and urls in lists and paragraphs, default `0`.
" See limitations in end of the README
let g:asciidoctor_syntax_conceal = 0

" Highlight indented text, default `1`.
let g:asciidoctor_syntax_indented = 1

" List of filetypes to highlight, default `[]`
let g:asciidoctor_fenced_languages = ['ruby', 'python', 'c', 'javascript']

" MAPPINGS
" Function to create buffer local mappings and add default compiler
fun! AsciidoctorMappings()
    nnoremap <buffer> <leader>oo :AsciidoctorOpenRAW<CR>
    nnoremap <buffer> <leader>op :AsciidoctorOpenPDF<CR>
    nnoremap <buffer> <leader>oh :AsciidoctorOpenHTML<CR>
    nnoremap <buffer> <leader>ox :AsciidoctorOpenDOCX<CR>
    nnoremap <buffer> <leader>ch :Asciidoctor2HTML<CR>
    nnoremap <buffer> <leader>cp :Asciidoctor2PDF<CR>
    nnoremap <buffer> <leader>cx :Asciidoctor2DOCX<CR>
    nnoremap <buffer> <leader>p :AsciidoctorPasteImage<CR>
    " :make will build pdfs
    compiler asciidoctor2pdf
endfun

" Call AsciidoctorMappings for all `*.adoc` and `*.asciidoc` files
augroup asciidoctor
    au!
    au BufEnter *.adoc,*.asciidoc call AsciidoctorMappings()
augroup END


" COMMANDS
" All commands are buffer local — available only for asciidoctor files (set filetype=asciidoctor)
" Asciidoctor2HTML — convert current file to HTML.
" Asciidoctor2PDF — convert current file to PDF.
" Asciidoctor2DOCX — convert current file to DOCX.
" AsciidoctorOpenRAW — open current file in a browser. Chrome and Firefox has extentsions to render barebone adoc files.
" AsciidoctorOpenPDF — open PDF of the current file using default PDF viewer.
" AsciidoctorOpenHTML — open HTML of the current file using default web browser.
" AsciidoctorOpenDOCX — open DOCX of the current file using default DOCX viewer. (I haven’t tried it with LibreOffice or whatever else there might be. Also haven’t tried it on linux and OSX…)

" NOTE
" Command Asciidoctor2HTML, Asciidoctor2PDF should convert files if asciidoctor and asciidoctor-pdf are installed.
" Command Asciidoctor2DOCX should also have pandoc installed.
