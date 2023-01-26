#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
# if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
# if ! updates_aur=$(pikaur -Qua 2> /dev/null | wc -l); then
# if ! updates_aur=$(rua upgrade --printonly 2> /dev/null | wc -l); then
    updates_aur=0
fi

archicon="%{F#96CDFB}%{F-}"

if [ "$updates_arch" -gt 0 ] && [ "$updates_aur" -gt 0 ]; then
    echo "$updates_arch $archicon $updates_aur"
elif [ "$updates_arch" -gt 0 ] && [ "$updates_aur" -le 0 ]; then
    echo "$updates_arch $archicon"
elif [ "$updates_arch" -le 0 ] && [ "$updates_aur" -gt 0 ]; then
    echo "$archicon $updates_aur"
else
    echo "$archicon"
fi


