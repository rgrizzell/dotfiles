#!/usr/bin/env bash
# Import shared functions
shared_script_dir=$(dirname $0)
. $shared_script_dir/__package_check.sh
. $shared_script_dir/__package_install.sh


# Set some values
vim_pkgs="vim"

if __package_check $vim_pkgs; then
    __package_install $vim_pkgs 
fi

if ! [ -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
