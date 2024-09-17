#!/usr/bin/env bash
# Import shared functions
shared_script_dir=$(dirname "$0")
. "$shared_script_dir/__package_check.sh"
. "$shared_script_dir/__package_install.sh"


# Set some values
neovim_pkgs="neovim"

if __package_check $neovim_pkgs; then
    __package_install $neovim_pkgs
fi

packer_path="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if ! [ -f "$packer_path"]; then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim \
		$packer_path
fi
