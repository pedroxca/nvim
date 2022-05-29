#!/bin/bash

if [ ! -d autoload ]
  5 then
  6         mkdir autoload
  7 fi
  8
  9 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
 10        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
 11 curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -o autoload/plug.vim
 12
 13 echo "
 14 set number
 15 set nocompatible
 16 call plug#begin('~/.config/nvim/plugged')
 17 Plug 'morhetz/gruvbox'
 18 Plug 'preservim/nerdtree'
 19 Plug 'ctrlpvim/ctrlp.vim'
 20 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 21 Plug 'tpope/vim-fugitive'
 22 Plug 'christoomey/vim-tmux-navigator'
 23 Plug 'ryanoasis/vim-devicons'
 24 call plug#end()
 25 colorscheme gruvbox
 26 map <silent> <C-n> :NERDTreeFocus<CR>
 27 " >> init.vim


 #rm config-neovim.sh
