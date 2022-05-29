
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
call plug#end()
colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>	

