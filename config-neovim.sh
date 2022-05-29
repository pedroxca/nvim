#!/bin/bash

if [ ! -d autoload ]
then
         mkdir autoload
fi
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -o autoload/plug.vim

echo "
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
" >> init.vim
#rm config-neovim.sh
