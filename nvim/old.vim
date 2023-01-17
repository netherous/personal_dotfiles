set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable


set tags=tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
set exrc
set completeopt=menu,menuone,preview
set guicursor = ""
set mouse=a
set relativenumber
set number
set tabstop=4
set softtabstop=4

set shiftwidth=4
set guifont=Menlo\ Regular:h14

set noerrorbells
set smarttab
set showcmd
set autoindent
set smartindent
set cindent
set clipboard=unnamedplus
set nohlsearch
set incsearch
set nobackup
set noswapfile

set laststatus=2
set path+=**
set wildmenu
set scrolloff=8
set signcolumn=yes

" set cursorline
set showcmd
set autowrite
set autoread
set textwidth=109
" set colorcolumn=110
highlight ColorColumn ctermbg= darkgray
set t_Co=256
" colorscheme gruvbox
set backspace=indent,eol,start
set nowrap
set splitbelow
set splitright
set lazyredraw



" inoremap <expr> <C-j>     pumvisible() ? "<C-n>" : "<C-j>"
" inoremap <expr> <C-k>     pumvisible() ? "<C-p>" : "<C-k>"
" inoremap <expr> <C-d>     pumvisible() ? "<PageDown><C-p><C-n>" : "<C-d>"
" inoremap <expr> <C-u>     pumvisible() ? "<PageUp><C-p><C-n>" : "<C-u>"
" inoremap <expr> <Tab>     pumvisible() ? "<C-n>" : "<Tab>"
" inoremap <expr> <S-Tab>   pumvisible() ? "<C-p>" : "<S-Tab>"
" inoremap <expr> <Esc>     pumvisible() ? (complete_info().selected == -1 ? "<Esc>" : "<C-e>")  : "<Esc>"
" inoremap <expr> <CR>      pumvisible() ? (complete_info().selected == -1 ? "<C-e><CR>" : "<C-y>") : "<CR>"

nnoremap ,tcpp :-1read ~/code/competitive_programing/comptemp1.cpp<CR>42j
nnoremap ,tpy :-1read ~/code/competitive_programing/comptemp.py<CR>5j
nnoremap ,tjava :-1read ~/code/competitive_programing/comptemp.java<CR>5j
nnoremap ,tusaco :-1read ~/Documents/C++\ Programs/tusaco.cpp<CR>47j
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzz
nnoremap N Nzz

" nnoremap ,<F2> :ALEDisable<CR>
" nnoremap ,<F3> :ALEEnable<CR>


map <F5> :<C-U>!g++ -w -O -std=c++17 % -o %:r && ./%:r <CR>
nnoremap ,t :term<CR>
nnoremap ,st :sp<bar> resize 9 <bar> term<CR>
nnoremap ,vt :vsp<bar>vert resize 55<bar>term<CR>
" nnoremap ,nerd :NERDTreeToggle<CR>
nnoremap ,nrw :Ex<CR>
" nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J mzJ`z

tnoremap <Esc> <C-\><C-n>
nnoremap <F3> :q!<CR>
nnoremap <F6> :wqall<CR>
vnoremap p "_dP

" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-s': 'split',
"   \ 'ctrl-v': 'vsplit' }
" map <C-p> :Files<CR>
" nnoremap <leader>g :Rg<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>
" nnoremap <leader>b :Buffers<CR>
" nnoremap <space>g :G<CR>
