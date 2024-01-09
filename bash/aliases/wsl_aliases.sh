#!/usr/bin/env bash

move-to-downloads() {
    if [ -z "$2" ]; then
        cp -r -L -f "$1" /mnt/c/Users/MRose/Downloads/
    else
        cp -L -f "$1" /mnt/c/Users/MRose/Downloads/"$2"
    fi
}
