
set number
set nocompatible
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
call plug#end()
colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>	
set nowrap 
set smartcase 
set hlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set expandtab
set smartindent
syntax on
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDTreeIgnoe = ['^node_modules$']
