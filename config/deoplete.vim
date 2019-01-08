" Plugin configuration: deoplete
" ==============================================================================

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 1
set completeopt=menuone,preview,noselect

" Close top window when complete is finished.
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
