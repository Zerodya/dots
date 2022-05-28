#!/usr/bin/env bash

u=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*')
kill $u
