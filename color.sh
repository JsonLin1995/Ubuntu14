#!/bin/bash

if [ "$1" == "y" ] || [ "$1" == "Y" ]; then
    sudo sh set_prompt_color.sh
elif [ "$1" == "n" ] || [ "$1" == "N" ]; then
    sudo sh unset_prompt_color.sh
else
    read -p "Set Prompt Colro? (y/n): " flag
    if [ $flag == "y" ] || [ $flag == "Y" ]; then
        sudo sh set_prompt_color.sh
    elif [ $flag == "n" ] || [ $flag == "N" ]; then
        sudo sh unset_prompt_color.sh
    else
        echo "Input Error!!"
    fi
fi
source ~/.bashrc
