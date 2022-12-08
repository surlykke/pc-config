
call plug#begin(stdpath('data') . '/plugged')

Plug 'airblade/vim-rooter'

" git
Plug 'tpope/vim-fugitive'

" lsp
Plug 'neovim/nvim-lspconfig'

" completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp' 

" snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" search 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" solarized
"Plug 'ishan9299/nvim-solarized-lua'
Plug 'overcache/NeoSolarized'  
call plug#end()

"lua require 'options-config'

lua lsp_servers = { 'gopls' }
lua require('nvim-cmp-config')
lua require('lsp-config')
lua require('telescope-config')

" ----------- misc ------------------
set nu
set ai
set ts=4
set sw=4
set sr 
set ignorecase
set smartcase
set textwidth=800
set nowrap
set termguicolors
set mouse=a
set statusline+=%F\ col:\ %c
set title
set titlestring=nvim:\ %F
" ------------ colorscheme ------------

set background=dark
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
let g:neosolarized_termBoldAsBright = 1

colorscheme NeoSolarized
