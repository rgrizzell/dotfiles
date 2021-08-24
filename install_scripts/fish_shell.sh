#!/bin/sh
# Install and set the Fish shell as the default.

# Import shared functions
shared_script_dir=$(dirname $0)
. $shared_script_dir/__package_check.sh


# Check if Fish is installed
if ! __package_check "fish"; then
    echo "Fish is not installed. Set the default shell by running the following:"
    echo "  sudo apt install -y fish && chsh $USER -s $fish"
fi
