#!/bin/sh
# Install and set the Fish shell as the default.

# Import shared functions
shared_script_dir=$(dirname "$0")
. "$shared_script_dir/__package_check.sh"

# Set some values
fish_pkgs="fish"
extra_pkgs="grc"


# Check if Fish is installed
if __package_check $fish_pkgs; then
    echo "Installing fish packages"
    __package_install $fish_pkgs
    fish=$(command -v fish)
    if $fish; then
        chsh $USER -s $fish
    else
        echo "Couldn't find fish for some reason. Default shell not set."
    fi
fi

if __package_check $extra_pkgs; then
    echo "Installing extra packages"
    __package_install $extra_pkgs
fi
