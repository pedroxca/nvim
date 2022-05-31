#!/bin/bash

if [ ! -d autoload ]
then
         mkdir autoload
fi
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -o autoload/plug.vim
vim +'PlugInstall --sync' +qa
#rm config-neovim.sh
