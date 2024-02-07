#!/bin/sh
# Install and set the Fish shell as the default.

# Import shared functions
shared_script_dir=$(dirname "$0")
. "$shared_script_dir/__package_check.sh"
. "$shared_script_dir/__package_install.sh"
. "/etc/os-release"

# Set some values
pkgs="git"
dotfiles="$HOME/.dotfiles"
git_creds="config/git/credentials"

# Check if Git is installed
if __package_check $pkgs; then
    echo "Installing Git"
    __package_install $pkgs
fi

# Setup git-credential-libsecret for caching credentials
case $ID in
	# Debian flavors
	debian|ubuntu|pop )
		libsecret_pkgs="build-essential libsecret-1-0 libsecret-1-dev"
		if __package_check $libsecret_pkgs; then
			echo "Installing git-credential-libsecret"
			__package_install $libsecret_pkgs
		fi
		if ! test -f /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret; then
			prevdir=$CWD
			cd /usr/share/doc/git/contrib/credential/libsecret
			sudo make
			cd $prevdir
		fi
		echo "Setting Git credential helper to libsecret"
		git config --file "$dotfiles/$git_creds" credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
		git update-index --assume-unchanged $git_creds
		;;

	# Fedora flavors
	fedora|rhel|centos )
		libsecret_pkgs="git-credential-libsecret"
		if __package_check $libsecret_pkgs; then
			echo "Installing git-credential-libsecret"
			__package_install $libsecret_pkgs;
		fi
		echo "Setting Git credential helper to libsecret"
		git config --file "$dotfiles/$git_creds" credential.helper libsecret
		git update-index --assume-unchanged $git_creds
		;;
esac

