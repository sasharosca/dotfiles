" general options
set number
set completeopt-=preview

let loaded_matchparen = 1

" colors
" syntax enable
" colorscheme monokai

" formatting
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set listchars=space:·
set list

set signcolumn=yes

set backspace=start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'vim-python/python-syntax'
"Plug 'nvie/vim-flake8'

"Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'

"Plug 'rust-lang/rust.vim'

Plug 'Yggdroot/indentLine'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'peitalin/vim-jsx-typescript'

Plug 'github/copilot.vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ycm options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_auto_hover = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flake8 options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enableble vim-flake8
let g:flake8_enabled = 1
let g:flake8_show_in_file = 1

" Set error highlighting colors
highlight Flake8Error ctermbg=red guibg=lightcoral
highlight Flake8Warning ctermbg=yellow guibg=khaki

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indentLine options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '│'
let g:indentLine_defaultGroup = 'SpecialKey'
