#!/bin/sh
# Installs Nerd Fonts for use with Fish shell.

# Import shared functions
shared_script_dir=$(dirname $0)
. $shared_script_dir/__package_check.sh


# Check for dependencies
__package_check "zip"


# Set some values
local_font_dir="/home/$USER/.local/share/fonts"
nerd_font_release="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0"
nerd_fonts="Ubuntu UbuntuMono"


if [ -d $local_font_dir ]; then
    echo "$nerd_fonts" | tr ' ' '\n' | while read font; do
        echo "Downloading Nerd font: ${font}"
        curl -# -fLo "${local_font_dir}/${font}.zip" "${nerd_font_release}/${font}.zip"
        unzip -u "${local_font_dir}/${font}.zip" -d "${local_font_dir}/${font}"
        rm "${local_font_dir}/${font}.zip"
    done
    
    fc-cache -fv
fi

