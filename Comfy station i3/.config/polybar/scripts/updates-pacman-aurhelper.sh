#!/bin/sh

if ! updates_pacman=$(checkupdates 2> /dev/null | wc -l ); then
    updates_pacman=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

color="#cba6f7"
icon="%{F$color}ﰭ%{F-}"

if [ "$updates_pacman" -gt 0 ] && [ "$updates_aur" -gt 0 ]; then
    echo "$updates_pacman $icon $updates_aur"
elif [ "$updates_pacman" -gt 0 ] && [ "$updates_aur" -le 0 ]; then
    echo "$updates_pacman $icon 0"
elif [ "$updates_pacman" -le 0 ] && [ "$updates_aur" -gt 0 ]; then
    echo "0 $icon $updates_aur"
fi


