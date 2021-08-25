#!/bin/sh
# Install GPG packages needed for YubiKey support

# Import shared functions
shared_script_dir=$(dirname $0)
. $shared_script_dir/__package_check.sh
. $shared_script_dir/__package_install.sh


# Set some values
gpg_pkgs="gnupg2 gnupg-agent gnupg-utils scdaemon pcscd"
yubikey_pkgs="yubikey-manager yubikey_personalization"

if __package_check $gpg_pkgs; then
    echo "Install GPG packages"
    __package_install $gpg_pkgs
fi

if __package_check $yubikey_pkgs; then
    echo "Install Yubikey packages"
    __package_install $yubikey_pkgs
fi
