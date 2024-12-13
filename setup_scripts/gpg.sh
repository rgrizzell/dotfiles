#!/bin/sh
# Install GPG packages needed for YubiKey support

# Import shared functions
shared_script_dir=$(dirname "$0")
. "$shared_script_dir/__package_check.sh"
. "$shared_script_dir/__package_install.sh"


# Set some values
gpg_pkgs="gnupg2 gnupg-agent gnupg-utils hopenpgp-tools scdaemon pcscd"
yubikey_pkgs="yubikey-manager yubikey-personalization libu2f-udev"

if __package_check "$gpg_pkgs"; then
    echo "Install GPG packages"
    __package_install "$gpg_pkgs"
fi

if __package_check "$yubikey_pkgs"; then
    echo "Install Yubikey packages"
    __package_install "$yubikey_pkgs"
fi

# Ensure services are started
sudo systemctl enable pcscd.service
sudo systemctl start pcscd.service

# Set permissions on gpg agent files.
find ~/.gnupg -type f -exec chmod 600 {} \;
find ~/.gnupg -type d -exec chmod 700 {} \;

if [ -n "$KEYID" ]; then
    gpg --recv-key "$KEYID"
fi
