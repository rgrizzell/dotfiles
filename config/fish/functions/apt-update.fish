function apt-update --description 'Performs pending upgrades and auto-removal of unused Apt packages.'
    sudo apt update \
	&& sudo apt dist-upgrade -y \
	&& sudo apt autoremove -y
end
