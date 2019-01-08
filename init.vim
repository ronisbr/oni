" Configuration directory.
let g:conf_dir=$HOME . '/.config/oni/'

" Configure dein - plugin manager.
if has('vim_starting')
    if &compatible
        set nocompatible
    endif

    let &runtimepath=&runtimepath . ',' . conf_dir . 'dein/repos/github.com/Shougo/dein.vim'
endif

exe 'source ' . conf_dir . 'plugins.vim'

" Configurations.
for fpath in split(globpath(conf_dir . 'config/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" Syntax.
for fpath in split(globpath(conf_dir . 'syntax/', '*.vim'), '\n')
    exe 'source' fpath
endfor

" Jump to the last position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
