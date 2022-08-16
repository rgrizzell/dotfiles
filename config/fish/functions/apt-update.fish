# Defined in - @ line 1
function apt-update --wraps='sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y' --description 'alias apt-update=sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y'
    sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y $argv
end
