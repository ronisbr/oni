" Plugin configuration: vim-latex
" ==============================================================================

let g:Tex_DefaultTargetFormat    = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'
let g:Tex_CompileRule_pdf        = 'pdflatex -interaction=nonstopmode -synctex=1'
let g:tex_conceal                = ""

" Enable advanced math.
" This is necessary for key mappings like <M-b> => \mathbf{}.
let g:Tex_AdvancedMath = 1

" Switch to `pdflatex`.
function SetpdfLaTeX()
    let g:Tex_CompileRule_pdf = 'pdflatex --interaction=nonstopmode -synctex=1'
endfunction

" Switch to `xetex`.
function SetXeLaTeX()
    let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode -synctex=1'
endfunction

augroup FileType_LaTeX
    " Remove color column when editing LaTeX files.
    autocmd FileType tex setlocal colorcolumn=0

    " Don't physically wrap the text when editing LaTeX files.
    autocmd FileType tex setlocal textwidth=0

    " Mappings for .tex.
    autocmd FileType tex noremap <Leader>lcp :<C-U>call SetpdfLaTeX()<CR>
    autocmd FileType tex noremap <Leader>lcx :<C-U>call SetXeLaTeX()<CR>
augroup END

" Options that depend on the OS
" =============================

if has('osx') || has('macunix')
    let g:Tex_ViewRule_pdf = 'Skim'
elseif has('unix')
    let g:Tex_ViewRule_pdf = 'evince'
endif
