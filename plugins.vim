" Dein configuration
" ==================

let g:dein#enable_notification = 1

if dein#load_state(expand(conf_dir . 'dein'))
    call dein#begin(expand(conf_dir . 'dein'))

    call dein#add('godlygeek/tabular')
    call dein#add('JuliaEditorSupport/julia-vim')
    call dein#add('justinmk/vim-sneak')
    call dein#add('ntpeters/vim-better-whitespace')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('sirver/ultisnips')
    call dein#add('tpope/vim-fugitive')
    call dein#add('vim-scripts/YankRing.vim')

    " Plugins with lazy load.
    call dein#add('ctrlpvim/ctrlp.vim',
                \ { 'hook_post_source': 'exe "source "' . conf_dir . 'config_lazy/ctrlp.vim',
                \   'on_cmd':           'CtrlP'})

    call dein#add('mbbill/undotree',
                \ { 'on_cmd':           'UndotreeToggle'})

    call dein#add('terryma/vim-multiple-cursors',
                \ { 'hook_post_source': 'exec "source "' . conf_dir . 'config_lazy/vim-multiple-cursors.vim',
                \   'on_map':           '<C-n>'})

    call dein#add('vim-latex/vim-latex',
                \ { 'hook_source':      'exec "source "' . conf_dir . 'config_lazy/vim-latex.vim',
                \   'on_ft':            ['bibtex', 'tex', 'plaintex']})

    call dein#end()

    call dein#save_state()
endif

call dein#call_hook('source')
call dein#call_hook('post_source')

filetype plugin indent on
syntax   on

" Load local plugins
" ==================

exe 'source ' . conf_dir . 'local_plugins/dragvisuals.vim'
