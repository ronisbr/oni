" General configuration
" ==============================================================================

" Folders to store backups, undo files, and swap files.
let g:data_dir   = g:conf_dir . 'data/'
let g:backup_dir = g:data_dir   . 'backup'
let g:swap_dir   = g:data_dir   . 'swap'
let g:undo_dir   = g:data_dir   . 'undo'

if finddir(g:data_dir) ==# ''
    silent call mkdir(g:data_dir)
endif

if finddir(g:backup_dir) ==# ''
    silent call mkdir(g:backup_dir)
endif

if finddir(g:swap_dir) ==# ''
    silent call mkdir(g:swap_dir)
endif

if finddir(g:undo_dir) ==# ''
    silent call mkdir(g:undo_dir)
endif

set backup
let &backupdir=data_dir . 'backup'

let &directory=data_dir . 'swap'

set undofile
set undolevels=1000
set undoreload=10000
let &undodir=data_dir. 'undo'

unlet g:data_dir
unlet g:backup_dir
unlet g:swap_dir
unlet g:undo_dir

" Set hidden.
set hidden

" Use smart indent.
set smartindent

" Set indents width.
set softtabstop=4

" Text width = 80
set textwidth=80

" Do not use TABS.
set tabstop=4
set shiftwidth=4
set expandtab

" Set comments mark.
set comments +=fb:-,fb:_

" Set line numbers.
set number
set relativenumber

" Set cursor line.
set cursorline

" Configure search behaviour.
set ignorecase
set smartcase

" More natural splits.
set splitbelow
set splitright

" Set wrapping.
set wrap linebreak nolist

" Enable use of mouse in all modes.
set mouse=a
