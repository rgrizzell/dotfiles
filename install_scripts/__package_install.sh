#!/bin/sh

__package_install() {
    # Get the OS details
    . /etc/os-release

    case $ID_LIKE in
        debian )
            apt_cache_age=$(expr $(date +%s) - $(stat -c %Z /var/lib/apt/periodic/update-success-stamp))

            if [ $apt_cache_age -gt 1200 ]; then
                echo "Updating Apt cache"
                apt-get update
            fi

            apt-get install -y $@
            ;;
        fedora )
            dnf install -y $@
            ;;
    esac
}

