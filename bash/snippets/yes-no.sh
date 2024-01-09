#!/usr/bin/env bash

# Ask user for yes or no to proceed
while true; do

    read -rp "Do you want to proceed? (y/n) " yn

    case $yn in
    [yY])
        echo ok, we will proceed
        break
        ;;
    [nN])
        echo exiting...
        exit
        ;;
    *) echo invalid response ;;
    esac

done

echo doing stuff...
