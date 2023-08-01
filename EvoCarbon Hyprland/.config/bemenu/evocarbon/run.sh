#!/bin/sh

pkill bemenu || j4-dmenu-desktop --no-generic --usage-log="$HOME/.cache/j4-dmenu" --dmenu="xargs -a ~/.config/bemenu/evocarbon/config bemenu"
