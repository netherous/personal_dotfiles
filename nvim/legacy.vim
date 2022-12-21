set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable


set tags=tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

call plug#begin("~/.nvim/plugged")
Plug 'gruvbox-community/gruvbox'

Plug 'cdelledonne/vim-cmake'
let g:cmake_generate_options = ['-DCMAKE_EXPORT_COMPILE_COMMANDS=1']

Plug 'tpope/vim-fugitive'

Plug 'machakann/vim-highlightedyank'

Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

Plug 'octol/vim-cpp-enhanced-highlight'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


" Plug 'scrooloose/nerdtree'


Plug 'itchyny/lightline.vim'


Plug 'https://github.com/tpope/vim-commentary'


Plug 'jiangmiao/auto-pairs'


Plug 'rust-lang/rust.vim'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:coc_disable_startup_warning = 1
" Plug 'dense-analysis/ale'
" let g:ale_virtualtext_cursor = 2
" let g:ale_virtualtext_prefix = ">#>"
" let g:ale_disable_lsp = 1
" let g:ale_linters = {'cpp': ['clang', 'g++']}

" let g:ale_open_list = 0
" let g:ale_list_vertical = 1
" let g:ale_list_window_size = 50
" let g:ale_sign_column_always = 1
" let g:ale_lint_on_save = 1
"
Plug 'https://github.com/bfrg/vim-cpp-modern'

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-lua/completion-nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp' 
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'mbbill/undotree'

call plug#end()            " required
filetype plugin indent on    " required

" Setting for Personal reasons
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
colorscheme gruvbox
set backspace=indent,eol,start
set nowrap
set splitbelow
set splitright
set lazyredraw



inoremap <expr> <C-j>     pumvisible() ? "<C-n>" : "<C-j>"
inoremap <expr> <C-k>     pumvisible() ? "<C-p>" : "<C-k>"
inoremap <expr> <C-d>     pumvisible() ? "<PageDown><C-p><C-n>" : "<C-d>"
inoremap <expr> <C-u>     pumvisible() ? "<PageUp><C-p><C-n>" : "<C-u>"
inoremap <expr> <Tab>     pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab>   pumvisible() ? "<C-p>" : "<S-Tab>"
inoremap <expr> <Esc>     pumvisible() ? (complete_info().selected == -1 ? "<Esc>" : "<C-e>")  : "<Esc>"
inoremap <expr> <CR>      pumvisible() ? (complete_info().selected == -1 ? "<C-e><CR>" : "<C-y>") : "<CR>"

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
nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap J mzJ`z

tnoremap <Esc> <C-\><C-n>
nnoremap <F4> :q!<CR>
nnoremap <F6> :wqall<CR>
vnoremap p "_dP

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
map <C-p> :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <space>g :G 

"lua code
lua << EOF

-- mason setup
require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").rust_analyzer.setup {}
-- Mappings.
local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<space>K', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
end

-- this part is telling Neovim to use the lsp server
local servers = { 'pyright', 'tsserver', 'jdtls','asm_lsp' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        }
    }
end

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end
EOF


lua <<EOF
  -- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
	--completion key mappings
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  local lspconfig = require('lspconfig')
  local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver','asm_lsp' }
  for _, lsp in ipairs(servers) do
	  lspconfig[lsp].setup {
		  -- on_attach = my_custom_on_attach,
		  capabilities = capabilities,
	  }
	  end
  --require('lspconfig')['rust_analyzer'].setup {
   -- capabilities = capabilities
  --}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}
EOF
