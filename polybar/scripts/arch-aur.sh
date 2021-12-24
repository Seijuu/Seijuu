#!/usr/bin/env bash

arch_updates=$(checkupdates 2> /dev/null | wc -l )
aur_updates=$(yay -Qum 2> /dev/null | wc -l)
updates=$((arch_updates + aur_updates))
echo "$updates"
