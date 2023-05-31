#!/usr/bin/bash
# 
# Script to toogle dunst notification history
#
# Author : https://github.com/Crash-Zeus


readonly command=$1
readonly maxDisplayNumber=$2

function display_history {
    history=$(dunstctl history)
    
    if [ "$maxDisplayNumber" != "" ] ; then
        maxNumber=$maxDisplayNumber
    else
        maxNumber=$(echo $history | jq .'data[0] | length')
    fi
    
    for (( i=0; i< $maxNumber; i++ ))
    do
        id=$(echo $history | jq ."data[0][$i].id.data")
        dunstctl history-pop $id
    done
}

function close_history {
    dunstctl close-all
}

case $command in
    
    "display-history")
        display_history $maxDisplayNumber
    ;;
    
    "close-history")
        close_history
    ;;
    
    *)
        echo "No command specified."
        echo -e "\nAvailable commands :\n
        display_history [display number | {history number}]\n
        close_history"
        exit 1
    ;;
esac

