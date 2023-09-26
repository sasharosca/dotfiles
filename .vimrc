" general options
set number

" colors
"syntax enable
"colorscheme monokai

" formatting
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" plugins
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-python/python-syntax'
Plug 'nvie/vim-flake8'

Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'

call plug#end()

" ycm options
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:loaded_youcompleteme = 1

" flake8 options

" Enableble vim-flake8
let g:flake8_enabled = 1
let g:flake8_show_in_file = 1

" Set error highlighting colors
highlight Flake8Error ctermbg=red guibg=lightcoral
highlight Flake8Warning ctermbg=yellow guibg=khaki
