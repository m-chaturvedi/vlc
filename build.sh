#!/usr/bin/env bash
set -euo pipefail

function append_to_file {
    declare -ri err_code=1
    if [[ $# -ne 2 ]]; then
        echo "Expected two arguments"
        exit $err_code
    fi
    declare -r string="$1"
    declare -r file_name="$2"
    if ! [[ -e $file_name ]]; then
        echo "$file_name does not exist"
        exit $err_code
    else
        if ! cat $file_name | grep "$string"; then
            echo "$string" >> $file_name
        else
            echo "$file_name already contains $string."
        fi
    fi
}

sudo apt-get install libxcb-shm0-dev libxcb-xv0-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev

append_to_file "deb http://www.deb-multimedia.org bullseye main" /etc/apt/sources.list
sudo apt-get install deb-multimedia-keyring qtdeclarative5-dev
sudo apt-get install liblivemedia-dev qtbase5-private-dev libqt5quickwidgets5 libqt5quickcontrols2-5

# ./configure --prefix=$PWD/install --disable-a52 --enable-live555 --disable-lua

