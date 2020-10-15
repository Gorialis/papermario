#!/bin/bash

# Ubuntu (apt)
if command -v apt &> /dev/null; then
    echo "Installing packages for Ubuntu (apt)"

    sudo apt install -y git python3 python3-pip build-essential binutils-mips-linux-gnu zlib1g-dev libyaml-dev gcc-multilib || exit 1
    python3 -m pip install capstone

    if [[ $1 == "--extra" ]]; then
        echo "Installing extra"
        sudo apt install -y clang-tidy astyle || exit 1
        python3 -m pip install stringcase || exit 1
    fi

    echo "Done"
    exit
fi

# Arch Linux (pacman)
if command -v pacman &> /dev/null; then
    echo "Installing packages for Arch Linux (pacman)"

    # Upgrade existing packages (note: no --noconfirm)
    sudo pacman -Syu || exit 1

    # Install dependencies
    sudo pacman -S --noconfirm --needed git python python-pip base-devel zlib libyaml lib32-glibc || exit 1
    python3 -m pip install capstone

    # Install binutils if required
    if ! command -v mips-linux-gnu-ar &> /dev/null; then
        PKG="mips-linux-gnu-binutils"
        if command -v aura &> /dev/null; then
            sudo aura -A --noconfirm $PKG || exit 1
        elif command -v yay &> /dev/null; then
            yay -S --noconfirm $PKG || exit 1
        elif command -v yaourt &> /dev/null; then
            sudo yaourt -S --noconfirm $PKG || exit 1
        else
            echo "AUR manager not found, installing $PKG without one"

            git clone "https://aur.archlinux.org/$PKG.git" || exit 1
            cd $PKG
            makepkg -si || exit 1
            cd ..
            rm -rf $PKG
        fi
    fi

    if [[ $1 == "--extra" ]]; then
        echo "Installing extra"
        sudo pacman -S --noconfirm --needed clang astyle || exit 1
        python3 -m pip install stringcase || exit 1
    fi

    echo "Done"
    exit
fi

# openSUSE (zypper)
if command -v zypper &> /dev/null; then
    echo "Installing packages for openSUSE (zypper)"

    sudo zypper -n install git python3 python3-devel python3-pip gcc gcc-c++ glibc-devel make cross-mips-binutils zlib-devel libyaml-devel gcc-32bit gcc-c++-32bit glibc-devel-32bit

    # Link the openSUSE locations for binutils tools to their usual GNU locations
    sudo ln -s /usr/bin/mips-suse-linux-addr2line /usr/bin/mips-linux-gnu-addr2line
    sudo ln -s /usr/bin/mips-suse-linux-ar /usr/bin/mips-linux-gnu-ar
    sudo ln -s /usr/bin/mips-suse-linux-as /usr/bin/mips-linux-gnu-as
    sudo ln -s /usr/bin/mips-suse-linux-elfedit /usr/bin/mips-linux-gnu-elfedit
    sudo ln -s /usr/bin/mips-suse-linux-gprof /usr/bin/mips-linux-gnu-gprof
    sudo ln -s /usr/bin/mips-suse-linux-ld /usr/bin/mips-linux-gnu-ld
    sudo ln -s /usr/bin/mips-suse-linux-ld.bfd /usr/bin/mips-linux-gnu-ld.bfd
    sudo ln -s /usr/bin/mips-suse-linux-nm /usr/bin/mips-linux-gnu-nm
    sudo ln -s /usr/bin/mips-suse-linux-objcopy /usr/bin/mips-linux-gnu-objcopy
    sudo ln -s /usr/bin/mips-suse-linux-objdump /usr/bin/mips-linux-gnu-objdump
    sudo ln -s /usr/bin/mips-suse-linux-ranlib /usr/bin/mips-linux-gnu-ranlib
    sudo ln -s /usr/bin/mips-suse-linux-readelf /usr/bin/mips-linux-gnu-readelf
    sudo ln -s /usr/bin/mips-suse-linux-size /usr/bin/mips-linux-gnu-size
    sudo ln -s /usr/bin/mips-suse-linux-strings /usr/bin/mips-linux-gnu-strings
    sudo ln -s /usr/bin/mips-suse-linux-strip /usr/bin/mips-linux-gnu-strip

    python3 -m pip install capstone

    if [[ $1 == "--extra" ]]; then
        echo "Installing extra"
        sudo zypper -n install clang astyle || exit 1
        python3 -m pip install stringcase || exit 1
    fi

    echo "Done"
    exit
fi


echo "Only the following distros are supported by install.sh:"
echo "- Ubuntu (apt)"
echo "- Arch Linux (pacman)"
echo "- openSUSE (zypper)"
echo "Please consider contributing and adding an installation script for your distro."
exit 1
