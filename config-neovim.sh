#!/bin/bash

if [ ! -d autoload ]
then
        echo "Criando diretório autoload para configurar o vim-plug..."
         mkdir autoload
fi
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Instalando o vim-plug..."
sudo curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -o autoload/plug.vim
echo "Instalando os plug-ins"
nvim +'PlugInstall --sync' +qa
#rm config-neovim.sh
