#!/bin/sh

# Import shared functions
shared_script_dir=$(dirname $0)
. $shared_script_dir/__package_check.sh


# Set some values
omf_url="https://get.oh-my.fish"
install_tmp=$(mktemp)

if __package_check "fish"; then
    curl -sL $omf_url > $install_tmp
    fish $install_tmp --noninteractive --yes
    rm $install_tmp
fi
