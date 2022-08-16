#!/bin/sh

__package_install() {
    # Get the OS details
    . /etc/os-release

    case $ID in
        debian|ubuntu|pop )
            sudo apt-get update
            sudo apt-get install -y $@
            ;;
        fedora )
            sudo dnf install -y $@
            ;;
    esac
}
