if exists('g:vscode')
    
else
   
  filetype off
  set number
  set nocompatible
  call plug#begin('~/.config/nvim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
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
  "lua require('pedrofaustino')
  command! -nargs=0 Prettier :CocCommand prettier.formatFile
  vmap ++ <plug>NERDCommenterToggle
  nmap ++ <plug>NERDCommenterToggle
  let g:NERDTreeIgnoe = ['^node_modules$']
  map <C-t><up> :tabr<cr>
  map <C-t><down> :tabl<cr>
  map <C-t><left> :tabp<cr>
  map <C-t><right> :tabn<cr>
  endif
