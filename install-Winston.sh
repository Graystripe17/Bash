#!/bin/bash

report() {
    echo "Installation finished"
    rm install-Winston.sh
}

mac() {
    echo "Concatenating .bash_profile..."
    sudo cat .bash_profile >> ~/.bash_profile
    echo "Using git to download monokai dependency..."
    git clone "https://github.com/sickill/vim-monokai.git" ~/.vim/colors/vim-monokai/
    sudo cp ~/.vim/colors/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
    echo "Concatenating .vimrc..."
    cat .vimrc >>  ~/.vimrc

    report
}

linux() {
    echo "Concatenating .bashrc..."
    cat .bash_profile >> ~/.bashrc
    echo "Using git to download monokai dependency..."
    git clone "https://github.com/sickill/vim-monokai.git" ~/.vim/colors/
    sudo cp ~/.vim/colors/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
    echo "Concatenating .vimrc..."
    cat .vimrc >>  ~/.vimrc

    report
}


echo "Starting  dotWinston installer. Found on https://github.com/Graystripe17/dotWinston"


while true; do
    read -p "Are you installing on [M]ac OS or [L]inux? " ans
    case $ans in
        [Mm]* ) mac; break;;
        [Ll]* ) exit;;
        * ) echo "Please answer [M] or [L]";;
    esac
done
