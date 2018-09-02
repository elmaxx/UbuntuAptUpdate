#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo apt-get update
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

sudo apt dist-upgrade
echo -e $TEXT_YELLOW
echo 'APT distributive upgrade finished...'
echo -e $TEXT_RESET

sudo apt upgrade
echo -e $TEXT_YELLOW
echo 'APT upgrade finished...'
echo -e $TEXT_RESET

sudo apt remove && sudo apt autoremove
echo -e $TEXT_YELLOW
echo 'APT auto remove finished...'
echo -e $TEXT_RESET

sudo apt clean && sudo apt autoclean
echo -e $TEXT_YELLOW
echo 'APT auto clean finished...'
echo -e $TEXT_RESET

sudo snap refresh
echo -e $TEXT_YELLOW
echo 'SNAP update finished...'
echo -e $TEXT_RESET

sudo flatpack update
echo -e $TEXT_YELLOW
echo 'FLATPACK update finished...'
echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
fi
