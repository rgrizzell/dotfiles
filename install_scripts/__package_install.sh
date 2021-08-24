#!/bin/sh

__package_install() {
    # Get the OS details
    . /etc/os-release

    case $ID_LIKE in
        debian )
            apt-get update
            apt-get install -y $@
            ;;
        fedora )
            dnf install -y $@
            ;;
    esac
}

