" General configuration
" ==============================================================================

" Folders to store backups, undo files, and swap files.
let g:backup_dir = g:share_dir   . 'backup'
let g:swap_dir   = g:share_dir   . 'swap'
let g:undo_dir   = g:share_dir   . 'undo'

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
let &backupdir=g:backup_dir

let &directory=g:swap_dir

set undofile
set undolevels=1000
set undoreload=10000
let &undodir=g:undo_dir

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

" Show column one character after the text width.
set colorcolumn=+1
