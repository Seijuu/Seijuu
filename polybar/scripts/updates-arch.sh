#!/usr/bin/env bash

arch_updates=$(pacman -Qu | wc -l)
aur_updates=$(yay -Qum 2>/dev/null | wc -l)
updates=$((aur_updates + arch_updates))
echo "$updates"