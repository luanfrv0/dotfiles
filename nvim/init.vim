" colorscheme
syntax on
syntax enable
packadd! dracula_pro
let g:dracula_colorterm = 0
colorscheme dracula_pro

hi ColorColumn ctermbg=234
hi CursorLine ctermbg=233
hi DraculaTodo cterm=none

" Visual settings
set number
set relativenumber
set numberwidth=1
set cursorline

filetype indent plugin on

set clipboard=unnamed,unnamedplus
set splitright
set splitbelow
set wrap
set linebreak
set noswapfile
set nobackup
set nowritebackup
set autowrite
set textwidth=80
set colorcolumn=81
set autoindent
set incsearch
set hlsearch

" Indentation settings
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set shiftround " Round indent to multiple of shiftwidth
autocmd FileType python,php set softtabstop=4 shiftwidth=4

" tks @philss for the mappings below 👍(from https://github.com/philss/dotfiles)
" Mapping <tab> to change tabs navigation
noremap <tab> :tabnext<CR>
noremap <S-tab> :tabprevious<CR>

nnoremap fj <esc>
inoremap fj <esc>
vnoremap fj <esc>

let mapleader = "-"

" Make splits navigation easies
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h

" Auto close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w!<cr>
