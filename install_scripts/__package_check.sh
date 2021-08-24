#!/bin/sh

__package_check() {
    # Get the OS details
    . /etc/os-release

    case $ID_LIKE in
        debian )
            dpkg-query -W $1 >/dev/null
            ;;
        fedora )
            rpm -qa | grep $1
            ;;
    esac
}

