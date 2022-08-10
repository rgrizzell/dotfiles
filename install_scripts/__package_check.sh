#!/bin/sh

__package_check() {
    # Get the OS details
    . /etc/os-release

    case $ID in
        debian|ubuntu|pop )
            sudo dpkg-query -W $1 >/dev/null
            ;;
        fedora )
            sudo rpm -qa | grep $1
            ;;
    esac
}

